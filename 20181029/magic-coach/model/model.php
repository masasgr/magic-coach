<?php
/* constant class */
class constant{

// DB infomation
	// localhost
	const DBNAME = 'magic_coach';
	const HOSTNAME = 'localhost';
	const USER = 'root';
	const PASS = '';
	// Xserver for magic-coach
	//const DBNAME = 'gameagelayer_mc';
	//const HOSTNAME = 'mysql5002.xserver.jp';
	//const USER = 'gameagelayer_mc';
	//const PASS = '23236412';
}


/* SESSION system class */
class sessionsystem{

// start SESSION
	public function SessionStart(){
		session_start();
		session_regenerate_id(true);
		return 0;
	}

// add data SESSION
	public function AddSession($a, $b, $c, $d){
		$_SESSION['items'] = $a;
		$_SESSION['datas'] = $b;
		$_SESSION['effects'] = $c;
		$_SESSION['setting'] = $d;
		return 0;
	}

// delete data SESSION
	public function DeleteSession(){
		$_SESSION['item'] = NULL;
		$_SESSION['data'] = NULL;
		$_SESSION['effect'] = NULL;
		return 0;
	}
}

/* MySQL system class */
class mysqlsystem{

// login mysql
	public function MysqlLogin(){
		try{
			$dbinfo = new constant;
			$dbname=$dbinfo::DBNAME;
			$hostname=$dbinfo::HOSTNAME;
			$user=$dbinfo::USER;
			$pass=$dbinfo::PASS;
			$dsn='mysql:dbname='.$dbname.';host='.$hostname;
			$dbh=new PDO($dsn, $user, $pass);
			$dbh->query('SET NAMES utf8');
		} catch(PDOException $e){
			echo 'Connection failed:'.$e->getMessage();
		}
		return $dbh;
	}

// DB extraction systems
	public function ExtractionText($dbh){
		$sql= 'SELECT `text_code`,`text_name`
				FROM `mst_text`
				WHERE 1';
		$stmt=$dbh->prepare($sql);
		$stmt->execute();
		while(true){
			$text=$stmt->fetch(PDO::FETCH_ASSOC);
			if($text==false){
				break;
			}
			$texts[]=$text;
		}
		if(!isset($texts)){
			$texts[0]='';
		}
		return $texts;
	}

	public function ExtractionSerializations($dbh, $text_code){
		$sql= 'SELECT `serializations_code`, `lesson`, `unit_p`
				FROM `rlt_serializations`
				WHERE `text_code`=:text_code';
		$stmt=$dbh->prepare($sql);
		$stmt->bindValue(':text_code', $text_code, PDO::PARAM_STR);
		$stmt->execute();
		while(true){
			$serialization=$stmt->fetch(PDO::FETCH_ASSOC);
			if($serialization==false){
				break;
			}
			$serializations[]=$serialization;
		}
		if(!isset($serializations)){
			$serializations[0]='';
		}
		return $serializations;
	}

	public function ExtractionItemName($dbh, $text_code, $lesson){
		$sql= 'SELECT `dvw`.`view_name`, `mit`.`item_code`
				FROM (`rlt_items` AS `rits`
					LEFT OUTER JOIN (`mst_item` AS `mit`
						LEFT OUTER JOIN `rlt_serializations` AS `rsz`
						ON `mit`.`item_code` = `rsz`.`item_code`)
					ON `rits`.`item_code` = `mit`.`item_code`)
					LEFT OUTER JOIN `data_view` AS `dvw`
					ON `rits`.`view_code` = `dvw`.`view_code`
				WHERE `rsz`.`text_code`=:text_code AND `rsz`.`lesson`=:lesson AND `rits`.`show_p`=0';
		$stmt=$dbh->prepare($sql);
		$stmt->bindValue(':text_code', $text_code, PDO::PARAM_STR);
		$stmt->bindValue(':lesson', $lesson, PDO::PARAM_STR);
		$stmt->execute();
		while(true){
			$item=$stmt->fetch(PDO::FETCH_ASSOC);
			if($item==false){
				break;
			}
			$items[]=$item;
		}
		if(!isset($items)){
			$items[0]='';
		}
		return $items;
	}

	public function ExtractionItem($dbh, $item_code){
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
			if($data==false){
				break;
			}
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
			if($effect==false){
				break;
			}
			$items['effect'][]=$effect;
		} // color effect
		if(!isset($items)){
			$items[0]='';
		}
		return $items;
	}
}

?>