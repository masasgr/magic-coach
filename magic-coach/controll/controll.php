<?php
/* ready require */
require_once '../model/model.php';

/* function class */
class variousfunctions{

// validation as sanitizing
	public function sanitize($before){
		foreach ($before as $key => $value){
		$after[$key] =htmlspecialchars($value);
	}
	return $after;
}

// change Array to JSON
	public function ChangeJson($arr){
		$json=json_encode($arr);
		return 0;
	}

// change auto page using header
	public function AutoPageJump($page){
		if($page == 1){
			$location='../view/text.php';
		} elseif($page == 2){
			$location='../view/mode.php';
		} elseif($page == 3){
			$location='../view/flash.php';
		} elseif($page == 4){
			$location='../view/exit.php';
		}
		http_response_code(301);
		header('Location:'.$location);
		return 0;
	}
}

/* controll page class */
class controllpage{

// start system
	public function StartTextpage(){
		$mysqlinfo= new mysqlsystem;
		$dbh=$mysqlinfo->MysqlLogin();
		$texts=$mysqlinfo->ExtractionText($dbh);
		$dbh=null;
		return $texts;
	}

	public function StartModepage(){
		$sani= new variousfunctions;
		$post=$sani->sanitize($_POST);
		$mysqlinfo= new mysqlsystem;
		$dbh=$mysqlinfo->MysqlLogin();
		$items=$mysqlinfo->ExtractionItemName($dbh, $post['text_name'], $post['unit_name']);
		return $items;
	}

	public function StartFlashpage($item_code, $flash_mode){
		$sessionsys= new sessionsystem;
		$sani= new variousfunctions;
		$mysqlinfo= new mysqlsystem;
		$dbh=$mysqlinfo->MysqlLogin();
		$sessionsys->SessionStart();
		$post=$sani->sanitize($_POST);
		$items=$mysqlinfo->ExtractionItem($dbh, $item_code);
		$sessionsys->AddSession($items['item'], $items['data'], $items['effect'], $flash_mode);
		return 0;
	}

// controll system
	public function UnitAppend($text_code){
		$mysqlinfo= new mysqlsystem;
		$dbh=$mysqlinfo->MysqlLogin();
		$serializations=$mysqlinfo->ExtractionSerializations($dbh, $text_code);
		return $serializations;
	}
}

?>