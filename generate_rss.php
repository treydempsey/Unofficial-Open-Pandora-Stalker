<?php

set_include_path('classes');

require_once('stalker_rss.class.php');

$db = new PDO('sqlite:db.sqlite3');
$rss = new StalkerRss($db);
$rss->generate();
echo $rss->xml();

?>
