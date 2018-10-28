<?php
require_once '../controll/main.php';
ViewFlashpageItems();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0">
	<meta name="description" itemprop="description" content="">
	<meta name="keywords" content="">
	<title>Magic-Coach</title>

	<link rel="stylesheet" href="./css/flash.css">
</head>
<body>
  <header class="header">
    <h1 class="heading1">Magic Coach</h1>
    <div class="user-info"><i class="fas fa-users-cog"></i></div>
  </header>
  <main class="main">
  	<pre><?php var_dump($_SESSION); ?></pre>
  </main>
</body>
</html>

