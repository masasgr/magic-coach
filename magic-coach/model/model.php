<?php
/* start SESSION */
function SessionStart(){
	session_start();
	session_regenerate_id(true);

	return 0;
}



/* add data SESSION */
function AddSession($a, $b, $c){
	$_SESSION['item'] = $a;
	$_SESSION['data'] = $b;
	$_SESSION['effect'] = $c;

	return 0;
}



/* delete data SESSION */
function DeleteSession(){
	$_SESSION['item'] = NULL;
	$_SESSION['data'] = NULL;
	$_SESSION['effect'] = NULL;

	return 0;
}



/* login mysql */
function MysqlLogin($dbname, $hostname, $user, $pass){
	$dsn='mysql:dbname='.$dbname.';host='.$hostname;
	$user=$user;
	$password=$pass;
	$dbh=new PDO($dsn, $user, $password);
	$dbh->query('SET NAMES utf8');

	return 0; // ccp localhost root ''
}



/* DB extraction system */
function ExtractionText(){
	$sql= 'SELECT `text_code`,`text_name`
			FROM `mst_text`
			WHERE 1';
	$stmt=$dbh->prepare($sql);
	$stmt->execute();
	while(true){
		$text=$stmt->fetch(PDO::FETCH_ASSOC);
		$texts[]=$text;
	}

	return $texts;
}


function ExtractionSerializations($text_code){
	$sql= 'SELECT `serializations_code`, `lesson`, `unit_p`
			FROM `rlt_serializations`
			WHERE `text_code`=:text_code';
	$stmt=$dbh->prepare($sql);
	$stmt->bindValue(':text_code', $text_code, PDO::PARAM_STR);
	$stmt->execute();
	while(true){
		$serialization=$stmt->fetch(PDO::FETCH_ASSOC);
		$serializations[]=$serialization;
	}

	return $serializations;
}


function ExtractionItemName($serializations_code){
	$sql= 'SELECT `dvw`.`view_name`, `mit`.`item_code`
			FROM (`rlt_items` AS `rits`
				LEFT OUTER JOIN (`mst_item` AS `mit`
					LEFT OUTER JOIN `rlt_serializations` AS `rsz`
					ON `mit`.`view_code` = `rsz`.`view_code`)
				ON `rits`.`item_code` = `mit`.`item_code`)
				LEFT OUTER JOIN `data_view` AS `dvw`
				ON `rits`.`view_code` = `dvw`.`view_code`
			WHERE `rsz`.`serializations_code`=:serializations_code AND `rits`.`show_p`=0';
	$stmt=$dbh->prepare($sql);
	$stmt->bindValue(':serializations_code', $serializations_code, PDO::PARAM_STR);
	$stmt->execute();
	while(true){
		$item=$stmt->fetch(PDO::FETCH_ASSOC);
		$items[]=$item;
	}

	return $items;
}


function ExtractionItem($item_code){
	$sql= 'SELECT `mit`.`item_idiom_p`, `mmn`.`mean_name`, `mps`.`part_of_speech_name`
			FROM (`mst_item` AS `mit`
				LEFT OUTER JOIN `mst_mean` AS `mmn`
				ON `mit`.`mean_code` = `mmn`.`mean_code`)
				LEFT OUTER JOIN `mst_part_of_speech` AS `mps`
				ON `mit`.`part_of_speech_code` = `mps`.`part_of_speech_code`
			WHERE `mit`.`item_code`=:item_code';
	$stmt=$dbh->prepare($sql);
	$stmt->bindValue(':item_code', $item_code, PDO::PARAM_STR);
	$stmt->execute();
	$items['item'][]=$stmt->fetch(PDO::FETCH_ASSOC); // mean

	$sqld= 'SELECT `rits`.`show_p`, `dvc`.`voice_name`, `dvw`.`view_name`
			FROM ((`rlt_items` AS `rits`
				LEFT OUTER JOIN `data_voice` AS `dvc`
				ON `rits`.`voice_code` = `dvc`.`voice_code`)
				LEFT OUTER JOIN `data_view` AS `dvw`
				ON `rits`.`view_code` = `dvw`.`view_code`)
				LEFT OUTER JOIN `mst_item` AS `mit`
				ON `rits`.`item_code` = `mit`.`item_code`
			WHERE `mit`.`item_code`=:item_code';
	$stmtd=$dbh->prepare($sqld);
	$stmtd->bindValue(':item_code', $item_code, PDO::PARAM_STR);
	$stmtd->execute();
	while(true){
		$data=$stmtd->fetch(PDO::FETCH_ASSOC);
		$items['data'][]=$data;
	} // view voice

	$sqle= 'SELECT `msd`.`chapter_p`, `msd`.`chr_position_p`, `msd`.`accent_mute_chr_p`
			FROM (`rlt_colors` AS `rcl`
				LEFT OUTER JOIN `mst_sound` AS `msd`
				ON `rcl`.`sound_code` = `msd`.`sound_code`)
				LEFT OUTER JOIN `mst_item` AS `mit`
				ON `rcl`.`item_code` = `mit`.`item_code`
			WHERE `mit`.`item_code`=:item_code';
	$stmte=$dbh->prepare($sqle);
	$stmte->bindValue(':item_code', $item_code, PDO::PARAM_STR);
	$stmte->execute();
	while(true){
		$effect=$stmte->fetch(PDO::FETCH_ASSOC);
		$items['effect'][]=$effect;
	} // color effect

	return $items;
}

?>