<?php
require_once '../controll/main.php';
$text=ViewTextpageText();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0">
	<meta name="description" itemprop="description" content=" ">
	<meta name="keywords" content=" ">
	<title>Magic-Coach</title>

	<link rel="stylesheet" href="./css/text.css">
	<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet" />
  <script src="//code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
</head>
<body>
  <header class="header">
    <h1 class="heading1">Magic Coach</h1>
    <div class="user-info"><i class="fa fa-users-cog"></i></div>
  </header>

  <div class="sub-heading">
    <button class="back-first">初期状態に戻す</button>
  </div>

  <main class="main">
    <section class="box section1">
      <div class="heading2-wrapper">
        <i class="fa fa-book"></i>
        <h2 class="heading2">教科書・ユニットを選択して学習する</h2>
      </div>
      <div class="content">
        <div class="description">教科書とユニットを選択して次へをクリックしてください</div>
        <form class="form" method="post" action="mode.php">
          <?php $i=0; ?>
          <select name="text_name" class="select text" id="text" >
            <?php while(true): ?>
            <?php if(!isset($text['text_code'][$i])){ break;} ?>
            <option value="<?php print $text['text_code'][$i]; ?>"><?php print $text['text_name'][$i]; ?></option>
            <?php $i++; ?>
            <?php endwhile; ?>
          </select>
          <select name="unit_name" class="select unit" id="unit">
          </select>
          <input type="hidden" name="pagenation" value="1to2"> <!-- pagenation paramter -->
          <button class="button" type="submit">次へ</button>
        </form >
      </div>
    </section>

    <section class="box section2">
      <div class="heading2-wrapper">
        <i class="fa fa-lightbulb"></i>
        <h2 class="heading2">記憶エリアを選択して学習する</h2>
      </div>
      <div class="content">
        <div class="description">学習する記憶エリアの次へをクリックしてください</div>
        <div class="form form2">
          <table cellspacing="6">
            <th class="level-box level1">
              <div class="level-title">瞬間記憶</div>
              <img src="./media/img/level1.png" class="level-img">
              <div class="button-wrapper">
                <a href="#" class="button">次へ</a>
              </div>
            </th>
            <th class="level-box level2">
              <div class="level-title">短期記憶</div>
              <img src="./media/img/level2.png" class="level-img">
              <div class="button-wrapper">
                <a href="#" class="button">次へ</a>
              </div>
            </th>
            <th class="level-box level3">
              <div class="level-title">中期記憶</div>
              <img src="./media/img/level3.png" class="level-img">
              <div class="button-wrapper">
                <a href="#" class="button">次へ</a>
              </div>
            </th>
            <th class="level-box level4">
              <div class="level-title">長期記憶</div>
              <img src="./media/img/level4.png" class="level-img">
              <div class="button-wrapper">
                <a href="#" class="button">次へ</a>
              </div>
            </th>
            <th class="level-box level5">
              <div class="level-title">永久記憶</div>
              <img src="./media/img/level5.png" class="level-img">
              <div class="button-wrapper">
                <a href="#" class="button">次へ</a>
              </div>
            </th>
          </table>
        </div>
      </div>
    </section>

  </main>
  <script src="../controll/js/main.js"></script>
  <script type="text/javascript">
    
  </script>
</body>
</html>

