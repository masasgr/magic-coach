<?php
require_once '../controll/main.php';
$text=ViewModepageWord();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0">
	<meta name=”description” itemprop="description" content="">
	<meta name=”keywords” content="">
	<title>Magic-Coach</title>

	<link rel="stylesheet" href="./css/mode.css">
</head>
<body>
  <header class="header">
    <h1 class="heading1">Magic Coach</h1>
    <div class="user-info"><i class="fas fa-users-cog"></i></div>
  </header>


  <main class="main">
    <section class="box section1">
      <div class="heading2-wrapper">
        <i class="fa fa-check-square"></i>
        <h2 class="heading2">学習内容確認・学習方法選択</h2>
      </div>
      <div class="content">
        <div class="description">学習する内容を確認の上、学習方法を選択してください</div>
        <form class="form">
          <div class="clearfix right-left">
            <div class="left clearfix">
              <h3 class="mini-title">学習内容確認</h3>
              <div class="choice">
                <div class="choice-input">
                <input type="radio" name="choice" value="1" id="radio-choice1"><label for="radio-choice1">Mississippi</label>
                </div>

                <div class="choice-input">
                <input type="radio" name="choice" value="2" id="radio-choice2"><label for="radio-choice2">Tennessee</label>
                </div>

                <div class="choice-input">
                <input type="radio" name="choice" value="3" id="radio-choice3"><label for="radio-choice3">Virginia</label>
                </div>

                <div class="choice-input">
                <input type="radio" name="choice" value="4" id="radio-choice4"><label for="radio-choice4">Florida</label>
                </div>

                <div class="choice-input">
                <input type="radio" name="choice" value="5" id="radio-choice5"><label for="radio-choice5">Tallahassee</label>
                </div>
              </div>
            </div>

            <div class="right clearfix">
              <h3 class="mini-title">学習方法選択</h3>
              <div class="mode mode1">
                <input type="radio" name="mode" value="1" id="radio-mode-1"><label for="radio-mode-1">ノーマルモード</label>
                <div class="mini-description">フラッシングあり
テストなし</div>
              </div>

              <div class="mode mode2">
                <input type="radio" name="mode" value="2" id="radio-mode-2"><label for="radio-mode-2">フリーモード１</label>
                <div class="mini-description">フラッシングあり
テストなし</div>
              </div>

              <div class="mode mode3">
                <input type="radio" name="mode" value="3" id="radio-mode-3"><label for="radio-mode-3">フリーモード２</label>
                <div class="mini-description">フラッシングなし
テストなし</div>
              </div>
            </div>
          </div>

          <div class="button-wrapper">
          <a href="#"><button class="button" type="submit">Let's practice.</button></a>
          <a href="../index.html" class="back">教科書・ユニット/記事エリア選択に戻る</a>
          </div>
        </form>
      </div>
    </section>

  </main>

</body>
</html>

