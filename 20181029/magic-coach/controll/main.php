<?php
/* ready require */
require_once '../model/model.php';
require_once 'controll.php';

/* Ajax on textpage for conditional branch by existence of post used pagenation */
if(!isset($_POST['pagenation'])){
	if(isset($_POST['text_name'])){
		$sani= new variousfunctions;
		$post=$sani->Sanitize($_POST);
		$content=AjaxTextChangeUnit($post['text_name']);
		header('Content-Type: application/json; charset=utf-8');
		echo json_encode($content);
	}
}

/* return as data on php for Ajax */
function AjaxTextChangeUnit($text_code){
	$controllpage= new controllpage;
	$serializations=$controllpage->UnitAppend($text_code);
	$i=0;
	if($serializations[0]!=""){
		foreach($serializations as $key1 => $serialization){
			$count[$i]=$key1;
			foreach($serialization as $key2 => $serialization_content){
				if($key2 == 'serializations_code'){
					$content['serializations_code'][$key1]=$serialization_content;
				}
				if($key2 == 'lesson'){
					$content['lesson'][$key1]=$serialization_content;
				}
				if($key2 == 'unit_p'){
					$content['unit_p'][$key1]=$serialization_content;
				}
			}
			$i++;
		}
	}
	if(!isset($content)){
		$content['serializations_code'][0]='';
		$content['lesson'][0]='';
		$content['unit_p'][0]='';
	}
	return $content;
}

function ViewTextpageText(){
	$controllpage= new controllpage;
	$texts=$controllpage->StartTextpage();
	$i=0;
	if($texts[0]!=""){
		foreach($texts as $key1 => $text){
			$count[$i]=$key1;
			foreach($text as $key2 => $text_content){
				if($key2 == 'text_code'){
					$content['text_code'][$key1]=$text_content;
				}
				if($key2 == 'text_name'){
					$content['text_name'][$key1]=$text_content;
				}
			}
			$i++;
		}
	}
	if(!isset($content)){
		$content['text_code'][0]='';
		$content['text_name'][0]='';
		return 0;
		exit;
	}
	return $content;
}

function ViewModepageWord(){
	$controllpage= new controllpage;
	$items=$controllpage->StartModepage();
	$i=0;
	if($items[0]!=""){
		foreach($items as $key1 => $item){
			$count[$i]=$key1;
			foreach($item as $key2 => $item_content){
				if($key2 == 'view_name'){
					$content['view_name'][$key1]=$item_content;
				}
				if($key2 == 'item_code'){
					$content['item_code'][$key1]=$item_content;
				}
			}
			$i++;
		}
	}
	if(!isset($content)){
		$content['view_name'][0]='';
		$content['item_code'][0]='';
		return 0;
		exit;
	}
	return $content;
}

function ViewFlashpageItems(){
	$controllpage= new controllpage;
	$controllpage->StartFlashpage();
	return 0;
}

?>