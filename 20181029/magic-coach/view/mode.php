<?php
require_once '../controll/main.php';
$words=ViewModepageWord();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0">
	<meta name="description" itemprop="description" content="">
	<meta name="keywords" content="">
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
        <form class="form" method="post" action="flash.php">
          <div class="clearfix right-left">
            <div class="left clearfix">
              <h3 class="mini-title">学習内容確認</h3>
              <div class="choice">
                <?php $i=0; ?>
                <?php while(true): ?>
                <?php if(!isset($words['item_code'][$i])){ break;} ?>
                <div class="choice-input">
                <input type="checkbox" name="choice[<?php print $i+1; ?>]" value="<?php print $words['item_code'][$i]; ?>" id="radio-choice<?php print $i+1; ?>"><label for="radio-choice<?php print $i+1; ?>"><?php print $words['view_name'][$i]; ?></label>
                <input type="hidden" name="words[<?php print $i+1; ?>]" value="<?php print $words['item_code'][$i]; ?>">
                </div>
                <?php $i++; ?>
                <?php endwhile; ?>
              </div>
            </div>

            <div class="right clearfix">
              <h3 class="mini-title">学習方法選択</h3>
              <div class="mode mode1">
                <input type="radio" name="mode" value="1" id="radio-mode-1" checked><label for="radio-mode-1">ノーマルモード</label>
                <div class="mini-description">フラッシングあり<br>テストなし</div>
              </div>

              <div class="mode mode2">
                <input type="radio" name="mode" value="2" id="radio-mode-2"><label for="radio-mode-2">フリーモード１</label>
                <div class="mini-description">フラッシングあり<br>テストなし</div>
              </div>

              <div class="mode mode3">
                <input type="radio" name="mode" value="3" id="radio-mode-3"><label for="radio-mode-3">フリーモード２</label>
                <div class="mini-description">フラッシングなし<br>テストなし</div>
              </div>
            </div>
          </div>

          <div class="button-wrapper">
          <input type="hidden" name="pagenation" value="2to3"> <!-- pagenation paramter -->
          <button class="button" type="submit">Let's practice.</button>
          <a href="text.php" class="back">教科書・ユニット/記事エリア選択に戻る</a>
          </div>
        </form>
      </div>
    </section>

  </main>

</body>
</html>

