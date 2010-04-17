<?php
header("Content-Type: application/xml; charset=ISO-8859-1");
echo file_get_contents("feed.rss");
?>