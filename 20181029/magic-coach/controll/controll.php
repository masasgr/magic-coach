<?php
/* ready require */
require_once '../model/model.php';

/* function class */
class variousfunctions{

// validation as sanitizing
	public function Sanitize($before){
		foreach ($before as $key => $value){
			$after[$key] =htmlspecialchars($value);
		}
		return $after;
	}

// IRANAIKAMO
	public function Multidimensional2Sanitize($arr2before){
		foreach ($arr2before as $key1 => $values){
			foreach ($values as $key2 => $value){
				$arr2after[$key1][$key2] =htmlspecialchars($value);
			}
		}
		return $arr2after;
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
		$post=$sani->Sanitize($_POST);
		$mysqlinfo= new mysqlsystem;
		$dbh=$mysqlinfo->MysqlLogin();
		$items=$mysqlinfo->ExtractionItemName($dbh, $post['text_name'], $post['unit_name']);
		$dbh=null;
		return $items;
	}

	public function StartFlashpage(){
		$sessionsys= new sessionsystem;
		$sani= new variousfunctions;
		$mysqlinfo= new mysqlsystem;
		$sessionsys->SessionStart();
		$dbh=$mysqlinfo->MysqlLogin();

		//$post=$sani->Multidimensional2Sanitize($_POST);
		//$post['choice'];
		//$post['words'];
		//$post['mode'];

		if(isset($_POST['choice'])){
			$post['choice']=$sani->Sanitize($_POST['choice']);
			$setting['nondisplay']=$post['choice']; // array
		}
		$_POST['modes'][0]=$_POST['mode'];
		$post['modes']=$sani->Sanitize($_POST['modes']);
		$setting['mode']=$post['modes'][0]; // string
		$post['words']=$sani->Sanitize($_POST['words']);
		$i=1;
		while(true){
			if(!isset($post['words'][$i])){
				break;
			}
			$items=$mysqlinfo->ExtractionItem($dbh, $post['words'][$i]);
			$item['items'][$i]=$items['item'];
			$item['datas'][$i]=$items['data'];
			$item['effects'][$i]=$items['effect'];
			$i++;
		}
		$sessionsys->AddSession($item['items'], $item['datas'], $item['effects'], $setting);
		$dbh=null;
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