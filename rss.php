<?php
header("Content-Type: application/xml; charset=UTF-8");
echo file_get_contents("feed.rss");
?>