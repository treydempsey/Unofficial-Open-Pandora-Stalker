<?php

include 'simple_html_dom.php';

$doc = new DOMDocument();

$rss = $doc->createElement('rss');
$rss->setAttribute('version', '2.0');
$doc->appendChild($rss);

$rss_channel = $doc->createElement('channel');
$rss->AppendChild($rss_channel);

$channel_title = $doc->createElement('title', 'Open Pandora Unofficial Craig Stalker');
$channel_link = $doc->createElement('link', 'http://www.open-pandora.org');
$channel_desc = $doc->createElement('description', 'Open Pandora Unofficial Craig Stalker');
$channel_lang = $doc->createElement('language', 'en');
$channel_image = $doc->createElement('image');
$rss_channel->appendChild($channel_title);
$rss_channel->appendChild($channel_link);
$rss_channel->appendChild($channel_desc);
$rss_channel->appendChild($channel_lang);
$rss_channel->appendChild($channel_image);

$image_url = $doc->createElement('url', 'http://www.talkphp.com/images/misc/rss.jpg');
$image_title = $doc->createElement('title', 'Craig Stalker');
$image_link = $doc->createElement('link', 'http://www.open-pandora.org');
$channel_image->appendChild($image_url);
$channel_image->appendChild($image_title);
$channel_image->appendChild($image_link);

$html = file_get_html('search.html');
# Each post is identified by a table row with a class of 'row1'
foreach($html->find('tr.row1') as $row) {
    # The thread name is contained within a link with the title 'View result'
    $element = $row->find("a[title='View result']");
    if(count($element) == 1) {
        $thread_link = $element[0]->href;
        $thread_topic = $element[0]->innertext;
    }

    # An excerpt of the post is contained within a div with a class of 'message'
    $element = $row->find('div.message');
    if(count($element) == 1) {
        $post_message = trim($element[0]->plaintext);

        # The post link is contained within the div in a link with an image with a alt attribute of 'View Post'
        $child_element = $element[0]->find("img[alt='View Post']");
        if(count($child_element) == 1) {
            $post_link = $child_element[0]->parent->href;
            if(preg_match('/p__([0-9]+)/', $post_link, $m)) {
                $post_id = $m[1];
            }
        }
    }


    $channel_item = $doc->createElement('item');
    $item_title = $doc->createElement('title', "mfk commented on " . $thread_topic);
    $item_link = $doc->createElement('link', $post_link);
    $item_description = $doc->createElement('description', $post_message);
    $channel_item->appendChild($item_title);
    $channel_item->appendChild($item_link);
    $channel_item->appendChild($item_description);

    $rss_channel->appendChild($channel_item);
}

echo $doc->saveXML();

?>
