
CREATE TABLE authors(id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(100));
INSERT INTO authors VALUES(1,'mfk');
INSERT INTO authors VALUES(2,'Evil Dragon');
INSERT INTO authors VALUES(3,'craigix');
INSERT INTO authors VALUES(4,'Michael Weston');
INSERT INTO authors VALUES(5,'pandorapress');
INSERT INTO authors VALUES(6,'File Archive');
CREATE TABLE feed_sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, feed_id INTEGER NOT NULL);
INSERT INTO feed_sources VALUES(1,1,1);
INSERT INTO feed_sources VALUES(2,2,1);
INSERT INTO feed_sources VALUES(3,3,1);
INSERT INTO feed_sources VALUES(4,4,1);
INSERT INTO feed_sources VALUES(5,5,1);
INSERT INTO feed_sources VALUES(6,6,1);
CREATE TABLE feeds(id INTEGER PRIMARY KEY AUTOINCREMENT, title VARCHAR(50), link VARCHAR(500), description VARCHAR(500), language VARCHAR(10),
    image_url VARCHAR(500), image_link VARCHAR(500));
INSERT INTO feeds VALUES(1,'Unofficial OP Stalker','http://www.open-pandora.org/','The Unofficial Open Pandora Stalker','en','http://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Feed-icon.svg/200px-Feed-icon.svg.png','http://www.open-pandora.org/');
CREATE TABLE posts (hashv TEXT, id INTEGER PRIMARY KEY, source_id INTEGER, author_id INTEGER, key VARCHAR(500), topic VARCHAR(100), posted DATE, link VARCHAR(500), content VARCHAR(2000));
INSERT INTO posts VALUES(NULL,1,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=161%3Ano-post-today&catid=2%3Ablog&Itemid=2&lang=en','No post today...','2010-03-26 20:29:08','http://www.open-pandora.org/index.php?option=com_content&view=article&id=161%3Ano-post-today&catid=2%3Ablog&Itemid=2&lang=en','<P>Pheewww... so much things have happened. So many stuff to tell you... and that''s what I wanted to do tonight.</P><P>However, I just came home from a 13-hour workday after having 3 hours of sleep and having another 17-hour workday before...<BR>I''m too tired to do anything except for closing my eyes and rest a while... I hope you do understand.</P><P>I will use the weekend to recover and try to get you all informed latest at the beginning of next week.</P><P>Really sorry about that... had so much work to do. Didn''t even find a few minutes to use twitter, update the buglist or status page here on the website... </P>');
INSERT INTO posts VALUES(NULL,2,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=160%3Aa-dream-becomes-reality&catid=2%3Ablog&Itemid=2&lang=en','A dream becomes reality!','2010-03-12 13:18:34','http://www.open-pandora.org/index.php?option=com_content&view=article&id=160%3Aa-dream-becomes-reality&catid=2%3Ablog&Itemid=2&lang=en','<P>Didn''t we all dream about that the case mass production should become reality?</P><P>Well, it has. We got some brand new pictures for you.<BR>The mould has been successfully calibrated and mounted on the machine.<BR>The pieces you see are the first that has been spit out by the machine, so those are testing ones which are being checked.<BR>Not all have the finishing applied - one nice picture that does show how it will look like with finishing applied is the one with the battery lids.</P><P>Those samples are being checked - and if they are okay (and they really do look fine), they will continue to spit out the cases and apply finishing.</P><P>Enjoy!</P><P>{phocagallery view=category|categoryid=21|limitstart=0|limitcount=0}<BR></P>');
INSERT INTO posts VALUES(NULL,3,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=159%3Akeep-it-going&catid=2%3Ablog&Itemid=2&lang=en','Keep it going.','2010-03-10 11:05:01','http://www.open-pandora.org/index.php?option=com_content&view=article&id=159%3Akeep-it-going&catid=2%3Ablog&Itemid=2&lang=en','<div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Long time no blog post - and a lot has happened, really!</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">First, let''s start with some OS development.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">The OS is getting better and better. We will probably add another minimal menu, similar to gmenu2x with no fancy effects and graphics but PND-Support.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">This is for all the purists of you.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Also, notaz and DJWillis are slowly stepping forward in getting WiFi working.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">While it''s not perfect, the packet loss is decreasing and things are getting better.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">It might still be a long way (or it might be finished soon, you never know with such things), but it''s improving.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">I also successfully managed to setup a Bluetooth PAN connection to my mobile phone. I got an IP address via DHCP, I got DNS resolving and I could ping the phone.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Pinging websites outside of the phone didn''t work yet, but that might be my mobile phone (custom cooked ROM, never tried Bluetooth PAN before).</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">As I did use the terminal to set that up (it only takes a few lines to do so), the next step is including this into the Network Manager.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Next let''s go on to the Mass Production:</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">As most of you already know, we moved the assembly from US to UK - we''ll do it ourselves!</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">This is because the company in US finally gave us a price for doing this - a ridiculous high price.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">The boards will still be populated there, but we will assemble the units ourselves. Craig is currently setting up the village hall to turn into a proper place to do this, including buying everything needed (ESD stuff, etc.)</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Our current roadmap is like this:</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">(note: It still depends on the case production and on the board production. This is based on the dates they did tell us - but as we already experienced a few times, we are a small client for them and therefore have low priority... let''s hope they keep their dates this time!)</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">March 18th: Production of 1000 cases is finished and will be shipped to UK.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">March 22nd: 1000 cases will arrive in UK and will be inspected. If all is well, the next 3000 will go into production.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">March 22th - March 26th: 500 populated and tested boards and all parts will be shipped to UK.&nbsp;</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Approx. April 1st: Assembly will start.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Yep, another promise broken - whereas the company in Texas told us they can test 1000 boards a week before, it''s now down to 500 boards a week.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">At least they kept their shipping dates for all the prototypes and testing boards so far, so March 22th - March 26th should hopefully be fine.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Some parts already started to arrive in UK, e.g. the PSUs are there.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">We decided to start on April 1st to have a small bufferzone for the stuff to arrive.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">It doesn''t make much sense if we all sit around in the village hall without having any parts to build together :)</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">The complete assembly process will be broadcasted live via Webcam. That will be fun!</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">BTW:</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">The Pandora stirred up a lot of interest in Germany currently.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">I''ve been at the CeBIT in Germany doing a presentation about the OpenSource gaming handhelds and of course the Pandora.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">It was crowded.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Thanks to Radio Tux, you can<a href="http://blog.radiotux.de/2010/03/07/cebit-2010-michael-mrozek-opensource-auf-spielehandhelds/" mce_href="http://blog.radiotux.de/2010/03/07/cebit-2010-michael-mrozek-opensource-auf-spielehandhelds/" target="_blank"> listen to the presentation</a>.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">You can also download the <a href="http://openpandora.org/pdfs/vortrag.pdf" mce_href="http://openpandora.org/pdfs/vortrag.pdf" target="_blank">PDF I used for it here</a>.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">They also did <a href="http://blog.radiotux.de/2010/03/10/cebit-2010-michael-mrozek-mit-pandora/" mce_href="http://blog.radiotux.de/2010/03/10/cebit-2010-michael-mrozek-mit-pandora/" target="_blank">another interview here.</a></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">And if anybody wants to watch it, we''ve got the <a href="http://www.youtube.com/EvilDragon1717" mce_href="http://www.youtube.com/EvilDragon1717" target="_blank">full thing available as video on Youtube here</a>.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">Beware, it''s all in German!</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">After the presentation, a lot of guys (some from the community as well) could get their hands on the Pandora and play with it.</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">They all loved how well the controls and the keyboard work. Looks like our design is working well :)</span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);"><br /></span></div><div><span class="Apple-style-span" style="background-color: rgb(255, 255, 255);">That''s it for today - hopefully we have good news within the next two weeks!</span></div>');
INSERT INTO posts VALUES(NULL,4,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=158%3Awhats-to-expect&catid=2%3Ablog&Itemid=2&lang=en','What''s to expect','2010-02-24 13:30:53','http://www.open-pandora.org/index.php?option=com_content&view=article&id=158%3Awhats-to-expect&catid=2%3Ablog&Itemid=2&lang=en','<P>Chinese New Year holidays are over - work has begun at the factory!</P><P>We are in daily contact with them, so here is a brief roadmap of what should happen when:</P><P>At the moment, the machines are maintained, cleaned and prepared to go into normal production run again. Production will start during the next days, probably on Monday. Then lots of Pandora cases should be spit out each day :)<BR>While they do this, we try to make them another Silkscreen sample and send us a picture of it (not the whole sample) within this week. If it''s fine, we''ll use the silkscreen - if not, we''ll just go with plain cases, to not waste anymore time.<BR><BR>As for the OS, the devs are really working hard on it right now (despite not having time, as they have so much things to do in real life).<BR>It will surely not be the most polished OS ever released yet, but if you want a polished OS, go get an Apple (and miss all the fun we''ll all have by enhancing the Pandora OS together!)<BR><BR>So, what can you expect, what will not work, where are tweaks needed?</P><P><STRONG><U>What does work: </U></STRONG></P><UL><LI>The desktop fully works. It''s like a normal PC desktop. You have your file manager, your windows, your apps, etc. </LI><LI>PND system is working. You can simply copy games onto your SD Card, put it into your Pandora - and PLAY!</LI><LI>Apps: Installed apps do work fine so far. That includes Midori, Abiword, Orage, Pidgin, XChat, etc.</LI><LI>Audio Playing: XMMS working fine.</LI><LI>Movie Playing: Working... but has some issues (see below)</LI><LI>USB Devices: You can connect USB Sticks, harddisks, mice, keyboard, etc. Normal things run out of the box.</LI><LI>TV Out: The TV Out cable works fine, SVHS only for the moment though (see below)</LI><LI>Power Saving Mode: Yep, it''s included and does work. At the moment, it should last for about 50 hours, not too long, but there might be a lot more components which could be switched off to save more power. Good enough to leave your Pandora lying around for a few hours without having to reboot it.</LI><LI>LED Warning (Blinking) on low battery with automatic shutdown when the battery status becomes critical.</LI><LI>Keyboard, us nub as mouse, touchscreen, everything working.</LI></UL><P><STRONG><U>What issues are there?</U></STRONG></P><UL><LI>The biggest issue: WiFi is still work in progress. The driver works, without using SDIO it was slow, DJWillis is working on it, but it''s time consuming. It MIGHT be ready when the Pandora ships, but it might be WiFi will still take a bit longer. Maybe some devs want to help out here once they get a Pandora in their hands :)</LI><LI>There''s no software audio mixer yet. This means you can only use the volume wheel. No big deal if you''re just listening to music or playing games, but multiple sounds at once will not work yet. Also, the equalizer isn''t yet working.</LI><LI>Some apps have to be optimized for the small screen: Fullscreen apps like Midori, Abiword, etc. do look fine. Some stuff however (XFCE4 Settings, etc.) are using windows bigger than 800x480. They are completely usable, but you have to move the windows around to access all buttons.</LI><LI>Movieplayer: While basic movie playing works, it does not use any hardware accelerations yet. DVD Quality xvid videos do play fine, but H264 is too much without hardware acceleration. Also, in windowed mode the videos are playing before the menus. Watching movies in fullscreen mode works nicely. Things should be way better when hardware support is included :)</LI><LI>There is a lot to tweak and optimize here and there. Bootup speed can be increased, more themes (fingerfriendly ones?) could be created, some minor issues like the normal logout of Ubuntu-Netbook-Launcher doesn''t work (you need to use a menu entry), etc. Nothing serious that makes the unit not usable, but there are a lot of things that can be improved within the next months!</LI></UL><P>So, except for WiFi, all things do work well so far but can be optimized a lot.<BR>Please don''t expect to have perfectly working games and emulators on day 1 - adopting to a new system will take some time and except for some core OS developers, nobody has a Pandora yet. Once delivered, games should start to pop up and become optimized pretty fast!</P><P>Some of that stuff might be fixed until first release - let''s hope for WiFi! :) </P><P><STRONG><U>Another quick note on updating the system:</U></STRONG></P><P>When things work fine, we''re going to setup our own repository server for firmware updates. You can then easily do a system update with the Pandora. The packages we use will be tested so that they shouldn''t break anything :)<BR>In the beginning, the updates will be full flash updates, until the basic system will be completely stable. Then we''ll  setup the repository server (which basically means:  when WiFi is working).</P><P>Everyone who wants to help us can do so. There will be a bugtracker for reporting any issues. The complete system is already available via GIT to all devs, so patches and bugfixes can basically be sent to us by everyone :)<BR>The first few months with the new OS will be pretty exciting! I''ve seen how well our handful of devs have been able to get the system working so well, it will fly away when a lot more devs are helping out!<BR></P>');
INSERT INTO posts VALUES(NULL,5,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=157%3Aa-big-thanks-to-all-of-you&catid=2%3Ablog&Itemid=2&lang=en','A big thanks to all of you!','2010-02-11 23:24:03','http://www.open-pandora.org/index.php?option=com_content&view=article&id=157%3Aa-big-thanks-to-all-of-you&catid=2%3Ablog&Itemid=2&lang=en','<P>Well, it has been a wild rollercoaster ride. It was fun. It was annoying. It was amazing. It was frightening. It was unique.</P><P>I think most of you experienced the same during the loooong waiting period we had up until now.</P><P>There were times when I asked myself ''What the heck have I gotten myself into?''.<BR>There were tons of rocks blocking our road - and each time I feared "Okay. This is it. Now everyone is gonna cancel and I have to pay debts for the next 20 years!" </P><P>I think I''m not the only one in the project who experienced the same.</P><P>On the other side, there were many things that kept us going. The progress the project made. How much you anticipated the videos. The reactions on the board when you saw the first prototype. And when you saw the first prototype case.</P><P>It was a long and bumpy ride. But now we we''re there. Many many boards are finished already and are just waiting for the cases. The cases that took so long. But finally, we were content with them. We gave the green light. All that''s left now is the production.<BR>During the last days, activity on the boards has raised. And what I did read there made me happy.</P><P>Some devs I know and respect since the good old GP32 days received their Pandora - and they all do call it a beauty. </P><P>The whole community seems so happy that we finally finished it. The ranting has stopped.</P><P>Now I''m really sure what we did was the right thing. And that''s why I want to say THANK YOU! Thank you all!</P><P><STRONG>Thanks to...</STRONG></P><P>... Michael, who really did a fantastic job designing the system and  organizing so many things around the production.<BR>... Craig, who was the guy that started all of it and kept us going. He was the one taking most the risk. And he was the one who convinced us to do it!<BR>... Fatih, who did source a lot of the parts and companies we''re working with.<BR>... DaveC who decsigned the complete case all alone! A great achievement!<BR>... notaz, who did work on a lot of lowlevel stuff and is now fixing various bugs that are still left. A very nice and talented chap!<BR>... DJWillis for working on the OS image and getting WiFi to work!<BR>... skeezix for developing the PND system and contributing various other stuff to the OS<BR>... cpasjuste for working on various ports and pmenu.<BR>....vimacs, for supplying quite a few scripts and helping skeezix with the libraries and PND system.<BR>... Pickle for porting many many games. <BR>... Squidge for testing the SoCs.<BR>... all other devs that did help us in some way<BR>... and of course all of you! The community! The ones that kept us going! The ones that laid their money into our hands to produce this great little machine! Thanks!</P><P> </P><P><STRONG>So, what will happen next? </STRONG></P><P>We don''t even know yet how many cases the chinese factory is able to produce until the new year or IF they are even  able to produce them, however, the most important thing is that nothing needs to be changed anymore. So in worst case, they start the mass production after their new years break which is February 22nd. Not a big deal after waiting for such a long time.</P><P>Of course, once this starts, we''ll try to finish your Pandoras as fast as possible. Will be a few weeks, I guess, as we shouldn''t forget about shipping. The cases need to be shipped from China to America (takes a few days). After the Mass production, they need to be shipped to us (takes a few days as well) and from there they need to be shipped to you.<BR><BR>We''ll keep you informed about what happens as usual.<BR>As most work is going on with the OS right now, I''ll set up a status page with what has to be done and what has been done for the OS soon.<BR></P><P><BR></P><P><STRONG>Want to shake hands or talk with me? </STRONG></P><P>You all do know me from the boards, I guess. However, if you want to meet me in real life: I''ll be at the CeBIT in Hannover, Germany on March 6th. From 12pm - 1pm I''ll be doing a presentation about OpenSource gaming handhelds. Of course, I''ll have the Pandora with me. So if you happen to be there, why not join us there? I''ll be posting more information about this soon.</P><P><BR></P>');
INSERT INTO posts VALUES(NULL,6,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=156%3Aever-thought-it-could-be-bad-when-things-arrive-earlier-than-expected&catid=2%3Ablog&Itemid=2&lang=en','Ever thought it could be bad when things arrive EARLIER than expected?','2010-02-08 12:52:38','http://www.open-pandora.org/index.php?option=com_content&view=article&id=156%3Aever-thought-it-could-be-bad-when-things-arrive-earlier-than-expected&catid=2%3Ablog&Itemid=2&lang=en','<P>Well, we also didn''t. But that was what happened.</P><P>The cases did arrive on Friday, not as expected today. While this usually is a good thing, we were shocked by the quality - just look at the pictures which float around at the boards and you''ll agree with us. The bad thing about timezones is: When Michael did get those cases, it was too late to call up the chinese factory to find out what went wrong.</P><P>So a lot of turbulences did happen at the boards - which was perfectly understandable. As said, we also were shocked.</P><P>However, it looks like this is another thing did learn: Injection mould samples will always look that bad if it''s just a bunch of them.</P><P>After recovering from the shock, we started to investigate and think about what just happened. To be honest I didn''t think this could possibly look like the final product. Come on, what kind of company would survive for 12 years if they produce cracked and cheap looking products to their customers. No, there HAD to be something we didn''t know.</P><P>Then some guys at the board who do work in injection moulding business did tell us a bit more. I also talked to some other guys via ICQ - and got the same replies from all of them: Doing a proper injection moulding run needs a lot of time. The machine has to heaten up completely (which usually needs a few hours) and the mould has to be aligned properly, which also does take some time. As this would mean the machine couldn''t be used for mass production at that time (which is a loss of money) they usually don''t let it heaten up completely.</P><P>As the plastic tends to keep sticking inside of the mould if not fully heated, they add a bit more grease. Otherwise, they''d have to manually remove the plastic which could damage the mould - and that''s definately not good.</P><P>Another thing was that they might''ve used recycled plastic for the samples. Why use the expensive plastic when it''s just samples that won''t be used at all anyways? That''s why there were discolorations and the case was looking greasy. As the finishing usually also isn''t applied, it looks scratched. </P><P>So as that did calm us down a bit, we had to wait until Fatihs friend could call up the factory today.</P><P>And guess what: I looks like this was EXACTLY the case. The samples were just meant to check if everything fits. The final mass production cases will be properly heated and cooled down and will get a nice finishing. This is what they did tell us.</P><P>As chinese holidays are nearing, you can surely think that a lot of their customers are currently trying to rush things, so they didn''t have much time at all to properly align the case.</P><P>So what should we say? <STRONG><FONT color="#339966">We decided to GO for it!</FONT></STRONG> Let them do those cases - until we really do the mass production, we will never see a final case with proper finishing anyways!</P><P>Let''s hope they can produce as many cases as possible before their new year start!  </P>');
INSERT INTO posts VALUES(NULL,7,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=155%3Athey-did-arrive&catid=2%3Ablog&Itemid=2&lang=en','They did arrive!','2010-02-05 23:52:11','http://www.open-pandora.org/index.php?option=com_content&view=article&id=155%3Athey-did-arrive&catid=2%3Ablog&Itemid=2&lang=en','<P>Wow. Actually, there''s something that happened earlier than expected: The cases did arrive, including the final keymats.</P><P>Here''s a picture of the final keymat. Now please give Michael some time to thoroughly test everything out.</P><P>{phocagallery view=category|categoryid=20|imageid=141} </P><P><BR></P>');
INSERT INTO posts VALUES(NULL,8,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=154%3Aall-good-things-come-to-an-end&catid=2%3Ablog&Itemid=2&lang=en','All good things come to an end','2010-02-05 03:19:58','http://www.open-pandora.org/index.php?option=com_content&view=article&id=154%3Aall-good-things-come-to-an-end&catid=2%3Ablog&Itemid=2&lang=en','<P>And I''m really sure the Pandora is a good thing.</P><P>Here are some updates for you. The guys following the boards or my twitter account will most probably know all of this already.</P><P><STRONG>The Cases</STRONG><BR>The case moulds have been finished and samples were shipped.  They will arrive on Monday and if all is okay, themass production of the cases can start immediately.<BR>They can do about 1000 a day and chinese holidays do start on February 14th. Therefore, to be on the safe side, they will probably do 1000 cases and ship them to the assembly factory. Assembling and testing will take a while anyways, there will not be much time between the time when the first 1000 are finished and the next cases will be ready to ship.<BR></P><P><STRONG>The Boards <BR></STRONG>Another 1000 boards have been populated and are ready to be put into a case. Therefore, as soon as those 1000 cases do arrive, there''s no reason to wait for mass production already!</P><P>Let''s keep hoping all goes well! </P>');
INSERT INTO posts VALUES(NULL,9,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=153%3Aour-own-personal-babelfish&catid=2%3Ablog&Itemid=2&lang=en','Our own personal Babelfish','2010-01-27 13:52:32','http://www.open-pandora.org/index.php?option=com_content&view=article&id=153%3Aour-own-personal-babelfish&catid=2%3Ablog&Itemid=2&lang=en','<P>We''ve learnt something. Chinese English and English is definately not the same.<BR>Good thing a friend of Fatih does speak Chinese. For the company, he''s now our official represantative. As he could speak with them in their native language, a lot of things cleared up.</P><P>When they were talking about "soon", it didn''t mean what we did understand as "soon".  "Soon" did mean "as soon as we''re finished.". Regardless, how long that will take. So each time they said us "We''ll soon have pictures", we assumed they will follow the next few days - which didn''t happen.</P><P>Another thing we found out is when they said "We''re finished and will do some testing injections", they didn''t mean they were finished with ALL our changes, but they finished ONE thing on the to-do-list and  did a test injection to see if that was fine. That''s why we got some shipping dates which never happened - and with us wondering why they didn''t tell us. They sent us emails with stuff like "We fixed it all and will do the next samples on Friday". We then thought, okay, the next samples will ship on Friday. However, as we now do know, it meant they finished another step on those days and made an internal testing injection to find out if everything is okay. It wouldn''t have made sense to ship us those half-finished cases (it would just have cost a lot of money). And that''s the reason why they didn''t tell us that they didn''t ship... they never planned to ship it ;)<BR></P><P>It''s really interesting what can happen if business partners do speak completely different languages as native language.</P><P>So much for the background "What happened". Now onto the more interesting stuff: What WILL happen?</P><P>One thing we did understand correctly was that their goal is to have the mass-produced cased finished and shipped until the chinese new year!<BR>We now do know that they did finish the last tweaks on the case mould, the silkscreen and the keyboard mould (which still had one mis-aligned letter). And with finished, I do mean REALLY finished. Not just another step, but all steps. This does mean they''ll ship the final samples within the next days. They are VERY positive they are perfect, so as soon as they shipped out everything, they prepare the mass production. So as soon as we get the samples and approve it, mass production will start. As they can produce 1000 cases a day and we need 4000 for the first batch, this can happen within four days. That should work out just before the chinese new year!</P><P>I know it does sound a lot like stuff you already heard before - but this time, we were talking with them in their native language, so I assume it will be much more accurate than anything before!</P><P> </P>');
INSERT INTO posts VALUES(NULL,10,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=152%3Awhat-the-bloody-ell-happened&catid=2%3Ablog&Itemid=2&lang=en','What the bloody ''ell happened?','2010-01-25 14:16:09','http://www.open-pandora.org/index.php?option=com_content&view=article&id=152%3Awhat-the-bloody-ell-happened&catid=2%3Ablog&Itemid=2&lang=en','<P>Nope, we''re not playing Lemmings, but I guess a lot of you wanted to know what happened to those cases.</P><P>Well, we too wanted to know - the last status update we had was that they were shipping on January 15th and therefore we assumed the cases should have arrived last week.<BR>Unfortunately, Fatih had business to do in Dubai... and he is the only one the Chinese actually do talk to (except for if they encounter any problems, then they also send a mail to Michael. But they didn''t do that).<BR><BR>So we didn''t know until he returned a few days ago that the cases hadn''t been shipped yet, they were still working and tweaking as they really wanted to make sure this will be the last case they need to send to us before we start the mass production.<BR>We''re still trying to find out the complete story of what happened and why there was another delay. A friend of Fatih (who can speak chinese) will help us here, as communication with them isn''t easy, and there might even have been some misunderstandings, etc.</P><P>Whoever does think that that company is a small, cheap company that only tries to rip us off:<BR>Nope, that''s definately not true. Fatih has been working with them since years. Also, they created some other parts for the Pandora which have been finished long ago and didn''t make any problems. It just seems the case was much more complex than they had thought.<BR>Some of their other customers are Sanyo and Toyota and they have been established 1998, so one thing we know: They are reliable... but (as it is the case with many chinese companies): They do need some time to finish it off.</P><P>So, rest assured, the cases aren''t screwed, we just don''t know yet when exactly they will arrive. We have been promised they will ship enough mass produced cases before the chinese new year. I leave it to you whether you want to believe it or not - I just will pray it will be true.</P><P>So much for the cae situation. I hope you can now understand why we chose that company. Believe us, it''s a pretty annoying feeling having everything setup for mass assembly and then wait in anticipation for the cases. </P><P>Oh, I have one more information that will probably make second batchers happy: We already ordered the parts for the second batch to decrease the waiting time.</P><P><BR>Finally, some small OS informations:<BR><BR>* We got a new WiFi driver, thanks to Palm :) We''ll need to test it out more, but it should work better than the one we have.<BR>* pmenu is finally working fine in the image, so we have an almost completely working image (for a first release) ready.<BR>* We also did a quick try with the Ubuntu netbook-launcher-efl.  It compiled and worked nicely. Only the icons were missing, but that''s because it uses the Human icons from Ubuntu which we haven''t installed yet. The nice thing about it is that it does support finger scrolling. It might not make it into the first release, but I doubt it will take long until it will be included into an update. I personally prefer XFCE4 and pmenu though :)</P><P> </P><P> </P>');
INSERT INTO posts VALUES(NULL,11,1,1,834131,'New Case Pics From Fatih','2010-03-31 15:57:01','http://www.gp32x.com/board/index.php?/topic/52741-new-case-pics-from-fatih/page__view__findpost__p__834131','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834117''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>JayFoxRox, on 31 March 2010 - 06:01 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834080''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mfk, on 31 March 2010 - 02:29 PM, said:</p><div class="blockquote"><div class=''quote''>We are still working to improve the quality of the parts. We still have room for improvement. Even after the first batch completed, we&#39;ll keep working on it. As mentioned before, we are planning to sell keymats, cases, etc. <strong class=''bbc''>in different colors</strong> for modders and collectors. ;) </div></div><br />
That looks like some information leak - because it was never really confirmed that other case colors will be available, yet, this implies it. Clarification?</div></div><br />
It was mentioned several times before. This is not a promise though. :)  <br />
<br />
* MfK adds some beige and brown color to the tank...
						
						<br />');
INSERT INTO posts VALUES(NULL,12,1,1,834080,'New Case Pics From Fatih','2010-03-31 12:29:11','http://www.gp32x.com/board/index.php?/topic/52741-new-case-pics-from-fatih/page__view__findpost__p__834080','We are still working to improve the quality of the parts. We still have room for improvement. Even after the first batch completed, we&#39;ll keep working on it. As mentioned before, we are planning to sell keymats, cases, etc. in different colors for modders and collectors. ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,13,1,1,831835,'Made In China&#33;','2010-03-25 10:56:34','http://www.gp32x.com/board/index.php?/topic/52655-made-in-china/page__view__findpost__p__831835','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831823''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Bosbeetle, on 25 March 2010 - 12:34 PM, said:</p><div class="blockquote"><div class=''quote''>Does the batch of cases also include the keymat. And did they have all the parts in china so they could show you the assembled unit, or is this a unit you assembled fatih?</div></div><br />
<br />
Yes, they have all other parts to check if the plastic parts match with them. The keymats are also ready to go.
						
						<br />');
INSERT INTO posts VALUES(NULL,14,1,1,831832,'Made In China&#33;','2010-03-25 10:50:16','http://www.gp32x.com/board/index.php?/topic/52655-made-in-china/page__view__findpost__p__831832','As you might guess, we&#39;re very busy to put everything (including plastic parts, screws, bumpers, felt materials, gaskets and many tiny details.) together for first production.  I&#39;ll try to post more pictures later. Keep an eye on forums and our official blog. Thanks for your support&#33; ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,15,1,1,831803,'Made In China&#33;','2010-03-25 09:56:25','http://www.gp32x.com/board/index.php?/topic/52655-made-in-china/page__view__findpost__p__831803','Final inspections:<br />
<br />
<a href=''http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://picasaweb.goo...feat=directlink</a>
						
						<br />');
INSERT INTO posts VALUES(NULL,16,1,1,827130,'New Pics Up On Blog','2010-03-12 16:30:04','http://www.gp32x.com/board/index.php?/topic/52464-new-pics-up-on-blog/page__view__findpost__p__827130','The pictures are from China. We don&#39;t need to confirm anything about the cases. Everything is on track right now.
						
						<br />');
INSERT INTO posts VALUES(NULL,17,1,1,791298,'Craigix&#39;s Holiday Message','2009-12-25 09:08:50','http://www.gp32x.com/board/index.php?/topic/51117-craigixs-holiday-message/page__view__findpost__p__791298','Merry Christmas to all&#33; I have a personal message to Craig... not here though. :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,18,1,1,789565,'Am I Famous Then?','2009-12-21 13:22:13','http://www.gp32x.com/board/index.php?/topic/51026-am-i-famous-then/page__st__30','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=789563''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Gruso, on 21 December 2009 - 03:13 PM, said:</p><div class="blockquote"><div class=''quote''>Excellent. So this was the 7d9 party? Did Gnostic get to fire up PUAE? :) </div></div><br />
<br />
Yep it was 7d9 party. I don&#39;t have any videos yet but i can tell you that gui-sdl is coming to PUAE. ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,19,1,1,789556,'Am I Famous Then?','2009-12-21 12:46:45','http://www.gp32x.com/board/index.php?/topic/51026-am-i-famous-then/page__view__findpost__p__789556','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=789546''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>borgqueenx, on 21 December 2009 - 02:00 PM, said:</p><div class="blockquote"><div class=''quote''>I just took a closer look at the pandora photo in the first post of this thread and it seems its not running at 800*480? Look how big the window is.</div></div><br />
<br />
It&#39;s running at 800 * 480. A lot of people were in the party and they played with Pandora a lot. Maybe somebody set the brightness down (yes, it works) and that&#39;s why Arda found it unsaturated. In my opinion the screen is very good. Also the keyboard is very responsive and very easy to type. <br />
<br />
I believe you will find more pictures and videos from this party soon.
						
						<br />');
INSERT INTO posts VALUES(NULL,20,1,1,789330,'Am I Famous Then?','2009-12-20 20:11:51','http://www.gp32x.com/board/index.php?/topic/51026-am-i-famous-then/page__view__findpost__p__789330','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=789298''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Tripmonkey_uk, on 20 December 2009 - 08:00 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=789263''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Dunny, on 20 December 2009 - 03:28 PM, said:</p><div class="blockquote"><div class=''quote''>Not Fatih - a friend of his that met up and had a play on the Pandora (he isn&#39;t too impressed with it, btw, but he does say that the analogue controls are really nice)..</div></div><br />
What exactly wasn&#39;t he impressed with?<br />
Just curious :) </div></div><br />
<br />
Ofcourse he&#39;s impressed&#33; But it seems he&#39;s trying to look cool. :P 
						
						<br />');
INSERT INTO posts VALUES(NULL,21,1,1,789130,'Am I Famous Then?','2009-12-20 02:14:15','http://www.gp32x.com/board/index.php?/topic/51026-am-i-famous-then/page__view__findpost__p__789130','This one is mine. ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,22,1,1,708930,'Puzzled&#33;','2009-03-12 10:48:30','http://www.gp32x.com/board/index.php?/topic/47035-puzzled/page__view__findpost__p__708930','<div class=''quotetop''>QUOTE(&#39;Bosbeetle&#39; &#064; &#39;Mar 12 2009, 10&#58;49 AM)</div><div class=''quotemain''><br />Can somebody explain to me why it always has to be attached to the breakout board in these type of pictures. I dont mind but I just want to know what the breakout board is for. I dont get the concept yet, I saw some features of the breakout board and they are also on the pandora itself so it doesnt add. So fatih is not runnin UAE from the SD in these pictures or am I mistaken?<br /></div><br /><br />It runs from SD. I use break-out box for serial connection.
						
						<br />');
INSERT INTO posts VALUES(NULL,23,1,1,708688,'Puzzled&#33;','2009-03-11 22:08:30','http://www.gp32x.com/board/index.php?/topic/47035-puzzled/page__view__findpost__p__708688','Who told that it doesn&#39;&#39;&#39;&#39;t work? (Thanks to Gnostic for this build of P-UAE)<br /><br />www.pandoratr.com/images/gallery/UAE/kick.jpg<br />www.pandoratr.com/images/gallery/UAE/ab3d.jpg<br />www.pandoratr.com/images/gallery/UAE/banshee.jpg<br />www.pandoratr.com/images/gallery/UAE/gloom.jpg<br />www.pandoratr.com/images/gallery/UAE/projectx.jpg<br />www.pandoratr.com/images/gallery/UAE/psygo.jpg<br />www.pandoratr.com/images/gallery/UAE/swos1.jpg<br />www.pandoratr.com/images/gallery/UAE/swos2.jpg<br />www.pandoratr.com/images/gallery/UAE/team17.jpg<br /><br />Videos after break&#33; ;&#092;)
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>mfk</b>: 11 March 2009 - 10:10 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,24,1,1,708616,'Puzzled&#33;','2009-03-11 19:43:18','http://www.gp32x.com/board/index.php?/topic/47035-puzzled/page__view__findpost__p__708616','<div class=''quotetop''>QUOTE(&#39;bencoder&#39; &#064; &#39;Mar 11 2009, 09&#58;37 PM)</div><div class=''quotemain''><br />Before people say anything I&#39;&#39;&#39;&#39;&#39;&#39;&#39;&#39;m gonna say that NO, the D-Pad and buttons wont be so depressed in the finished version because they go on top of the keymat that mfk(presumably) doesn&#39;&#39;&#39;&#39;&#39;&#39;&#39;&#39;t have.<br /><br />Edit: Looks great btw, thank you &#092;:&#092;)<br /></div><br />Yes you are right. MWeston has the keymat prototype as well so it will look better.
						
						<br />');
INSERT INTO posts VALUES(NULL,25,1,1,708607,'Puzzled&#33;','2009-03-11 19:26:13','http://www.gp32x.com/board/index.php?/topic/47035-puzzled/page__view__findpost__p__708607','Not really. <img src="http://www.gp32x.com/board/public/style_emoticons/default/biggrin.gif" style="vertical-align:middle" emoid="\:D" border="0" alt="biggrin.gif" /><br /><br />www.pandoratr.com/blog.php
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>mfk</b>: 11 March 2009 - 07:27 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,26,1,1,707643,'First Images Of Cnced Pandora','2009-03-09 10:44:24','http://www.gp32x.com/board/index.php?/topic/47002-first-images-of-cnced-pandora/page__view__findpost__p__707643','No they didn&#39;&#39;t mess up. I had to check a few points here too. <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";\)" border="0" alt="wink.gif" /> Everybody will receive their prototypes soon.
						
						<br />');
INSERT INTO posts VALUES(NULL,27,1,1,707639,'First Images Of Cnced Pandora','2009-03-09 10:29:23','http://www.gp32x.com/board/index.php?/topic/47002-first-images-of-cnced-pandora/page__view__findpost__p__707639','<div class=''quotetop''>QUOTE(&#39;BackAssward&#39; &#064; &#39;Mar 9 2009, 12&#58;17 PM)</div><div class=''quotemain''><br />Nice to see.<br /><br />A couple thoughts:<br /><br />Is it just me, or does the lid seem to be missing the join pivot piece that inserts into the right side of the case?  Unless it is a separate part (which it might have to be given the joint design on the base unit top plate), but then, where&#96;s the part?<br /><br />With this design, it isn&#96;t clear where the cables go, unless the LCD cable is coiled up through the join.<br /><br />Are those tiny square little protrusions on the bottom of the L&amp;R keys the part that keeps them from swinging out of the case?  They look a bit small for that job, no?  Or am I wrong and there is another mechanism for that job?<br /></div><br /><br />I didn&#39;&#39;t put pictures of all parts there. There are too many. I&#39;&#39;ll try to build the case when I have time. <br />
						
						<br />');
INSERT INTO posts VALUES(NULL,28,1,1,707626,'First Images Of Cnced Pandora','2009-03-09 09:58:13','http://www.gp32x.com/board/index.php?/topic/47002-first-images-of-cnced-pandora/page__view__findpost__p__707626','Hi Everyone,<br /><br />Follow the link below to check the first images of CNCed body parts of Pandora. Sorry the text is all in Turkish but ED is working on a multi-language website so you will be able to see all updates in several language at the same time. <br /><br />www.pandoratr.com/blog.php<br /><br />You need to wait for a few more days to see an assembled and working Pandora. Because I don&#39;&#39;&#39;&#39;t have all the parts here at the moment. I&#39;&#39;ll see if I can put something together to show you more.<br /><br />Thank you for your patience and your continuous support&#33;<br /><br />Edit: Sorry. I&#39;&#39;m having some problems to create the link here.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>mfk</b>: 09 March 2009 - 10:07 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,29,1,1,700322,'Gp2x Wiz Is Delayed Again. Officially....','2009-02-12 13:30:54','http://www.gp32x.com/board/index.php?/topic/46680-gp2x-wiz-is-delayed-again-officially/page__view__findpost__p__700322','Those who wait for the release of Wiz, unfortunately should wait till the end of April. <img src="http://www.gp32x.com/board/public/style_emoticons/default/sad.gif" style="vertical-align:middle" emoid="\:\(" border="0" alt="sad.gif" /> According to GPH the delay was inevitable to provide proper Flash support. The samples will be sent to distributors before April.
						
						<br />');
INSERT INTO posts VALUES(NULL,30,1,1,693886,'Assembled Pandora Video','2009-01-28 08:09:18','http://www.gp32x.com/board/index.php?/topic/46403-assembled-pandora-video/page__view__findpost__p__693886','Wasn&#39;t this video NDA? <img src="http://www.gp32x.com/board/public/style_emoticons/default/biggrin.gif" style="vertical-align:middle" emoid=":D" border="0" alt="biggrin.gif" />
						
						<br />');
INSERT INTO posts VALUES(NULL,31,1,1,682878,'Keymat On Devboard&#33;','2008-12-26 15:03:51','http://www.gp32x.com/board/index.php?/topic/45796-keymat-on-devboard/page__view__findpost__p__682878','To be more clear, I sent the package to MWeston and he got it on 24th afternoon. That&#39;s all. Now we are waiting for him to show us some nice pics of assembled Pandora.
						
						<br />');
INSERT INTO posts VALUES(NULL,32,1,1,682837,'Keymat On Devboard&#33;','2008-12-26 07:25:22','http://www.gp32x.com/board/index.php?/topic/45796-keymat-on-devboard/page__view__findpost__p__682837','<div class=''quotetop''>QUOTE(&#40;naw&#41;mcx &#064; Dec 26 2008, 04&#58;15 AM) <a href=''http://www.gp32x.com/board/index.php?&amp;act=findpost&amp;pid=682805''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a></div><div class=''quotemain''><br /><div class=''quotetop''>QUOTE(Lord_Doku &#064; Dec 25 2008, 06&#58;57 PM) <a href=''http://www.gp32x.com/board/index.php?&amp;act=findpost&amp;pid=682751''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a></div><div class=''quotemain''><br /><div class=''quotetop''>QUOTE(craigix &#064; Dec 20 2008, 02&#58;21 AM) <a href=''http://www.gp32x.com/board/index.php?&amp;act=findpost&amp;pid=681289''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a></div><div class=''quotemain''><br />Could just be a screw missing there, I guess we will find out next week&#33;<br /></div><br /><br /><br /><div class=''quotetop''>QUOTE(mfk &#064; Dec 20 2008, 09&#58;27 AM) <a href=''http://www.gp32x.com/board/index.php?&amp;act=findpost&amp;pid=681385''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a></div><div class=''quotemain''><br />Hi Guys,<br /><br />Everything lines up nicely. No bending. And I&#39;m just missing a screw. <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";)" border="0" alt="wink.gif" /><br /></div><br /><br /><br /><div class=''quotetop''>QUOTE(TaG &#064; Dec 20 2008, 10&#58;23 AM) <a href=''http://www.gp32x.com/board/index.php?&amp;act=findpost&amp;pid=681395''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a></div><div class=''quotemain''><br />Good to see progress. Looking forward to seeing it working. <img src="http://www.gp32x.com/board/public/style_emoticons/default/smile.gif" style="vertical-align:middle" emoid=":)" border="0" alt="smile.gif" /> <br /><br />Shame craigix said the devs have a screw loose... <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";)" border="0" alt="wink.gif" /><br /></div><br /><br /><br />I got a gut feeling the devs have a finished prototype unit they are gonna show next week...<br /><br />In such a case, i think christmas came late this year <img src="http://www.gp32x.com/board/public/style_emoticons/default/biggrin.gif" style="vertical-align:middle" emoid=":D" border="0" alt="biggrin.gif" /><br /></div><br /><br /><br />We would have, if it was not for that meddling FedEx&#33;<br /></div><br /><br />No word for FedEX this time. They delivered the package before Christmas as they promised. <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";)" border="0" alt="wink.gif" />
						
						<br />');
INSERT INTO posts VALUES(NULL,33,1,1,681385,'Keymat On Devboard&#33;','2008-12-20 08:27:37','http://www.gp32x.com/board/index.php?/topic/45796-keymat-on-devboard/page__view__findpost__p__681385','Hi Guys,<br /><br />Everything lines up nicely. No bending. And I&#39;m just missing a screw. <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";)" border="0" alt="wink.gif" />
						
						<br />');
INSERT INTO posts VALUES(NULL,34,1,1,681244,'Keymat On Devboard&#33;','2008-12-19 23:40:21','http://www.gp32x.com/board/index.php?/topic/45796-keymat-on-devboard/page__view__findpost__p__681244','Final key mat will look much more better with coating on top and letters on it. Because of this is the prototype, some parts are thicker than actual. For me everything looks fine and more important, it works already. <img src="http://www.gp32x.com/board/public/style_emoticons/default/biggrin.gif" style="vertical-align:middle" emoid=":D" border="0" alt="biggrin.gif" /> Final product will be really comfortable to type. <img src="http://www.gp32x.com/board/public/style_emoticons/default/wink.gif" style="vertical-align:middle" emoid=";)" border="0" alt="wink.gif" /> I&#39;ll try to make a video later.
						
						<br />');
INSERT INTO posts VALUES(NULL,35,1,1,681194,'Keymat On Devboard&#33;','2008-12-19 20:56:55','http://www.gp32x.com/board/index.php?/topic/45796-keymat-on-devboard/page__view__findpost__p__681194','Keymats stopped by Turkey to give you a &quot;Hi&#33;&quot; <br /><br />Now they are escorted by some Turkish Delights on their way to MWeston&#33; <img src="http://www.gp32x.com/board/public/style_emoticons/default/tongue.gif" style="vertical-align:middle" emoid=":P" border="0" alt="tongue.gif" /> <br /><br />More news to come soon. World tour of Pandora is going on&#33; <br /><br /><img src="http://www.smart-bs.com/images/keymat/keymat01.jpg" border="0" alt="IPB Image" /> <br /><br /><img src="http://www.smart-bs.com/images/keymat/keymat02.jpg" border="0" alt="IPB Image" /><br /> <br /><img src="http://www.smart-bs.com/images/keymat/keymat03.jpg" border="0" alt="IPB Image" /> <br /><br />
						
						<br />');
INSERT INTO posts VALUES(NULL,36,1,2,834728,'Is Everything On Track For Early April Production?','2010-04-01 21:56:32','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__834728','Okay, just some quick update: Got the tiny stick today and thanks to notaz hackng magic it&#39;s already running great&#33;<br />
<br />
Battery life running at 500 MHz is about 6h when constantly surfing, which is good.<br />
<br />
Surfing is as fast as on my normal PC (also very quick  screen rendering&#33; :) )<br />
<br />
The stick is barely noticeable, it&#39;s very small. So yeah, no internal WiFi yet, but we can assure you at least the provided stick is working, so you can use the Pandora for internet access as planned.<br />
<br />
I&#39;ll probably do  video tomorrow showing you the small stick and some internet browsing :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,37,1,2,834073,'Toronto, Tuesday, Pubgrub And Pandora','2010-03-31 11:55:17','http://www.gp32x.com/board/index.php?/topic/52637-toronto-tuesday-pubgrub-and-pandora/page__view__findpost__p__834073','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833987''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Creature XL, on 31 March 2010 - 07:19 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833956''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 31 March 2010 - 02:26 AM, said:</p><div class="blockquote"><div class=''quote''>Oh, about pixel-perfect doubleclick: AFAIK you can change the jitter area in /etc/ts.conf, so you won&#39;t have to be pixel-perfect anymore :) <br />
It&#39;s just not tweaked yet.</div></div><br />
FFS&#33; Don&#39;t post here... TWEAK IT&#33;</div></div><br />
<br />
Hehe, I actually like it as it is, so it shouldn&#39;t be me who should tweak it :D <br />
<br />
You can also switch to one-click mode for the file manager, very convenient.<br />
<br />
For playing games, I&#39;m not gonna use XFCE4 anyways, so I don&#39;t care about doubleclicking :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,38,1,2,834070,'Ok It&#39;s The 26Th, Can We Have An Update?','2010-03-31 11:53:26','http://www.gp32x.com/board/index.php?/topic/52680-ok-its-the-26th-can-we-have-an-update/page__view__findpost__p__834070','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=832927''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Mjlink, on 29 March 2010 - 03:44 AM, said:</p><div class="blockquote"><div class=''quote''>ED you driving or flying?  Just curious.</div></div><br />
<br />
Flying. Driving would take 15 - 16 hours, and I need to go back to work in Germany for at least one or two days in the week, so it looks like I&#39;ll be constantly flying back and forth.<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834054''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>neogramps, on 31 March 2010 - 01:02 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>or will let them apply a fix if he finds out it&#39;s hardware and it can be fixed easily.</div></div><br />
If it&#39;s hardware and can&#39;t be fixed easily, will you ship the first 1000 with a view to replacing them later, or are we dead in the water until the hw issue is fixed?</div></div><br />
<br />
Depends :) If we know it before we ship, we&#39;re gonna let you decide.<br />
You could probably get it right away and pay a bit less for a non-WiFi unit, get it right away with the option to exchange it later (second batch maybe) or wait for a fixed unit and let someone else get it.<br />
If it&#39;s fixable and we know the fix before we ship, we&#39;re going to do it right away.<br />
If we know a fix AFTER we ship, you can send it back whenever you want and let us fix it.<br />
<br />
We want YOU to decide, after all, it&#39;s your Pandora :) <br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>More Speculaas... but i&#39;d guess once there is a confirmed hardware fault, those boards might be viewed as &quot;non-wifi&quot; and be sold at a lower price as ED mentioned.</div></div><br />
<br />
Yes, either for the guys who already ordered or in the future.
						
						<br />');
INSERT INTO posts VALUES(NULL,39,1,2,834067,'Quality Control','2010-03-31 11:47:59','http://www.gp32x.com/board/index.php?/topic/52737-quality-control/page__view__findpost__p__834067','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834061''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>zhasha, on 31 March 2010 - 01:25 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834055''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>notaz, on 31 March 2010 - 12:09 PM, said:</p><div class="blockquote"><div class=''quote''>Wrong, we&#39;re using the one from 2.6.34-rc with compat-wireless. Full 2.6.34-rc1 setup was tested and no improvement was found regarding wifi.</div></div><br />
Sorry, I was told you were desperately working off of 2.6.27 the last time I asked about it.</div></div><br />
<br />
For normal image at the moment, yes.<br />
For WiFi testing, notaz did a small rootfs with a newer kernel to check that out.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=834055''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>notaz, on 31 March 2010 - 12:09 PM, said:</p><div class="blockquote"><div class=''quote''>Believe it or not but .34-rc has certain issues than our current .27 setup doesn&#39;t, and there is no time to sort them now so close to release. And I think you can survive without ext4.</div></div><br />
I have absolutely no doubt about that, but given the timeframe I&#39;d say there&#39;s probably been plenty of time to switch upwards in the list, at least a version or 2. Keep in mind that .27 was released in October 2008. And as for me and ext4, I love it specifically because of extents, and it was introduced (not ext4dev, but ext4) in .29 I believe. Incidentally, that kernel also provided the final stability nail for the ath5k driver, so I have an unnatural attachment to it. Sure I can live without ext4, but having to reformat an ext2 card to ext4 later is going to be a hassle. I know you can just mount it as ext4, but my experience with that has been that it doesn&#39;t do jack for performance and kept on trucking with large indirect block tables instead of extents, which absolutely kills performance on my crappy hard disks at least.<br />
tl;dr: my external hard disk went from 21MB/s to 30MB/s avg. write speed simply from switching from ext3 to ext4 (and runs at 12-15MB/s on FAT32/NTFS). I of course have no idea whether the SDHC card bus will limit my class 4 card or the card/filesystem will</div></div><br />
<br />
Don&#39;t worry, we&#39;ll upgrade to a newer version with a future firmware update. We want to have hardware accelerated movie-playing after all&#33;<br />
<br />
However, except for the hardware acceleration, the current OS is stable and runs pretty well (tested for over one month now&#33;)<br />
If we switch NOW, it might break things we couldn&#39;t fix until we assemble.<br />
Now, what would happen if the first people get the Pandora with non-working WiFi so far and non-working OS? ;) <br />
<br />
We&#39;d rather have a solid base OS now and then concentrate on updating.<br />
Everyone can help testing future firmware images, as you can boot them from SD Card.<br />
So it shouldn&#39;t take too long until you will have a new kernel.<br />
<br />
You can always compile a newer one for yourself and see if it works fine with your unit, too, if you want.
						
						<br />');
INSERT INTO posts VALUES(NULL,40,1,2,834044,'Ok It&#39;s The 26Th, Can We Have An Update?','2010-03-31 10:20:32','http://www.gp32x.com/board/index.php?/topic/52680-ok-its-the-26th-can-we-have-an-update/page__view__findpost__p__834044','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833957''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Bigun, on 31 March 2010 - 03:33 AM, said:</p><div class="blockquote"><div class=''quote''>Only thing posted on twitter has been from CraigX stating his dissatisfaction with Wifi.<br />
<br />
Is ED alright?</div></div><br />
<br />
Yes, I am alright. I&#39;m still waiting for some responds from the other guys, regarding how exactly we will handle everything.<br />
<br />
The blog post most likely wouldn&#39;t have more information than I wrote here on the page anyways, just some more confirmed things.<br />
<br />
We had a long night yesterday in IRC where we thought about all possible issues how to find out what could cause the slow speed.<br />
Michael is going to modify a board to be able to read out the debug data from the module itself, that might also help a lot.<br />
<br />
Regarding the first boards produced: As it looks like right now, Michael will test the debug output and then we&#39;ll either let the boards we have already ship immediately (if he doesn&#39;t find more about it) or will let them apply a fix if he finds out it&#39;s hardware and it can be fixed easily.<br />
That&#39;s the last thing we can try out pretty quick, if it won&#39;t help, it&#39;s shipping and assembling time&#33;<br />
<br />
So yes, we&#39;re working on it. The fewer we post, the more busy we are with it.<br />
It will be solved, that&#39;s something we are sure about. We won&#39;t give up&#33;
						
						<br />');
INSERT INTO posts VALUES(NULL,41,1,2,833956,'Toronto, Tuesday, Pubgrub And Pandora','2010-03-31 01:26:35','http://www.gp32x.com/board/index.php?/topic/52637-toronto-tuesday-pubgrub-and-pandora/page__view__findpost__p__833956','Oh, about pixel-perfect doubleclick: AFAIK you can change the jitter area in /etc/ts.conf, so you won&#39;t have to be pixel-perfect anymore :) <br />
It&#39;s just not tweaked yet.
						
						<br />');
INSERT INTO posts VALUES(NULL,42,1,2,833879,'Is Everything On Track For Early April Production?','2010-03-30 22:15:16','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__315','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833805''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>benji_stein, on 30 March 2010 - 10:12 PM, said:</p><div class="blockquote"><div class=''quote''>I was under the impression that the company had made a fair number of these cases, already, as would be indicated by the photos in the earlier official blog post:<br />
<a href=''http://pandorapress.net/2010/03/12/official-blog-a-dream-becomes-reality/#more-3471'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://pandorapress....lity/#more-3471</a><br />
<br />
Looks like hundreds (or at least dozens) of some of these parts. If the case company is now producing these on a different machine (new, as in newly bought by the company, or new as in a different one they hadn&#39;t tried our moulds on before), what happens to all these old parts? <br />
<br />
Did we pay for them? Do they dump them? Can we get them to see quality? Can we use them to ship out some more of our first 105 boards to send to some more developers and/or people with good resources at their disposal (*cough*topor*cough*)? Why are they so willing (eager?) to try a different machine all of a sudden?</div></div><br />
<br />
Those were the testing cases. They are done to check if everything is okay and going well and big production can be started.<br />
Usually, that plastic is being melted after doing that (remember the weird-colored looking first samples we got? Those came from preused plastic).
						
						<br />');
INSERT INTO posts VALUES(NULL,43,1,2,833869,'Toronto, Tuesday, Pubgrub And Pandora','2010-03-30 22:03:33','http://www.gp32x.com/board/index.php?/topic/52637-toronto-tuesday-pubgrub-and-pandora/page__view__findpost__p__833869','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833817''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>WizardStan, on 30 March 2010 - 10:48 PM, said:</p><div class="blockquote"><div class=''quote''>I didn&#39;t get as much play with the D-pad as I could have.  It felt good.  Played Giana&#39;s return a bit, it worked smoothly, didn&#39;t scrape or poke my fingers.  I can believe this would be good for extended play.</div></div><br />
<br />
Heh - I more played with the DPad than with anything else :D <br />
And I do love it.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>The sound was also a lot quieter than I had expected.  I knew it wouldn&#39;t be able to fill a room or anything, but I expected to be able to hear a little better than I did.  That pub wasn&#39;t exactly loud, and it was hard to hear sometimes.</div></div><br />
<br />
Oh, you do know there&#39;s also a software mixer?<br />
If the software mixer was low, the hardware volume wheel can&#39;t do much about it :) <br />
Also, some apps do seem to lower the volume themselves.<br />
<br />
I know VICE did scare me the first time I used it because it was incredibly loud :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,44,1,2,833752,'Is Everything On Track For Early April Production?','2010-03-30 18:25:48','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833752','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833750''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>dupey, on 30 March 2010 - 07:22 PM, said:</p><div class="blockquote"><div class=''quote''>haha<br />
no, i meant, that the boards weren&#39;t shipped as planned</div></div><br />
<br />
Not sure, as said, I had to catch up with everything after the weekend.<br />
Friday was when they should&#39;ve shipped, maybe did didn&#39;t make it before the weekend and Michael told them on Monday to hold on for two more days (since the cases aren&#39;t there yet and he wants to check once more on WiFi).
						
						<br />');
INSERT INTO posts VALUES(NULL,45,1,2,833748,'Is Everything On Track For Early April Production?','2010-03-30 18:21:13','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__300','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833744''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mvickers03, on 30 March 2010 - 07:16 PM, said:</p><div class="blockquote"><div class=''quote''>Hey ED your a patient guy, and I&#39;m sorry to ask this, I&#39;m not rushing nor will I EVER cancel.. but do you have any rough approximation you could give me as to when production will start.. PM me if you don&#39;t want to make it public<br />
<br />
any reply would be appreciated</div></div><br />
<br />
As said above, we made the decision to ship, let you play and fix later (if a fix is needed).<br />
So no need to hold back, it could start next week.
						
						<br />');
INSERT INTO posts VALUES(NULL,46,1,2,833747,'Is Everything On Track For Early April Production?','2010-03-30 18:19:20','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__300','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833743''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>dupey, on 30 March 2010 - 07:13 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833729''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 30 March 2010 - 06:40 PM, said:</p><div class="blockquote"><div class=''quote''>(yes, we stopped the shipment of the boards because of WiFi - Michael first wanted to check once more if there is something wrong with the hardware and maybe find a very simple fix they could apply before shipping).</div></div><br />
So you knew this for how long? I think i stay away from the board for a few days, before i write something i will regret.</div></div><br />
<br />
Knew that WiFi wasn&#39;t working yet? That&#39;s been known to the public for quite a while.<br />
We just hoped that we could get it working until then. Michael is a very careful guy - so he wanted to check once more.
						
						<br />');
INSERT INTO posts VALUES(NULL,47,1,2,833741,'Is Everything On Track For Early April Production?','2010-03-30 18:11:00','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833741','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833737''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>KodeIn, on 30 March 2010 - 07:05 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833733''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>x68000, on 30 March 2010 - 06:54 PM, said:</p><div class="blockquote"><div class=''quote''>As long as i can play some games, the dongle can go emulate</div></div><br />
As long as I can play Amiga games everywhere, Pandora is for me&#33;</div></div><br />
<br />
Well, I did use it to play Speedball 2, Superfrog and Turrican 2 fullspeed on the go... so yes, it does work ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,48,1,2,833738,'Quality Control','2010-03-30 18:09:26','http://www.gp32x.com/board/index.php?/topic/52737-quality-control/page__view__findpost__p__833738','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833732''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Clyborg, on 30 March 2010 - 06:50 PM, said:</p><div class="blockquote"><div class=''quote''>The completed tasks should have caught the wifi issue:<br />
1.  Board Design (I&#39;m assuming the wifi chip was chosen, and the driver was available at that time)</div></div><br />
<br />
If you followed the blog, you knew there were problems with getting the driver to work correctly.<br />
It does run, but it has a max peak of 45KB/s. The module itself does work though.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>2.  Burn-In and Stability Tests for the 105 Boards (Testing before or after to burn-in should have had testing for all components.)</div></div><br />
<br />
Each hardware component is being tested, also the WiFi module. It does start, connect to an AP and can ping a server. That&#39;s all we could to for a hardware test.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>3.  testing for FCC/CE compliance (How did the FCC test this if WiFi was not working?)</div></div><br />
<br />
As said, the WiFi module does work. It can be switched on and connect to the internet. FCC/CE compliance doesn&#39;t care about slow speed.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>After the FCC/CE compliance task, there is no other task listed to test the Pandora.  I really do not want a rushed product, but some of these delays could have been caught prior to the cases being built.   If testing is lacking, what else was over-looked?</div></div><br />
<br />
WiFi was the only thing where our couldn&#39;t get the driver fully working.<br />
We hoped it would work out until now, and things got better. We can get stable speeds without packet loss, but we don&#39;t know yet why it&#39;s slow.<br />
<br />
Every other aspect (nubs, Audio, 3D processor, keyboard, screen, DPad, SD-Card slots, USB-connector, TV Out, charger, etc.) are working fine as we are working with all that already on our units for months.<br />
<br />
We still hope it&#39;s a software issue, but who could tell it is for sure until you get it to work 100%?<br />
<br />
One thing we don&#39;t want to do is hide that from you, so we didn&#39;t want to silently build the Pandoras and ship them to you, telling it can&#39;t possibly be hardware, and then later it might turn out it IS hardware indeed.<br />
<br />
I know other companies probably wouldn&#39;t have cared about that and simply delivered...<br />
But I do think this project is based on trust. I trust you guys will support us if we openly tell you what&#39;s happening.<br />
Even if we find out it&#39;s hardware within the next days, I do think being open about it is the right way to go. The way to keep you guys supporting us.<br />
<br />
We are no big company with billions of USD nor are we magicians, we cannot snip with our fingers and make WiFi working.<br />
All we can do is offer to assemble and ship the units we have right now and fix it later, so you can finally start using your Pandora and know this last thing will be taken care of.<br />
<br />
If it turns out to be wrong - and you&#39;d all immediately abandon the project because we told you of problems instead of silently ship it anyways... it would really hurt me a lot.<br />
For me, this community is the coolest one I&#39;ve ever seen. It always kept me motivated to work on the Archive, the website, the server in my free time and to open up a shop to make sure you can easily buy such handhelds with the best customer support I can possibly provide.<br />
I never charged anything for let you use the archives nor for hosting this website (and yes, it does cost me money).<br />
It&#39;s what I want to give to the community, as the community gave me a lot of cool games and apps for all the open handhelds.<br />
<br />
And I still do think that if you help someone, he will also help you when you&#39;re in need. So let&#39;s go on and play with out Pandoras soon&#33; :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,49,1,2,833729,'Is Everything On Track For Early April Production?','2010-03-30 17:40:00','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833729','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833626''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Mithrildor, on 30 March 2010 - 03:34 PM, said:</p><div class="blockquote"><div class=''quote''>1. How is Openpandora going to pay for 4000x 150e ( I dunno the exact price, it might be more) for each new board? Or do you have to wait a year for a new board if it seems to be a hw issue</div></div><br />
<br />
If it turns out to be a hardware thing, it could be that only a resistor or capacitor needs to be changed. The GP2X First Edition had the same problem - I remember fixing 200 a few months after delivery...<br />
<br />
If the board REALLY needs to be exchanged, you don&#39;t need to calculate the full costs - because there might also be people who would love to get a board without working WiFi for a few bucks less. So all we need would be the money to compensate that.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>2. What is the chance of this being a hw issue (cause everything seems to be working from here as someone who reads the boards, but it seems to be working just not good enough.</div></div><br />
<br />
Hard to tell, it&#39;s similar to playing lottery. We&#39;re doing all we can to find this out right now. Michael bought more equipment to do some more in-depth measurements and he also asked the module manufacturer if they have any idea.<br />
We&#39;ll let you know as soon as we get more information about it.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>3. Do you promise youll give us a new board?</div></div><br />
<br />
Well, a hard thing to promise :) <br />
If we all die because of a heart attack before that, we can&#39;t do that. If everyone cancels from one day to the next it might also be hard for us coughing up the money to do that.<br />
You can be sure if it&#39;s somehow possible for use, yes, we&#39;ll do that.<br />
It might take a bit until we sold enough units to cover all the costs (we&#39;re not Sony, you know), but as said above, if [I&#39;m stupid spammer] the non-WiFi-Units a bit cheaper, it shouldn&#39;t be too much.<br />
Fingers crossed it&#39;s not necessary at all, for sure&#33;<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>4. Cant you make a small setup to test if its a hw issue or sw issue?</div></div><br />
<br />
I think that&#39;s what Michael is planning to do - but the board needs a bit of a change for that, so it needs a few weeks until he can do so.<br />
Until then, we don&#39;t want to stop delivery... would be wasted time if it&#39;s really just a software issue, and as you can see by the responses and polls, there are quite a few people who are fine with that solution. Ship, find out what&#39;s the cause and fix it.<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833717''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Alerino, on 30 March 2010 - 05:56 PM, said:</p><div class="blockquote"><div class=''quote''>BLOG POST&#33;&#33;&#33;&#33;<br />
To ease our spirits&#33;  :lol: </div></div><br />
<br />
At the moment, I couldn&#39;t tell you more than I could tell here.<br />
We&#39;re discussing about how exactly we&#39;ll manage everything and finding out how quick we can now get all the produced boards and cases to UK (yes, we stopped the shipment of the boards because of WiFi - Michael first wanted to check once more if there is something wrong with the hardware and maybe find a very simple fix they could apply before shipping).<br />
But as we&#39;re not sure yet what&#39;s causing it, no need to hold back and keep you waiting anymore. We&#39;re now trying to get the stuff as quickly to UK as possible so you can start playing - and fix it if it&#39;s really broken.
						
						<br />');
INSERT INTO posts VALUES(NULL,50,1,2,833727,'How Many &#39;slots&#39; Are Really Left?','2010-03-30 17:22:56','http://www.gp32x.com/board/index.php?/topic/52736-how-many-slots-are-really-left/page__view__findpost__p__833727','Yes, we divided the first batch between us.<br />
I have 700 Pandoras and I&#39;m full.<br />
Every one or two weeks, someone cancels. However, each two or three days asks for a Pandora.<br />
Some also ask at craig&#39;s place and get a slot... but at the moment, I got about 30 - 40 guys waiting in my queue.<br />
<br />
Don&#39;t know how&#39;s it looking for Craig and Fatih.
						
						<br />');
INSERT INTO posts VALUES(NULL,51,1,2,833716,'Is Everything On Track For Early April Production?','2010-03-30 16:54:43','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__285','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833638''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>VRAndy, on 30 March 2010 - 03:53 PM, said:</p><div class="blockquote"><div class=''quote''>Without Wifi the Pandora&#39;s gaming functionality remains in place, but many of its other potential uses fall away.    A Wifi dongle is an acceptable stop-gap,(I believe I&#39;ve said so in the past.), but it does impinge on the thing&#39;s pocket-ability, so it&#39;d be sad if this was a long-term fix.</div></div><br />
<br />
No, it&#39;s definately not a long-term fix. We&#39;ll continue to work on it until it really works, don&#39;t worry&#33;<br />
And we also try to get the smallest USB-WiFi-Dongle around there, so that there won&#39;t stick a 10cm dongle including a big antenna out of the unit&#33;
						
						<br />');
INSERT INTO posts VALUES(NULL,52,1,2,833619,'Where Are The Kernel Sources For Pandora Os?','2010-03-30 14:13:21','http://www.gp32x.com/board/index.php?/topic/52733-where-are-the-kernel-sources-for-pandora-os/page__view__findpost__p__833619','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833599''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>torpor, on 30 March 2010 - 02:08 PM, said:</p><div class="blockquote"><div class=''quote''>Okay, and this is the latest stuff the core devs are working on as well?  No forkies here, folks, lets all put our bits in the same barrel before we start fishing ..</div></div><br />
<br />
Checkout <a href=''http://git.openpandora.org/'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://git.openpandora.org/</a> for more gits.
						
						<br />');
INSERT INTO posts VALUES(NULL,53,1,2,833569,'Is Everything On Track For Early April Production?','2010-03-30 11:59:12','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833569','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833563''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Dead1nside, on 30 March 2010 - 01:50 PM, said:</p><div class="blockquote"><div class=''quote''>Thanks Notaz for the extra information, I have to say I&#39;m still very confused.</div></div><br />
<br />
We are too, that&#39;s why we want to make you this offer.<br />
It could take months to find out what&#39;s exactly wrong, it could be found out in a week.<br />
<br />
But I doubt you all want to wait another few months until you get your Pandora, that&#39;s why we want to ship it and make sure you can surf the net in fullspeed by including a WiFi dongle.
						
						<br />');
INSERT INTO posts VALUES(NULL,54,1,2,833362,'Is Everything On Track For Early April Production?','2010-03-30 00:11:23','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__180','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833358''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>BackAssward, on 30 March 2010 - 02:03 AM, said:</p><div class="blockquote"><div class=''quote''>Well, that raises another question, was a USB 2.0 HighSpeed dongle actually found?  That one pictured looks to be FullSpeed &quot;Compatible to USB 1.1 and USB 2.0 interface&quot;, and I didn&#39;t see the HighSpeed logo anywhere.  I can&#39;t find a HighSpeed one so far in my searching (Some say high speed, but they are referring to the WiFi, not the USB, so far in my research).<br />
  Was that little detail overlooked in this plan?</div></div><br />
<br />
Nope. You never know unless you can try it... I already ordered a few of those small sticks.
						
						<br />');
INSERT INTO posts VALUES(NULL,55,1,2,833339,'Is Everything On Track For Early April Production?','2010-03-29 23:07:35','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833339','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833332''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Vitel, on 30 March 2010 - 12:54 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833282''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Monk, on 30 March 2010 - 12:26 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833187''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>user47alpha, on 29 March 2010 - 07:22 PM, said:</p><div class="blockquote"><div class=''quote''>In my opinion it make no sence to delay the delivery (even of all 4000 units) because of a software error. Especially if it&#39;s only that WiFi works with 30 kb/s which is of course not the best rate but more than enough for surfing.</div></div><br />
<br />
You realise that 30kbps would be slower than a 56kbps modem, right?</div></div><br />
<strong class=''bbc''>ED</strong>, did you mean KiB/s or Kbps (kilobytes or kilobits)?</div></div><br />
<br />
At the moment, we get about 45KB/s max.
						
						<br />');
INSERT INTO posts VALUES(NULL,56,1,2,833239,'Is Everything On Track For Early April Production?','2010-03-29 20:16:26','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__120','<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833226''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Alec&#8202;, on 29 March 2010 - 10:07 PM, said:</p><div class="blockquote"><div class=''quote''>We just wanted to make an offer that you can use WiFi right from the start, that&#39;s why we want to offer you a small WiFi dongle and your Pandora NOW.</div></div><br />
So are you saying that if we choose to get the Pandora now, we will get a Pandora with a dongle, and if the problem was in hardware you will let us exchange the board (and the dongle?) for a new board?</div></div><br />
<br />
Exactly. We sure hope it&#39;s not a hardware thing, as it would mean quite a lot of work and some more cost for us... but there&#39;s no need to let you all wait.<br />
If it&#39;s really hardware thing, we have to fix those boards anyways - regardless if you have them or if they are still lying around in the MP facility... so no need to hold them back at all.<br />
And if it&#39;s software, someone else might find a fix, so it might even speed things up.<br />
<br />
So either way, it surely does make sense to me.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833228''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>wrath of khan, on 29 March 2010 - 10:08 PM, said:</p><div class="blockquote"><div class=''quote''>Or you can get it right away including a dongle so you get a full functional Pandora including a minimal WiFi dongle which surely won&#39;t get in your way - starting delivery in April. And if there really is something wrong (as said, there&#39;s always a chance), we offer to fix it.</div></div><br />
Will this be the first thousand preorderers only or including the other 3 thousand people who ordered.who get their pandora now</div></div><br />
<br />
The hardware fix / exchange? Well, anyone who got a faulty Pandora from us will be valid for an exchange, that&#39;s for sure.<br />
But as we are still working on finding a fix while the production and assembly continues, we sure hope we&#39;ll get a fix after the first 1000 have been delivered.
						
						<br />');
INSERT INTO posts VALUES(NULL,57,1,2,833230,'Is Everything On Track For Early April Production?','2010-03-29 20:09:17','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833230','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833218''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>stepp, on 29 March 2010 - 09:58 PM, said:</p><div class="blockquote"><div class=''quote''>I sense a bit of dispair in EDs post, something is wrong hardware side i reckon, if thats the case i dont even want to guess how long before they revise and change the boards, 6 months?</div></div><br />
<br />
Not despair...<br />
It could be that someone has an idea which works after a good nights rest and it could also be that it takes quite a while to debug everything.<br />
It&#39;s someting that cannot be known, and all we want is to be open about it and treat you fair.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Nothing seems to go right for this project.</div></div><br />
<br />
I doubt it&#39;s much better for internal projects from big companies... but they most likely have more money to fix things faster and they don&#39;t need to tell anyone about it :) <br />
<br />
Some might remember the GP2X F100 First Edition... a gaming console which had a flickering LCD, an almost unusable stick (which couldn&#39;t be fixed until they released a new version) and a headphone jack that broke when you touched it.<br />
The Pandora is fully working: We got a complete gaming console with USB, working LCD, keyboard, cool DPad, Nubs, etc. Everything is working already. And as we want to give you working WiFi, we&#39;ll include a stick.
						
						<br />');
INSERT INTO posts VALUES(NULL,58,1,2,833220,'Is Everything On Track For Early April Production?','2010-03-29 20:01:50','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__st__105','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=833212''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>quadomatic, on 29 March 2010 - 09:53 PM, said:</p><div class="blockquote"><div class=''quote''>I&#39;m no expert, but based on EvilDragon&#39;s post, since the module starts up and can communicate with the board, it seems like it&#39;s not likely to be a hardware issue, but it&#39;s not 100% certain that it isn&#39;t.</div></div><br />
<br />
The problem is, you can never be 100% sure if it&#39;s hardware or not when you don&#39;t have the software properly working yet. As we don&#39;t want to lie to you, we surely cannot promise :) <br />
All we know is that the module gets everything according to specs (Michael checked it) and does initialize and work so far (though slowly). It does report the Signal strength and Link Quality correctly, so the antenna also seems to be fine :) <br />
<br />
However, we have no money to pay a team to get WiFi working. And to not let you wait for too long, we decided we&#39;d go this way.<br />
You can either wait until we completely fixed it, but we cannot tell how long you will have to wait yet.<br />
Or you can get it right away including a dongle so you get a full functional Pandora including a minimal WiFi dongle which surely won&#39;t get in your way - starting delivery in April. And if there really is something wrong (as said, there&#39;s always a chance), we offer to fix it.
						
						<br />');
INSERT INTO posts VALUES(NULL,59,1,2,833205,'Is Everything On Track For Early April Production?','2010-03-29 19:46:18','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833205','notaz is working on the kernel, but not deciding with us.<br />
<br />
Well, the module initializes and talks to the board, that&#39;s what we know for sure.<br />
<br />
One thing I can promise: If it REALLY turns out to be a hardware fault, you can be sure we&#39;ll either fix it for you or exchange your board for free as soon as we can afford it (maybe after the second batch, when we got some money back).<br />
So either way, you won&#39;t be screwed. (I remember I had to fix over 200 gp2x First Editions as they had a flickering LCD...)<br />
<br />
We just wanted to make an offer that you can use WiFi right from the start, that&#39;s why we want to offer you a small WiFi dongle and your Pandora NOW.
						
						<br />');
INSERT INTO posts VALUES(NULL,60,1,2,833153,'Is Everything On Track For Early April Production?','2010-03-29 18:24:25','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833153','Okay, got some news. Cases are fine so far, they managed to make it look much better than what we saw last Thursday (they got a new machine and asked if we could give them two more days to test if that does a better quality... Fatih agreed and they did a new test today and according to them, it does a MUCH better quality). Can&#39;t wait for the pictures.<br />
Shipping and production will happen this week, so yeah, we lost a few days for assembly, but got much better cases.<br />
<br />
About the WiFi... well, we&#39;re currently discussing things and will do the blog post (finally&#33;) when we decided everything (hopefully tonight).<br />
<br />
We&#39;ll probably let you decide if you want your Pandora NOW (and we might even throw in a free mini-WiFi-Stick so you can use WiFi with your Pandora&#33;) or wait until everything is sorted out. And when I mean YOU, I&#39;m not talking about a public discussion - every single customer can decide if he wants it now with stick or wait until internal WiFi is sorted out.<br />
<br />
Yep, we don&#39;t want to keep you waiting anymore.
						
						<br />');
INSERT INTO posts VALUES(NULL,61,1,3,834796,'Is Everything On Track For Early April Production?','2010-04-01 23:37:19','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__834796','I think the internal chip was estimated at 7 hours, however I think this USB one is actually a more powerful chipset in general.
						
						<br />');
INSERT INTO posts VALUES(NULL,62,1,3,834794,'Appstore','2010-04-01 23:35:50','http://www.gp32x.com/board/index.php?/topic/52232-appstore/page__view__findpost__p__834794','Hoping to do some testing this coming week if I can grab 5 mins from somewhere.
						
						<br />');
INSERT INTO posts VALUES(NULL,63,1,3,834684,'Joystiq Leaks Screenshot Of New Half-Life Game','2010-04-01 20:59:05','http://www.gp32x.com/board/index.php?/topic/52764-joystiq-leaks-screenshot-of-new-half-life-game/page__view__findpost__p__834684','I thought that was an awesome ghost like baddie there, but now I think it&#39;s just smoke from the gun.<br />
<br />
 :( 
						
						<br />');
INSERT INTO posts VALUES(NULL,64,1,3,834530,'How Many &#39;slots&#39; Are Really Left?','2010-04-01 14:59:22','http://www.gp32x.com/board/index.php?/topic/52736-how-many-slots-are-really-left/page__view__findpost__p__834530','There are about 10-20 free slots. It jumps about mainly because people place orders... then never pay.<br />
<br />
So after 60 or so days we cancel those and release them. Sometimes even if there are not slots left but unpaid orders we will still send invoices because we know we are about to cancel x amount of unpaid orders.<br />
<br />
We released 150 new slots a couple of months back (complex reasons) which have slowly filled up too.
						
						<br />');
INSERT INTO posts VALUES(NULL,65,1,3,833175,'Is Everything On Track For Early April Production?','2010-03-29 19:09:03','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__833175','Probably going to have to throw in something like this with the first ~1000:<br />
<br />
<a href=''http://ecx.images-amazon.com/images/I/41HdtFh-oZL._SS500_.jpg'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://ecx.images-am...oZL._SS500_.jpg</a><br />
<br />
Because the driver for the internal chip is only working at ~30kbps. We don&#39;t mind people wanting to switch to the 3000 batch if they are not happy with that. We won&#39;t ship the 3000 until we have it working faster.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 29 March 2010 - 07:09 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,66,1,3,832973,'Is Everything On Track For Early April Production?','2010-03-29 05:46:42','http://www.gp32x.com/board/index.php?/topic/52711-is-everything-on-track-for-early-april-production/page__view__findpost__p__832973','I should have more photos for you this week.
						
						<br />');
INSERT INTO posts VALUES(NULL,67,1,3,832957,'Panda Mobo + New Case/keyboard/screen = ?','2010-03-29 04:49:37','http://www.gp32x.com/board/index.php?/topic/52707-panda-mobo-new-casekeyboardscreen/page__view__findpost__p__832957','You know just because you can make it bigger does not mean you can cram a load more chips in it. There are limits to what you can hook up and we are already pushing them. <br />
<br />
And what you want is a netbook. There are hundreds of them already available.
						
						<br />');
INSERT INTO posts VALUES(NULL,68,1,3,832138,'Made In China&#33;','2010-03-25 21:54:57','http://www.gp32x.com/board/index.php?/topic/52655-made-in-china/page__view__findpost__p__832138','There isn&#39;t any accepting to do, these are the MP cases.<br />
<br />
We just wanted the photos for a sort of insurance that they had built units.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 25 March 2010 - 09:55 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,69,1,3,831768,'Today Is A Great Day&#33;(Hopefully)','2010-03-25 06:46:55','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__831768','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831762''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Mr.Confuzed, on 25 March 2010 - 06:22 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831741''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 24 March 2010 - 09:29 PM, said:</p><div class="blockquote"><div class=''quote''>We&#39;re not letting them ship without sending us the photos first.</div></div><br />
Psh&#33;  Like you could stop them.</div></div><br />
<br />
They don&#39;t know where I live.
						
						<br />');
INSERT INTO posts VALUES(NULL,70,1,3,831761,'Today Is A Great Day&#33;(Hopefully)','2010-03-25 06:21:46','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__831761','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831745''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>bodhee, on 25 March 2010 - 04:36 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831733''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Hari G, on 24 March 2010 - 11:39 PM, said:</p><div class="blockquote"><div class=''quote''>22..23..24..25.. Counting  :blink: </div></div><br />
if this thing actually gets massed produced..i will run naked down 5th avenue in nyc..  bring on the flames if anything i have said is untrue..</div></div><br />
<br />
We all know you won&#39;t do it though. I wish you would.<br />
<br />
I think this post should be a sticky, so we can keep track of you :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,71,1,3,831741,'Today Is A Great Day&#33;(Hopefully)','2010-03-25 04:29:11','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__831741','We&#39;re not letting them ship without sending us the photos first. Should have photos in the next 10 hours.
						
						<br />');
INSERT INTO posts VALUES(NULL,72,1,3,831690,'Seen The Carry Cases?','2010-03-25 00:18:58','http://www.gp32x.com/board/index.php?/topic/52652-seen-the-carry-cases/page__view__findpost__p__831690','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831688''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Awakening, on 25 March 2010 - 12:17 AM, said:</p><div class="blockquote"><div class=''quote''>Looking really nice Craig&#33; :) <br />
<br />
Would it be possible to attach a shoulder strap to it if I have one?</div></div><br />
<br />
There is a belt like thing on the back: <a href=''http://twitpic.com/1apqc3'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://twitpic.com/1apqc3</a>
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 25 March 2010 - 12:19 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,73,1,3,831683,'Seen The Carry Cases?','2010-03-25 00:09:35','http://www.gp32x.com/board/index.php?/topic/52652-seen-the-carry-cases/page__view__findpost__p__831683','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831680''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>rabidpoobear, on 25 March 2010 - 12:04 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831678''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 24 March 2010 - 06:59 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831675''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>rabidpoobear, on 24 March 2010 - 11:55 PM, said:</p><div class="blockquote"><div class=''quote''>Hmm, it doesn&#39;t seem like the TV-out cable has a place?  unless that top part is zippered and can contain stuff?</div></div><br />
<br />
Because the TV out cable is so long and that it has 4 TV connections and a Pandora connector it is actually pretty huge. I decided that the carry case should not have a space for it because, seriously, it would almost double the height of it.</div></div><br />
Yeah, that makes sense.  I forgot that they are cables and not just adapters.<br />
So have you officially decided to include both the hard and soft cases?  or do we have to pick?</div></div><br />
<br />
I think I said last time the original (hard) case was pretty shitty quality. That&#39;s why we decided to use another factory while we had some extra time. This new case is sort of half way between hard and soft, you can really throw it about and it feels solid with the Pandora in it as it&#39;s well padded.<br />
<br />
I&#39;m not too keen on sending out those hard cases at all, they are very poor, and I don&#39;t want to give more business to that factory.
						
						<br />');
INSERT INTO posts VALUES(NULL,74,1,3,831678,'Seen The Carry Cases?','2010-03-24 23:59:15','http://www.gp32x.com/board/index.php?/topic/52652-seen-the-carry-cases/page__view__findpost__p__831678','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831675''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>rabidpoobear, on 24 March 2010 - 11:55 PM, said:</p><div class="blockquote"><div class=''quote''>Aww&#33;  it looks so cushy and cuddly&#33;<br />
Good thing I ordered one.<br />
<br />
Hmm, it doesn&#39;t seem like the TV-out cable has a place?  unless that top part is zippered and can contain stuff?</div></div><br />
<br />
Because the TV out cable is so long and that it has 4 TV connections and a Pandora connector it is actually pretty huge. I decided that the carry case should not have a space for it because, seriously, it would almost double the height of it.<br />
<br />
There is space for SD cards though. You can have 2 in the Pandora and 4+ in the top of the case.<br />
<br />
Another thing is when you look at the case with the Pandora in it it&#39;s pretty awesome to think there is basically a tiny laptop in there.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 25 March 2010 - 12:00 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,75,1,3,831608,'Peoples Thoughts On This Machine','2010-03-24 21:22:02','http://www.gp32x.com/board/index.php?/topic/52646-peoples-thoughts-on-this-machine/page__view__findpost__p__831608','^^^ Wow. Wow wow wow .
						
						<br />');
INSERT INTO posts VALUES(NULL,76,1,3,831492,'Today Is A Great Day&#33;(Hopefully)','2010-03-24 16:26:56','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__831492','They sent a list of all the parts to be shipped and a bill.<br />
<br />
No photos yet.
						
						<br />');
INSERT INTO posts VALUES(NULL,77,1,3,831489,'Mupen64Plus','2010-03-24 16:05:38','http://www.gp32x.com/board/index.php?/topic/49358-mupen64plus/page__view__findpost__p__831489','Ari, have you tried underclocking the N64 CPU to, say, half of what it is defaulting to (I know it defaults low anyway), to see if some games are still happy?<br />
<br />
You might not be one for hacks like that but I know some people like to make up lists of tweaks which work well on certain games.
						
						<br />');
INSERT INTO posts VALUES(NULL,78,1,3,831278,'Icontrolpad Updates&#33;','2010-03-23 23:18:46','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__831278','You are pretty much correct. It took a long time to work out the best way to do it, and I think we are as close to perfect as it could be right now.
						
						<br />');
INSERT INTO posts VALUES(NULL,79,1,3,831251,'Icontrolpad Updates&#33;','2010-03-23 22:15:45','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__831251','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831210''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>quote, on 23 March 2010 - 08:29 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831191''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 23 March 2010 - 07:54 PM, said:</p><div class="blockquote"><div class=''quote''>We plan to do clips for whatever devices have a demand.</div></div><br />
<br />
But Craig, to support a device other than one made by Apple, you&#39;ll have to redesign the whole iCP, not just add some clips to hold it.</div></div><br />
<br />
I don&#39;t quite understand what you mean? The clips are what holds it, the controller part will pair up to anything as long as it isn&#39;t too small, but even then the clips could be designed to accommodate.
						
						<br />');
INSERT INTO posts VALUES(NULL,80,1,3,831191,'Icontrolpad Updates&#33;','2010-03-23 19:54:57','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__831191','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=831171''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>torpor, on 23 March 2010 - 06:55 PM, said:</p><div class="blockquote"><div class=''quote''>I hope there will be clips for the Zii Egg ..</div></div><br />
<br />
We plan to do clips for whatever devices have a demand.
						
						<br />');
INSERT INTO posts VALUES(NULL,81,1,3,831189,'Today Is A Great Day&#33;(Hopefully)','2010-03-23 19:52:11','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__831189','We&#39;re told to expect photos and courier details tomorrow.
						
						<br />');
INSERT INTO posts VALUES(NULL,82,1,3,830811,'Today Is A Great Day&#33;(Hopefully)','2010-03-23 00:52:51','http://www.gp32x.com/board/index.php?/topic/52609-today-is-a-great-dayhopefully/page__view__findpost__p__830811','Thanks for sticking with us (including the thousands of you who read but never post).<br />
<br />
We&#39;re smashing our way though these final few hurdles (seems to be the only way though) and hope to have some fun next month building them and webcaming it.<br />
<br />
It&#39;s been a long time, but for you guys the fun will only just be starting from April.<br />
<br />
Just looking at the Pandora and thinking about the awesome stuff we will be able to do with it keeps me going. I&#39;m so happy we went with what, at the time, looked like an insane design.<br />
<br />
This-time-next-month. I hope at last that&#39;s going to be true.
						
						<br />');
INSERT INTO posts VALUES(NULL,83,1,3,830741,'Icontrolpad Updates&#33;','2010-03-22 21:15:04','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__830741','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=830683''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Exophase, on 22 March 2010 - 07:02 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=830638''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>quote, on 22 March 2010 - 06:02 PM, said:</p><div class="blockquote"><div class=''quote''>That&#39;s the design I&#39;ve been referring to throughout my posts, and it&#39;s the one Craig was talking about too :) .<br />
<br />
The interesting thing is, it&#39;s almost the same as the original iControlpad design. So I don&#39;t know why Craig thought his idea would work and theirs wouldn&#39;t :/.<br />
Edit: Zodttd even showed a video of the original iControlpad prototype working a while ago, I really don&#39;t know what Craig means here.</div></div><br />
<br />
Sorry, I thought craig&#39;s comments were directed towards the original Gamebone pictures - which they still very well may have been. I agree that I don&#39;t see why this design is impossible and iControlPad&#39;s isn&#39;t.</div></div><br />
<br />
Well we tried it (the original icontrolpad used that design) and it&#39;s a total mess.<br />
<br />
Just start to think about it - how do you hold the iphone in the design? How do you adjust for different iphones/touches? How do you get the signal from that dpad across the design to the serial port on the other side (2 PCBs? A ribbon Cable? A mess&#33;), where will they put the battery?<br />
<br />
The design does not work, if you forced it to it would be very expensive and assembly would also be expensive.<br />
<br />
Also it&#39;s huge, does not have room for nubs, the shoulders are probably not there due to the PCB issues of the layout.<br />
<br />
Etc. Etc.<br />
<br />
It&#39;s a fake. Just look at the render - the buttons don&#39;t even line up, no way that&#39;s a CAD image - oh and I&#39;d love to see the tooling costs of that design - you&#39;re looking at well over &#036;100,000.
						
						<br />');
INSERT INTO posts VALUES(NULL,84,1,3,830269,'Pandora Production In Scotland ?','2010-03-21 12:03:00','http://www.gp32x.com/board/index.php?/topic/52595-pandora-production-in-scotland/page__view__findpost__p__830269','Maybe PCB population, it&#39;s just something I&#39;m looking in to.
						
						<br />');
INSERT INTO posts VALUES(NULL,85,1,3,830209,'Emulation Benchmarks?','2010-03-21 02:36:20','http://www.gp32x.com/board/index.php?/topic/52439-emulation-benchmarks/page__view__findpost__p__830209','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=830205''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>MDave, on 21 March 2010 - 02:19 AM, said:</p><div class="blockquote"><div class=''quote''>I take it thats at 500MHz?</div></div><br />
<br />
Yes.
						
						<br />');
INSERT INTO posts VALUES(NULL,86,1,4,826334,'Official Blog- Keep It Going','2010-03-10 23:48:32','http://www.gp32x.com/board/index.php?/topic/52431-official-blog-keep-it-going/page__view__findpost__p__826334','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=826320''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>LuvClub, on 10 March 2010 - 05:03 PM, said:</p><div class="blockquote"><div class=''quote''>So what would have been the problem with sealing them in individual NSD bags and laying them in storage boxes with maybe some foam sheets in between them? I would imagine you could easily place 10x10 boards at the bottom of a 1metre sided box and then alternate 10 more lots and foam sheets on top of each other making 1000 in a box. Would 4 such 1metre cubed boxes really be such a problem to store? You could also chuck in a few bags of silica gel to control the humidity and seal the boxes airtight using some plastic sheeting.<br />
<br />
I don&#39;t really understand the problem at all.</div></div><br />
Look at all the steps you just made up to save a couple days of assembly time, not to mention all these static bags, boxes, foam sheets that need to be on hand.  Also not to mention the labor it would take to package this all up.<br />
<br />
EDIT: and then the labor to open it all back up so it could go through final testing before being packaged back up again to be sent to us in England.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: 10 March 2010 - 11:49 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,87,1,4,826256,'Official Blog- Keep It Going','2010-03-10 21:03:12','http://www.gp32x.com/board/index.php?/topic/52431-official-blog-keep-it-going/page__view__findpost__p__826256','I&#39;m assuming the testing process is going to be much like a train ride.  It chugs slowly out of the station and builds up speed before slowly getting to that final cruising speed.  They had to build more test jigs in Texas in order to test more boards simultaneously and that was only ordered recently after a very long and slow process of getting the procedure right (took longer than expected for reasons I won&#39;t get into).  Even though those thousand boards were built a while ago (whenever I mentioned it), testing them has been a slow process and as more test jigs get built and tested themselves (lots of soldering work and mechanical fitting of pieces, it&#39;s quite a complex rig), more human work stations can be set up to run the automated tests on them.<br />
<br />
Some of those first rev5 boards were being manually tested like they have done on prototype boards which involves typing in all commands manually and observing the results.  There&#39;s no way you would go through thousands and thousands that way but it had to be done so they could lose less time making sure their procedures were accurate and the boards were soldering properly.  As more test jigs are built, the process takes more of the human out of the equation.<br />
<br />
The idea is to automate as much as possible but a human still has to man the station and load the boards into the jig, run the software, plug in all the connectors, click Y to begin the test sequences, etc.  They are keeping their estimated yields low as they chug out of the station (ie. 500...then 500 more...then hopefully 1000, then another 1000, then the last 1000).<br />
<br />
ED tells you what we know today but that can change tomorrow.  The total time frame is not going to be known until it is basically all done.  ED has given the worst case but if we get things rolling smoothly, that time could start coming down more and more.  The part that is killing everyone is that if we just wanted to do a power on test of each board and ship them out, we could probably do all 4000 in a week (assuming cases arrive and man power is enough) but both the Pandora team and the assembler are not satisfied with such a thing and so every circuit on the board is being tested in an effort to shoot for a 0% RMA list after launch.  Imagine being that guy who finally gets his Pandora, tears open the box only to have to email support an hour later because a bunch of stuff won&#39;t work.  Nobody wants to be that person.  The trade off is time and a fair bit of it but if it means your Pandora runs solid for years instead of minutes, we&#39;ve got to do it.  There&#39;s just no other way.
						
						<br />');
INSERT INTO posts VALUES(NULL,88,1,4,826234,'L2 &#38; R2 Wiring','2010-03-10 20:39:33','http://www.gp32x.com/board/index.php?/topic/52437-l2-r2-wiring/page__view__findpost__p__826234','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=826196''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>SirisC, on 10 March 2010 - 01:26 PM, said:</p><div class="blockquote"><div class=''quote''>Would it cause problems if I wired the L2 and R2 buttons to a stereo jack with their negatives/grounds going over the same wire?  (Is there even enough room to fit an extra stereo jack in the case?)</div></div><br />
No problem doing three wires for the spare shoulder buttons by taking just one ground from the spare pads.  I know you aren&#39;t suggesting using the already present stereo jack as some people are mentioning here, but I will say that the ground on the headphone connector should not be used for a ground on digital signals such as these spare shoulders as it is an isolated ground around the audio circuitry before joining the main ground.<br />
<br />
I&#39;m not sure about finding room for a new jack but maybe you could creatively squeeze in a small 2.5mm jack somewhere.  The smaller the better.
						
						<br />');
INSERT INTO posts VALUES(NULL,89,1,4,825539,'Cebit Video','2010-03-08 21:57:33','http://www.gp32x.com/board/index.php?/topic/52403-cebit-video/page__view__findpost__p__825539','This is a video called the history of Open P and it&#39;s not just a list of bullshit that was done in the past.  It&#39;s a &#39;chronicalling&#39; of our rise... TO POWER&#33;&#33; :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,90,1,4,825261,'Hey What About A 6000Mah Battery','2010-03-08 03:01:25','http://www.gp32x.com/board/index.php?/topic/52393-hey-what-about-a-6000mah-battery/page__view__findpost__p__825261','I have a PSP battery I bought on Ebay that says 3600mAh on the cover.  I pulled it apart and found the datasheet for the battery on the internet.  It was actually 1350mAh or around there.  It sucked and it would just shut off when it got near low instead of allowing the PSP to warn the user that it was almost dead.<br />
<br />
Has anyone pointed out that the battery from the first post is 7.2V which would fry Pandora to a non-functioning crisp?<br />
<br />
Also, the Pandora battery was carefully designed to both fit the case properly and have all kinds of protection trip points to make sure you don&#39;t get hurt.  I&#39;d stick to the USB OTG port or DC adapter port for extended battery life using a supply that sticks very close to 5V.<br />
<br />
If you even need it...this thing runs all week for me with random testing and listening to music with the lid down.  Maybe for a long flight or something but it&#39;s quite impressive as is, in my opinion.
						
						<br />');
INSERT INTO posts VALUES(NULL,91,1,4,825259,'Whats Going On&#33;','2010-03-08 02:46:26','http://www.gp32x.com/board/index.php?/topic/52384-whats-going-on/page__view__findpost__p__825259','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=825245''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>kingoddball, on 07 March 2010 - 07:51 PM, said:</p><div class="blockquote"><div class=''quote''>It seems odd that they are asking for more when they should have saved more by not using Texas for manufacturing. Correct or Incorrect?</div></div><br />
Actually the cost of populating the bare boards and testing them is now more expensive than talks I had with them dating back to spring 2008 when they were verbally agreeing to pricing we were budgeting for the entire build.  Basically, doing it ourselves is only preventing us from sinking into a deeper hole on these first couple of batches.<br />
<br />
The first batch is going to be the most expensive and we should be able to get the price down a bit for future batches.  There were a lot of setup costs and learning processes, plus some manual efforts that we can&#39;t automate until the next batch.  Still, it will never be as cheap as discussions from two years ago and we don&#39;t have the manpower to move assembly to China without wading through a possible disaster as the supervision required would probably out weigh the cost of still doing our small batches in the US (boards) and England (cases).
						
						<br />');
INSERT INTO posts VALUES(NULL,92,1,4,824634,'Pic: Battery Monitor Analysis','2010-03-06 07:58:28','http://www.gp32x.com/board/index.php?/topic/52375-pic-battery-monitor-analysis/page__view__findpost__p__824634','There is a register in the fuel gauge where you can put a number in to represent what you think the system will use at its peak.  The idea is that software can check the time remaining under maximum load to see if it should cut the system off early because if you were to suddenly need that extra current, the battery would be too low to do it and data corruption could occur.  Since Pandora can be running at less than 300mA or need 1.5A if you were driving everything all out, this register isn&#39;t all that useful.  It&#39;s more for devices with no chance of jumping around much.  The battery warning would trip way too early if it was expecting 5x the current at any moment.<br />
<br />
Since there is no real way to know what the ideal value would be other than to put some crazy high number in there (ie: the USB host was being maxed out), I just put some value in that seemed like a good number under hard gaming only.  It was probably 600mA based on the readings but I don&#39;t remember right now.  It doesn&#39;t do anything if you don&#39;t write software to need it (which we don&#39;t) and it can be reprogrammed at any time since we don&#39;t seal the gauge for read only.<br />
<br />
The most accurate reading based on all my testing is the &quot;TimeToEmptyAtConstantPower&quot; and 12 hours is pretty cool although it dips down to 10ish when playing Hexen 2 (my new favorite) or something using 3D.
						
						<br />');
INSERT INTO posts VALUES(NULL,93,1,4,823053,'When The Pandora Cums','2010-03-03 03:20:26','http://www.gp32x.com/board/index.php?/topic/52316-when-the-pandora-cums/page__view__findpost__p__823053','Well then, prepare to be disappointed.  These cases will not have a silkscreen as that would push delivery out into April and even then Craig worried they would screw it up and stiff us with the cases.  The problem is the mold company outsources the work and so they all have to be packaged up carefully, sent to this other company, printed, repackaged carefully and sent back to the mold company to be shipped to Craig with everything else.  It could cause as much as another month of delays with the way we should trust them.<br />
<br />
I built a unit using a silk screened case and I really liked it but the truth is, 10 minutes after using it, the silkscreen is forgotten and you don&#39;t even notice it anymore.  The way you normally hold it in the 170 degree open position means you can&#39;t see any of it anyway.  The LEDs are also color coded so maybe that helps too.  The sticker under the battery with serial number and model number also has all the voltage and current details for the unit so in a way, not having that on the back is covered.  I don&#39;t know if any of this is comforting but it&#39;s an unfortunate result of a product that can&#39;t afford more delays.
						
						<br />');
INSERT INTO posts VALUES(NULL,94,1,4,821075,'Eds Status On The Pandora Os - Disheartening','2010-02-26 18:34:57','http://www.gp32x.com/board/index.php?/topic/52209-eds-status-on-the-pandora-os-disheartening/page__view__findpost__p__821075','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=821054''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>emil10001, on 26 February 2010 - 11:35 AM, said:</p><div class="blockquote"><div class=''quote''>There&#39;s a quote in the quote thread from MWeston saying that the wifi chip can deliver 4Mbps and the OMAP3 can handle 3Mbps max.</div></div><br />
BT is 3Mbps.  Wifi is 96Mbps.
						
						<br />');
INSERT INTO posts VALUES(NULL,95,1,4,819988,'Eds Status On The Pandora Os - Disheartening','2010-02-24 22:03:00','http://www.gp32x.com/board/index.php?/topic/52209-eds-status-on-the-pandora-os-disheartening/page__view__findpost__p__819988','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=819979''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>urjaman, on 24 February 2010 - 03:43 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=819973''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mali, on 24 February 2010 - 11:36 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>- integrated Bluetooth 2.0 + EDR (3Mbps) (Class 2, + 4dBm)</div></div></div></div><br />
Oh, openpandora.ca (I checked the .org site because i thought i had seen it somewhere..) So, we have an UART set at how high baud rate? (atleast 3Mbps?).</div></div><br />
The BRF6300 chip allows up to 4Mbps transfers but OMAP3 unfortunately only goes to 3Mbps so that is the rate.  There is also a McBSP port connected to the BT chip but Notaz didn&#39;t have any luck streaming audio across it.  The BlueZ driver has changed a lot since then but no one has gone back to try again as far as I know.<br />
<br />
BTW, I tried BT last week on a recent image.  My laptop found it and I tried to connect.  I got a message on the Pandora LCD that my computer was trying to access it so I chose to allow it.  My laptop then asked for a passcode so I typed 0000 which is the only default one I know.  Pandora didn&#39;t like that code and shut down the link and my laptop told me it was denied.  That&#39;s as close as I got to testing it but I probably just don&#39;t know what I&#39;m doing.
						
						<br />');
INSERT INTO posts VALUES(NULL,96,1,4,819945,'Eds Status On The Pandora Os - Disheartening','2010-02-24 21:04:07','http://www.gp32x.com/board/index.php?/topic/52209-eds-status-on-the-pandora-os-disheartening/page__view__findpost__p__819945','The speed is about 50KB/s (400kb/s) which is slow but the real problem is that the driver loses packets constantly which means even loading a simple page like Google can be a chore.  I&#39;ve loaded the GP32X page successfully but then trying to click into a topic would stall forever and I&#39;d just give up.<br />
<br />
My understanding is that the kernel needs to move to a newer version where a better SDIO driver exists and access to an IRQ driver so that data won&#39;t get lost.  DJWillis also tells me he is trying to backpedal that code into the kernel we have now in order to get it working better.  He&#39;s also the guy building in new GL drivers and bug fixes and PND fixes and all this other stuff so it&#39;s a lengthy process.
						
						<br />');
INSERT INTO posts VALUES(NULL,97,1,4,819940,'New Blog Post','2010-02-24 20:54:17','http://www.gp32x.com/board/index.php?/topic/52204-new-blog-post/page__view__findpost__p__819940','Some of you people need to stop shitting on the devs who have actually stuck around this project for two years taking time away from their wives, girlfriends and families to help out, not to mention any relaxation time away from their full time day jobs.  All for free and for a few dev boards to play with...<br />
<br />
There are accelerated media players in existence for OMAP3 already but I believe they use the DSP which is another major task of coding that hasn&#39;t been a priority.  Once other things are stable and more customers who want to code get their units, perhaps these things will happen quickly.
						
						<br />');
INSERT INTO posts VALUES(NULL,98,1,4,812131,'When Will Second Batch Happen?','2010-02-11 21:50:21','http://www.gp32x.com/board/index.php?/topic/51932-when-will-second-batch-happen/page__view__findpost__p__812131','The current plan is to have the second batch of parts delivered in May.  We shall see if they all arrive but that is only an estimate and not something to quote for truth. ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,99,1,4,810339,'Spoke To The Factory','2010-02-08 17:49:07','http://www.gp32x.com/board/index.php?/topic/51852-spoke-to-the-factory/page__view__findpost__p__810339','Nintendo can afford to make 10k cases just to look at how they will be.  Then if they aren&#39;t good enough, their executives can use them as caviar plates during their next business meeting. :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,100,1,4,810315,'Spoke To The Factory','2010-02-08 17:37:27','http://www.gp32x.com/board/index.php?/topic/51852-spoke-to-the-factory/page__view__findpost__p__810315','Late to the party as always but yay on the green light&#33;&#33; :D <br />
<br />
Fatih had some other good stuff to say that makes a more technically concerned person like myself happy:<br />
<br />
&quot;He told me that this is just a sample to see the changes. All those scratches, marks, discolored parts, rough edges and plastic overflows will not exist in final production. I asked the reason for these as well and how will they disappear during production. He told me that during production a water cooling system will be set up to avoid these problems. He told me that because the workers was in a hurry they dripped those coating and made rough edges etc. According to him there won&#39;t be any problems during production because they have a ISO standard quality control procedure.&quot;
						
						<br />');
INSERT INTO posts VALUES(NULL,101,1,4,809466,'Here Is What Will Be Happening.','2010-02-07 10:07:24','http://www.gp32x.com/board/index.php?/topic/51815-here-is-what-will-be-happening/page__view__findpost__p__809466','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=809436''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Madcad77, on 07 February 2010 - 02:36 AM, said:</p><div class="blockquote"><div class=''quote''>From what I have seen of these new mouldings, your moulding company needs to run a small batch to validate thier parameters, things like mould temperature, injection pressures, cycle times etc. <br />
<br />
These coupled with venting added in the correct positions (tiny modifications 1- 2 days max) will sort out your sinkages, short fills etc.<br />
<br />
The greasy finish you mention is most probably due to excessive release agent used when running the mould for the first time (reduces the risk of the moulding sticking in the tool). <br />
<br />
I have been designing plastic components for over 10 years now, and alot of your issues with Chinese moulding companies are well known, regardless which company you chose over there, they just work diferently to us.<br />
<br />
I am very optimistic though, when these parts are run to the correct production processes, perhaps with extra venting, your cosmetic issues will be resolved.</div></div><br />
Thanks Madcad77.  I tend to agree with you here since there has to be a reason for the way things are.  I&#39;m still up assembling units as I&#39;ve made some promises for the week and I am noticing that several of the parts feel like they are almost dripping with grease (release agent).  I even started wiping a few off.  These came right out of the mold and into the shipping box.
						
						<br />');
INSERT INTO posts VALUES(NULL,102,1,4,809389,'A Personal Opinion About The Case (Moulding)','2010-02-07 05:40:30','http://www.gp32x.com/board/index.php?/topic/51826-a-personal-opinion-about-the-case-moulding/page__st__15','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=809380''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>SONY, on 06 February 2010 - 11:21 PM, said:</p><div class="blockquote"><div class=''quote''>Michael, why don&#39;t you go over to China and start puching heads in?</div></div><br />
First, I don&#39;t speak Chinese.  I&#39;m pretty sure the international language is love and not face smashing.  What a pity ;) <br />
<br />
Second, I can&#39;t afford it and I don&#39;t think it will help.  Fatih has better access and capabilities to travel there, but he now has a liaison to deal with this company for us and that is where we are at right now.  They take my detailed reports and pictures and get it communicated to this company.  I hope we get some real answers on Monday.
						
						<br />');
INSERT INTO posts VALUES(NULL,103,1,4,809388,'Here Is What Will Be Happening.','2010-02-07 05:35:48','http://www.gp32x.com/board/index.php?/topic/51815-here-is-what-will-be-happening/page__st__405','TI has had nothing to do with the case, boards or anything.  They gave us some parts to start off with and offered a bit of support.<br />
<br />
The clear cases were made by the same company making the molds.<br />
<br />
Also, it is still early to start jumping on the panic bandwagon.  A day has passed over a weekend when no one can get answers.  Let&#39;s not start 50 more topics with this kind of talk.  Craig&#39;s plan hasn&#39;t changed one bit yet and we are still seeing what can be made next week and how long it will take.
						
						<br />');
INSERT INTO posts VALUES(NULL,104,1,4,809378,'A Personal Opinion About The Case (Moulding)','2010-02-07 05:16:28','http://www.gp32x.com/board/index.php?/topic/51826-a-personal-opinion-about-the-case-moulding/page__view__findpost__p__809378','It&#39;s definitely a bad batch which is the insulting part, especially when this problem wasn&#39;t present on the past cases.  It&#39;s always X steps forward, Y steps back.  I don&#39;t know what those values are yet. :) <br />
<br />
We don&#39;t have a choice about going with them.  We are a year and a half in with this company (going back to CNC/SLA prototypes), they have a ton of our money and if we said we were starting all the molds over with another company, everybody would try to cancel their order and OpenPandora Ltd. would declare bankruptcy.  For the past five months we&#39;ve just been hoping that the next leap was the leap home. :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,105,1,4,809373,'A Personal Opinion About The Case (Moulding)','2010-02-07 05:03:36','http://www.gp32x.com/board/index.php?/topic/51826-a-personal-opinion-about-the-case-moulding/page__view__findpost__p__809373','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=809370''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>DroneB Dev, on 06 February 2010 - 10:54 PM, said:</p><div class="blockquote"><div class=''quote''>so it is a crack and not an wave mark?.<br />
<br />
im afraid we are facing some serious cooling issues.<br />
<br />
btw really if i wish i could help anyway, maybe some info thru direct skype msn qq by voice?<br />
<br />
if youre really considering this please mail me or thru boards PM</div></div><br />
Along the edge it looks like the plastic cracked off when being ejected and it happens in the same spot on all cases.  The holes are from the mechanical tooling blocks that slide in to make the little channels the clips sit inside.  They seem to be going too deep and there is almost no plastic left behind them and it collects around the edge while it cools.  I don&#39;t want to post a million pictures of damaging photos on my Photobucket account but a view from the inside shows the pattern in the plastic these blocks leave in the lid and behind this rounded wall.  I read your comments and I agree that the machine used this time around (or the regular guy was out sick?) did not line up the blocks properly or whatever mechanical error could be made.
						
						<br />');
INSERT INTO posts VALUES(NULL,106,1,4,809367,'A Personal Opinion About The Case (Moulding)','2010-02-07 04:50:25','http://www.gp32x.com/board/index.php?/topic/51826-a-personal-opinion-about-the-case-moulding/','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=809327''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Phawx, on 06 February 2010 - 10:02 PM, said:</p><div class="blockquote"><div class=''quote''>I have a question.  MWeston said he got seven cases.  Do all seven cases have the same crack on the hinge?</div></div><br />
yes
						
						<br />');
INSERT INTO posts VALUES(NULL,107,1,4,809276,'The Cases Are Fine: Ship&#33;','2010-02-07 02:26:07','http://www.gp32x.com/board/index.php?/topic/51822-the-cases-are-fine-ship/page__view__findpost__p__809276','I too am hoping that doing a small run like this is nothing like setting up to do thousands as I have commented in the big post.  They sent me seven cases.  Maybe they made 12-15 cases and these were the best of them.  From all I have read in my google searches, firing up the machines to only pump out cases, even in the dozens, cannot be considered reliable as the machines barely get up to temperature and proper mix rate...or something like that.  I don&#39;t know enough since I have never worked for a plastics company.  I do know that when they finally get around to making our test cases it is when they have scheduled machine time for us so it isn&#39;t likely they will wait hours for the machines to pump out perfect cases only meant for testing when they have bigger, more important (to them anyway) customers lined up next in the queue.<br />
<br />
To those few who say they work with or at molding companies, I welcome your opinions.  I think you get some heat for being so critically negative rather than just offering objective opinions.<br />
<br />
Isn&#39;t it ironic that the cases arriving on time Friday afternoon is turning out to be worse than if they were delayed until Monday because now we have to wait two days for an answer? :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,108,1,4,809027,'Here Is What Will Be Happening.','2010-02-06 18:47:30','http://www.gp32x.com/board/index.php?/topic/51815-here-is-what-will-be-happening/page__st__255','Well I made it through 17 pages of this topic now so I should post a few comments.<br />
<br />
First, I am not looking for perfection.  That is an infinite process but there is such thing as a standard quality that any commercial device should meet.  I spent so much time perfecting the guts of this thing and it is a true insult to my efforts to see this mold company send me such incomplete samples and call them &#39;final&#39;.  We will find out what level of purity the plastic was that made these cases.  Maybe they know production plastic won&#39;t be swirled and greasy and so when they said we would be happy with these, they expected that we understood that.  Communication is a tough one when they refuse to hold conversations for more than three minutes at a time.  Don&#39;t ask me why they didn&#39;t put the silk screening on these parts because I was explicitly told they would have them.  More lies.<br />
<br />
There were a few more internal modifications for rev3 but most of the important ones came from the rev2 samples.  A couple of changes for rev3 that I am happy about are a tighter fit on the screws which makes them feel more secure and closing up the nub surround so that the PCB isn&#39;t visible around the nub under certain lighting conditions.  It also looks like they closed up a small gap in the lid that let a bit of backlight light shine through the front.  The LCD cable slot took a step backwards with a bit of unevenness but since it was right last time, we can assume that more carefully made production parts will be back to normal.<br />
<br />
The cases are still very solid.  You can try to twist and bend them but they don&#39;t flex much.  It will feel like a very solid device in your hands and functionally, everything works exactly as we want.  The gaming controls are perfect.  The keyboard is perfect and there has never been an issue with buttons getting stuck in the case or anything like that.  The problems now are cosmetic.  There are rough edges around the connectors, around the edges of that recessed channel in the front the SD cards, volume wheel, etc. and some on the edge of the base parts where the two halves go together.  There are some sink marks too which might hide a bit better with a full, proper matte finish but they&#39;re there.<br />
<br />
As some people have pointed out, a picture can say more than any amazing piece of software ever will and a reviewer crapping all over the case quality could spoil it for anyone considering the Pandora.  I&#39;m one of those people really.  These cases aren&#39;t a disaster but I would want something to show off to my friends and having to explain the colored patches and rough edges is a little defeating.<br />
<br />
Some pictures are posted on my photobucket and I&#39;m not too sure making a video will show better quality.  I will probably still make one anyway but unless I can really master the lighting, my 640x480 videos won&#39;t help you know if I&#39;m holding a rev1, 2 or 3 case.<br />
<br />
EDIT: Two more pages were written since typing this.  Ah yes, the hinge area.  There are clips in that area that hold the two halves tightly together and they screwed up somehow.  On this revision, the recessed spots for the clips to sit in got completely evacuated and there are holes right through the case.  They didn&#39;t do this on rev2.  Rev2 just had roughness on the bottom edges of these parts and not the destruction of the clip channels like this time.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: 06 February 2010 - 06:54 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,109,1,4,808624,'Here Is What Will Be Happening.','2010-02-06 02:47:43','http://www.gp32x.com/board/index.php?/topic/51815-here-is-what-will-be-happening/page__view__findpost__p__808624','These cases are like the ugly girlfriend who does all the dirty stuff you like but someone you don&#39;t want your friends to see.<br />
<br />
The case fits, is totally functional and sturdy but it looks like the rev2 ones.  I don&#39;t know what the hell they were doing the past two months.  Seriously.<br />
<br />
I&#39;m also trying to find out if these were made from recycled plastic or new pellets.  Maybe that is why it still has rough edges and a greasy finish and a production run will be done differently.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: 06 February 2010 - 02:50 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,110,1,4,808308,'All Good Things...','2010-02-05 19:46:56','http://www.gp32x.com/board/index.php?/topic/51793-all-good-things/page__view__findpost__p__808308','The major part of making cases isn&#39;t necessarily molding the parts, but carefully packaging up the parts for shipping.  Final parts don&#39;t get shipped like samples do which is crammed into plastic bags inside one big box.  Regardless of how many cases can be made next week, the limitation is on how many can be safely packaged and shipped.  That is why Craig wants to pick a reasonable number to ship before the CNY.
						
						<br />');
INSERT INTO posts VALUES(NULL,111,3,2,'http://twitter.com/EvilDragon1717/statuses/11214718366','EvilDragon1717: I haven''t seen Fatih online this weekend, so I cannot even confirm or deny if the cases have been shipped... please be a bit more patient.','2010-03-28 21:58:45','http://twitter.com/EvilDragon1717/statuses/11214718366','EvilDragon1717: I haven''t seen Fatih online this weekend, so I cannot even confirm or deny if the cases have been shipped... please be a bit more patient.');
INSERT INTO posts VALUES(NULL,112,3,2,'http://twitter.com/EvilDragon1717/statuses/11214684178','EvilDragon1717: It might take a few days until I can put that post online. I don''t want any speculations so I first want to make sure everything is correct.','2010-03-28 21:57:50','http://twitter.com/EvilDragon1717/statuses/11214684178','EvilDragon1717: It might take a few days until I can put that post online. I don''t want any speculations so I first want to make sure everything is correct.');
INSERT INTO posts VALUES(NULL,113,3,2,'http://twitter.com/EvilDragon1717/statuses/11214641198','EvilDragon1717: I wrote together a blog post today, but need to confirm some stuff from the other guys (I think they also need to find out some things).','2010-03-28 21:56:42','http://twitter.com/EvilDragon1717/statuses/11214641198','EvilDragon1717: I wrote together a blog post today, but need to confirm some stuff from the other guys (I think they also need to find out some things).');
INSERT INTO posts VALUES(NULL,114,3,2,'http://twitter.com/EvilDragon1717/statuses/11214600013','EvilDragon1717: Wow, 11 days no tweet? I really had a lot of work to do... I have a recovered a bit during these weekends, finally feeling alive again.','2010-03-28 21:55:37','http://twitter.com/EvilDragon1717/statuses/11214600013','EvilDragon1717: Wow, 11 days no tweet? I really had a lot of work to do... I have a recovered a bit during these weekends, finally feeling alive again.');
INSERT INTO posts VALUES(NULL,115,3,2,'http://twitter.com/EvilDragon1717/statuses/10603805673','EvilDragon1717: Pheww, we all did a lot of WiFi stuff during the last days. Slowly narrowing the problem. And I just packaged up Exaile as PND. Nice player.','2010-03-17 03:37:15','http://twitter.com/EvilDragon1717/statuses/10603805673','EvilDragon1717: Pheww, we all did a lot of WiFi stuff during the last days. Slowly narrowing the problem. And I just packaged up Exaile as PND. Nice player.');
INSERT INTO posts VALUES(NULL,116,3,2,'http://twitter.com/EvilDragon1717/statuses/10371669321','EvilDragon1717: Pictures posted. In the blog :)','2010-03-12 13:31:12','http://twitter.com/EvilDragon1717/statuses/10371669321','EvilDragon1717: Pictures posted. In the blog :)');
INSERT INTO posts VALUES(NULL,117,3,2,'http://twitter.com/EvilDragon1717/statuses/10370454101','EvilDragon1717: Expect some pictures today... :)','2010-03-12 12:57:30','http://twitter.com/EvilDragon1717/statuses/10370454101','EvilDragon1717: Expect some pictures today... :)');
INSERT INTO posts VALUES(NULL,118,3,2,'http://twitter.com/EvilDragon1717/statuses/10240228507','EvilDragon1717: That was pure WiFi speed though. There are probably still packet losses and encryption slows it down a lot. And encryption slows down a lot.','2010-03-09 22:09:45','http://twitter.com/EvilDragon1717/statuses/10240228507','EvilDragon1717: That was pure WiFi speed though. There are probably still packet losses and encryption slows it down a lot. And encryption slows down a lot.');
INSERT INTO posts VALUES(NULL,119,3,2,'http://twitter.com/EvilDragon1717/statuses/10239759881','EvilDragon1717: notaz just managed to get solid 50kB/s WiFi connection on the Pandora! And I managed to connect my Pandora via Bluetooth PAN to my mobile :)','2010-03-09 21:57:59','http://twitter.com/EvilDragon1717/statuses/10239759881','EvilDragon1717: notaz just managed to get solid 50kB/s WiFi connection on the Pandora! And I managed to connect my Pandora via Bluetooth PAN to my mobile :)');
INSERT INTO posts VALUES(NULL,120,3,2,'http://twitter.com/EvilDragon1717/statuses/10204948637','EvilDragon1717: So little time - so much to do... already 5am AGAIN. Geez. Hopefully I find time to post a more detailed road map in the blog tomorrow.','2010-03-09 04:11:02','http://twitter.com/EvilDragon1717/statuses/10204948637','EvilDragon1717: So little time - so much to do... already 5am AGAIN. Geez. Hopefully I find time to post a more detailed road map in the blog tomorrow.');
INSERT INTO posts VALUES(NULL,121,3,2,'http://twitter.com/EvilDragon1717/statuses/10198536246','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/2XODitEQq9E?a','2010-03-09 01:34:29','http://twitter.com/EvilDragon1717/statuses/10198536246','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/2XODitEQq9E?a');
INSERT INTO posts VALUES(NULL,122,3,2,'http://twitter.com/EvilDragon1717/statuses/10197222814','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Dtx7AG7PSa4?a','2010-03-09 01:03:03','http://twitter.com/EvilDragon1717/statuses/10197222814','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Dtx7AG7PSa4?a');
INSERT INTO posts VALUES(NULL,123,3,2,'http://twitter.com/EvilDragon1717/statuses/10196833350','EvilDragon1717: Pheeew. Uploaded the rest of the three videos of my CeBIT Talk to YouTube. Should go live soon. Anyone want to do English subtitles? ;)','2010-03-09 00:53:45','http://twitter.com/EvilDragon1717/statuses/10196833350','EvilDragon1717: Pheeew. Uploaded the rest of the three videos of my CeBIT Talk to YouTube. Should go live soon. Anyone want to do English subtitles? ;)');
INSERT INTO posts VALUES(NULL,124,3,2,'http://twitter.com/EvilDragon1717/statuses/10196724835','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/AyZBpMiz1hw?a','2010-03-09 00:51:05','http://twitter.com/EvilDragon1717/statuses/10196724835','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/AyZBpMiz1hw?a');
INSERT INTO posts VALUES(NULL,125,3,2,'http://twitter.com/EvilDragon1717/statuses/10194610148','EvilDragon1717: Nice, just saw on http://www.pygame.org/news.html that they did post the Pandora video where I do live pygame editing :) Cool thing.','2010-03-08 23:59:28','http://twitter.com/EvilDragon1717/statuses/10194610148','EvilDragon1717: Nice, just saw on http://www.pygame.org/news.html that they did post the Pandora video where I do live pygame editing :) Cool thing.');
INSERT INTO posts VALUES(NULL,126,3,2,'http://twitter.com/EvilDragon1717/statuses/10194579128','EvilDragon1717: Whoot. Has been busy days. I''m currently trying to get all the work done. Package WIZ, flash Dingoos, upload all the videos, do Bughunting..','2010-03-08 23:58:42','http://twitter.com/EvilDragon1717/statuses/10194579128','EvilDragon1717: Whoot. Has been busy days. I''m currently trying to get all the work done. Package WIZ, flash Dingoos, upload all the videos, do Bughunting..');
INSERT INTO posts VALUES(NULL,127,3,2,'http://twitter.com/EvilDragon1717/statuses/10188658183','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/ymMZpcjravg?a','2010-03-08 21:27:22','http://twitter.com/EvilDragon1717/statuses/10188658183','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/ymMZpcjravg?a');
INSERT INTO posts VALUES(NULL,128,3,2,'http://twitter.com/EvilDragon1717/statuses/10187604464','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/mW4aJEkF-W8?a','2010-03-08 20:58:57','http://twitter.com/EvilDragon1717/statuses/10187604464','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/mW4aJEkF-W8?a');
INSERT INTO posts VALUES(NULL,129,3,2,'http://twitter.com/EvilDragon1717/statuses/10187320977','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Q2R2N1pJ6q4?a','2010-03-08 20:51:07','http://twitter.com/EvilDragon1717/statuses/10187320977','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Q2R2N1pJ6q4?a');
INSERT INTO posts VALUES(NULL,130,3,2,'http://twitter.com/EvilDragon1717/statuses/9929107914','EvilDragon1717: I uploaded a YouTube video -- Pandora: Surfing the web, doing some messenging and eMailing http://youtu.be/1QUDH-Ii8Cc?a','2010-03-03 15:47:12','http://twitter.com/EvilDragon1717/statuses/9929107914','EvilDragon1717: I uploaded a YouTube video -- Pandora: Surfing the web, doing some messenging and eMailing http://youtu.be/1QUDH-Ii8Cc?a');
INSERT INTO posts VALUES(NULL,131,3,3,'http://twitter.com/EvilDragon1717/statuses/11214718366','EvilDragon1717: I haven''t seen Fatih online this weekend, so I cannot even confirm or deny if the cases have been shipped... please be a bit more patient.','2010-03-28 21:58:45','http://twitter.com/EvilDragon1717/statuses/11214718366','EvilDragon1717: I haven''t seen Fatih online this weekend, so I cannot even confirm or deny if the cases have been shipped... please be a bit more patient.');
INSERT INTO posts VALUES(NULL,132,3,3,'http://twitter.com/EvilDragon1717/statuses/11214684178','EvilDragon1717: It might take a few days until I can put that post online. I don''t want any speculations so I first want to make sure everything is correct.','2010-03-28 21:57:50','http://twitter.com/EvilDragon1717/statuses/11214684178','EvilDragon1717: It might take a few days until I can put that post online. I don''t want any speculations so I first want to make sure everything is correct.');
INSERT INTO posts VALUES(NULL,133,3,3,'http://twitter.com/EvilDragon1717/statuses/11214641198','EvilDragon1717: I wrote together a blog post today, but need to confirm some stuff from the other guys (I think they also need to find out some things).','2010-03-28 21:56:42','http://twitter.com/EvilDragon1717/statuses/11214641198','EvilDragon1717: I wrote together a blog post today, but need to confirm some stuff from the other guys (I think they also need to find out some things).');
INSERT INTO posts VALUES(NULL,134,3,3,'http://twitter.com/EvilDragon1717/statuses/11214600013','EvilDragon1717: Wow, 11 days no tweet? I really had a lot of work to do... I have a recovered a bit during these weekends, finally feeling alive again.','2010-03-28 21:55:37','http://twitter.com/EvilDragon1717/statuses/11214600013','EvilDragon1717: Wow, 11 days no tweet? I really had a lot of work to do... I have a recovered a bit during these weekends, finally feeling alive again.');
INSERT INTO posts VALUES(NULL,135,3,3,'http://twitter.com/EvilDragon1717/statuses/10603805673','EvilDragon1717: Pheww, we all did a lot of WiFi stuff during the last days. Slowly narrowing the problem. And I just packaged up Exaile as PND. Nice player.','2010-03-17 03:37:15','http://twitter.com/EvilDragon1717/statuses/10603805673','EvilDragon1717: Pheww, we all did a lot of WiFi stuff during the last days. Slowly narrowing the problem. And I just packaged up Exaile as PND. Nice player.');
INSERT INTO posts VALUES(NULL,136,3,3,'http://twitter.com/EvilDragon1717/statuses/10371669321','EvilDragon1717: Pictures posted. In the blog :)','2010-03-12 13:31:12','http://twitter.com/EvilDragon1717/statuses/10371669321','EvilDragon1717: Pictures posted. In the blog :)');
INSERT INTO posts VALUES(NULL,137,3,3,'http://twitter.com/EvilDragon1717/statuses/10370454101','EvilDragon1717: Expect some pictures today... :)','2010-03-12 12:57:30','http://twitter.com/EvilDragon1717/statuses/10370454101','EvilDragon1717: Expect some pictures today... :)');
INSERT INTO posts VALUES(NULL,138,3,3,'http://twitter.com/EvilDragon1717/statuses/10240228507','EvilDragon1717: That was pure WiFi speed though. There are probably still packet losses and encryption slows it down a lot. And encryption slows down a lot.','2010-03-09 22:09:45','http://twitter.com/EvilDragon1717/statuses/10240228507','EvilDragon1717: That was pure WiFi speed though. There are probably still packet losses and encryption slows it down a lot. And encryption slows down a lot.');
INSERT INTO posts VALUES(NULL,139,3,3,'http://twitter.com/EvilDragon1717/statuses/10239759881','EvilDragon1717: notaz just managed to get solid 50kB/s WiFi connection on the Pandora! And I managed to connect my Pandora via Bluetooth PAN to my mobile :)','2010-03-09 21:57:59','http://twitter.com/EvilDragon1717/statuses/10239759881','EvilDragon1717: notaz just managed to get solid 50kB/s WiFi connection on the Pandora! And I managed to connect my Pandora via Bluetooth PAN to my mobile :)');
INSERT INTO posts VALUES(NULL,140,3,3,'http://twitter.com/EvilDragon1717/statuses/10204948637','EvilDragon1717: So little time - so much to do... already 5am AGAIN. Geez. Hopefully I find time to post a more detailed road map in the blog tomorrow.','2010-03-09 04:11:02','http://twitter.com/EvilDragon1717/statuses/10204948637','EvilDragon1717: So little time - so much to do... already 5am AGAIN. Geez. Hopefully I find time to post a more detailed road map in the blog tomorrow.');
INSERT INTO posts VALUES(NULL,141,3,3,'http://twitter.com/EvilDragon1717/statuses/10198536246','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/2XODitEQq9E?a','2010-03-09 01:34:29','http://twitter.com/EvilDragon1717/statuses/10198536246','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/2XODitEQq9E?a');
INSERT INTO posts VALUES(NULL,142,3,3,'http://twitter.com/EvilDragon1717/statuses/10197222814','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Dtx7AG7PSa4?a','2010-03-09 01:03:03','http://twitter.com/EvilDragon1717/statuses/10197222814','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Dtx7AG7PSa4?a');
INSERT INTO posts VALUES(NULL,143,3,3,'http://twitter.com/EvilDragon1717/statuses/10196833350','EvilDragon1717: Pheeew. Uploaded the rest of the three videos of my CeBIT Talk to YouTube. Should go live soon. Anyone want to do English subtitles? ;)','2010-03-09 00:53:45','http://twitter.com/EvilDragon1717/statuses/10196833350','EvilDragon1717: Pheeew. Uploaded the rest of the three videos of my CeBIT Talk to YouTube. Should go live soon. Anyone want to do English subtitles? ;)');
INSERT INTO posts VALUES(NULL,144,3,3,'http://twitter.com/EvilDragon1717/statuses/10196724835','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/AyZBpMiz1hw?a','2010-03-09 00:51:05','http://twitter.com/EvilDragon1717/statuses/10196724835','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/AyZBpMiz1hw?a');
INSERT INTO posts VALUES(NULL,145,3,3,'http://twitter.com/EvilDragon1717/statuses/10194610148','EvilDragon1717: Nice, just saw on http://www.pygame.org/news.html that they did post the Pandora video where I do live pygame editing :) Cool thing.','2010-03-08 23:59:28','http://twitter.com/EvilDragon1717/statuses/10194610148','EvilDragon1717: Nice, just saw on http://www.pygame.org/news.html that they did post the Pandora video where I do live pygame editing :) Cool thing.');
INSERT INTO posts VALUES(NULL,146,3,3,'http://twitter.com/EvilDragon1717/statuses/10194579128','EvilDragon1717: Whoot. Has been busy days. I''m currently trying to get all the work done. Package WIZ, flash Dingoos, upload all the videos, do Bughunting..','2010-03-08 23:58:42','http://twitter.com/EvilDragon1717/statuses/10194579128','EvilDragon1717: Whoot. Has been busy days. I''m currently trying to get all the work done. Package WIZ, flash Dingoos, upload all the videos, do Bughunting..');
INSERT INTO posts VALUES(NULL,147,3,3,'http://twitter.com/EvilDragon1717/statuses/10188658183','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/ymMZpcjravg?a','2010-03-08 21:27:22','http://twitter.com/EvilDragon1717/statuses/10188658183','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/ymMZpcjravg?a');
INSERT INTO posts VALUES(NULL,148,3,3,'http://twitter.com/EvilDragon1717/statuses/10187604464','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/mW4aJEkF-W8?a','2010-03-08 20:58:57','http://twitter.com/EvilDragon1717/statuses/10187604464','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/mW4aJEkF-W8?a');
INSERT INTO posts VALUES(NULL,149,3,3,'http://twitter.com/EvilDragon1717/statuses/10187320977','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Q2R2N1pJ6q4?a','2010-03-08 20:51:07','http://twitter.com/EvilDragon1717/statuses/10187320977','EvilDragon1717: I uploaded a YouTube video -- CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der Linux... http://youtu.be/Q2R2N1pJ6q4?a');
INSERT INTO posts VALUES(NULL,150,3,3,'http://twitter.com/EvilDragon1717/statuses/9929107914','EvilDragon1717: I uploaded a YouTube video -- Pandora: Surfing the web, doing some messenging and eMailing http://youtu.be/1QUDH-Ii8Cc?a','2010-03-03 15:47:12','http://twitter.com/EvilDragon1717/statuses/9929107914','EvilDragon1717: I uploaded a YouTube video -- Pandora: Surfing the web, doing some messenging and eMailing http://youtu.be/1QUDH-Ii8Cc?a');
INSERT INTO posts VALUES(NULL,151,3,3,'http://twitter.com/Craigix/statuses/11427318293','Craigix: Arranging the Boards (etc.) shipping, wow, almost a metric ton.','2010-04-01 14:36:56','http://twitter.com/Craigix/statuses/11427318293','Craigix: Arranging the Boards (etc.) shipping, wow, almost a metric ton.');
INSERT INTO posts VALUES(NULL,152,3,3,'http://twitter.com/Craigix/statuses/11264278231','Craigix: @jonathantullett if there had been wifi dongles this awesome we would have! http://ecx.images-amazon.com/images/I/41HdtFh-oZL._SS500_.jpg','2010-03-29 18:52:03','http://twitter.com/Craigix/statuses/11264278231','Craigix: @jonathantullett if there had been wifi dongles this awesome we would have! http://ecx.images-amazon.com/images/I/41HdtFh-oZL._SS500_.jpg');
INSERT INTO posts VALUES(NULL,153,3,3,'http://twitter.com/Craigix/statuses/11259418345','Craigix: I wish we had never put a bloody wifi chip in the Pandora, it has been nothing but trouble. We should have just used a generic wifi dongle.','2010-03-29 17:06:19','http://twitter.com/Craigix/statuses/11259418345','Craigix: I wish we had never put a bloody wifi chip in the Pandora, it has been nothing but trouble. We should have just used a generic wifi dongle.');
INSERT INTO posts VALUES(NULL,154,3,3,'http://twitter.com/Craigix/statuses/11005939645','Craigix: @flinderella Yes, you win a hat!','2010-03-25 00:01:21','http://twitter.com/Craigix/statuses/11005939645','Craigix: @flinderella Yes, you win a hat!');
INSERT INTO posts VALUES(NULL,155,3,3,'http://twitter.com/Craigix/statuses/11005327384','Craigix: http://twitpic.com/1apjux - The carry case open! (Your extra contents may vary)','2010-03-24 23:47:50','http://twitter.com/Craigix/statuses/11005327384','Craigix: http://twitpic.com/1apjux - The carry case open! (Your extra contents may vary)');
INSERT INTO posts VALUES(NULL,156,3,3,'http://twitter.com/Craigix/statuses/11005305247','Craigix: http://twitpic.com/1apjqg - The (carry) case 1.0','2010-03-24 23:47:21','http://twitter.com/Craigix/statuses/11005305247','Craigix: http://twitpic.com/1apjqg - The (carry) case 1.0');
INSERT INTO posts VALUES(NULL,157,3,3,'http://twitter.com/Craigix/statuses/10901767263','Craigix: @JeFFtouch Yes, although at first only the 2G and 3G clips will be available. It will take another month or so to get the Touch ones.','2010-03-23 01:30:10','http://twitter.com/Craigix/statuses/10901767263','Craigix: @JeFFtouch Yes, although at first only the 2G and 3G clips will be available. It will take another month or so to get the Touch ones.');
INSERT INTO posts VALUES(NULL,158,3,3,'http://twitter.com/Craigix/statuses/10901729532','Craigix: @solotweets I''ve seen their site. I still think it''s dream land. Until we see something real, a video, then I don''t believe it.','2010-03-23 01:29:21','http://twitter.com/Craigix/statuses/10901729532','Craigix: @solotweets I''ve seen their site. I still think it''s dream land. Until we see something real, a video, then I don''t believe it.');
INSERT INTO posts VALUES(NULL,159,3,3,'http://twitter.com/Craigix/statuses/10819177914','Craigix: @gregdobson It''s a fake. I know from months of experiments that design would not work :)','2010-03-21 12:48:05','http://twitter.com/Craigix/statuses/10819177914','Craigix: @gregdobson It''s a fake. I know from months of experiments that design would not work :)');
INSERT INTO posts VALUES(NULL,160,3,3,'http://twitter.com/Craigix/statuses/10800875756','Craigix: Going to visit a factory in Scotland next month to see if we can bring more of the Pandora production to the UK.','2010-03-21 02:10:19','http://twitter.com/Craigix/statuses/10800875756','Craigix: Going to visit a factory in Scotland next month to see if we can bring more of the Pandora production to the UK.');
INSERT INTO posts VALUES(NULL,161,3,3,'http://twitter.com/Craigix/statuses/10772613859','Craigix: @robmanuel Yes. Very low. They were probably geared up to produce that many a week.','2010-03-20 13:35:41','http://twitter.com/Craigix/statuses/10772613859','Craigix: @robmanuel Yes. Very low. They were probably geared up to produce that many a week.');
INSERT INTO posts VALUES(NULL,162,3,3,'http://twitter.com/Craigix/statuses/10772448484','Craigix: http://twitpic.com/19rikd - More boxes!','2010-03-20 13:30:55','http://twitter.com/Craigix/statuses/10772448484','Craigix: http://twitpic.com/19rikd - More boxes!');
INSERT INTO posts VALUES(NULL,163,3,3,'http://twitter.com/Craigix/statuses/10687771540','Craigix: PSP Go the new device has sold a total of 23,455 units in Japan. WOW.','2010-03-18 20:23:42','http://twitter.com/Craigix/statuses/10687771540','Craigix: PSP Go the new device has sold a total of 23,455 units in Japan. WOW.');
INSERT INTO posts VALUES(NULL,164,3,3,'http://twitter.com/Craigix/statuses/10686109704','Craigix: @anexanhume No, I like the guesses as each shipment arrives :)','2010-03-18 19:39:15','http://twitter.com/Craigix/statuses/10686109704','Craigix: @anexanhume No, I like the guesses as each shipment arrives :)');
INSERT INTO posts VALUES(NULL,165,3,3,'http://twitter.com/Craigix/statuses/10686019212','Craigix: @edwardbutlerson Yep it has shoulder buttons on the back, they are angled to make them easy to use.','2010-03-18 19:36:46','http://twitter.com/Craigix/statuses/10686019212','Craigix: @edwardbutlerson Yep it has shoulder buttons on the back, they are angled to make them easy to use.');
INSERT INTO posts VALUES(NULL,166,3,3,'http://twitter.com/Craigix/statuses/10685800580','Craigix: Got another delivery today, will take photos tomorrow. More boxes.','2010-03-18 19:30:56','http://twitter.com/Craigix/statuses/10685800580','Craigix: Got another delivery today, will take photos tomorrow. More boxes.');
INSERT INTO posts VALUES(NULL,167,3,3,'http://twitter.com/Craigix/statuses/10671625925','Craigix: @whatsnthebox (and others) Not taking orders yet, we probably won''t until we have ~3000 units in stock ready to ship.','2010-03-18 13:46:50','http://twitter.com/Craigix/statuses/10671625925','Craigix: @whatsnthebox (and others) Not taking orders yet, we probably won''t until we have ~3000 units in stock ready to ship.');
INSERT INTO posts VALUES(NULL,168,3,3,'http://twitter.com/Craigix/statuses/10641061548','Craigix: Visited the Icontrolpad factory today, all going well, very excited about this.','2010-03-17 22:09:49','http://twitter.com/Craigix/statuses/10641061548','Craigix: Visited the Icontrolpad factory today, all going well, very excited about this.');
INSERT INTO posts VALUES(NULL,169,3,3,'http://twitter.com/Craigix/statuses/10395911788','Craigix: It''s friday night, it''s what we love, enjoy : http://www.youtube.com/watch?v=ksoYTT8DtZo','2010-03-12 23:41:28','http://twitter.com/Craigix/statuses/10395911788','Craigix: It''s friday night, it''s what we love, enjoy : http://www.youtube.com/watch?v=ksoYTT8DtZo');
INSERT INTO posts VALUES(NULL,170,3,3,'http://twitter.com/Craigix/statuses/10374886371','Craigix: http://bit.ly/4HkBf1 at last.','2010-03-12 14:50:07','http://twitter.com/Craigix/statuses/10374886371','Craigix: http://bit.ly/4HkBf1 at last.');
INSERT INTO posts VALUES(NULL,171,4,2,'http://gdata.youtube.com/feeds/base/videos/n1dSj6s_apM','Pandora: Running VCS2600','2010-04-01 12:56:40','http://www.youtube.com/watch?v=n1dSj6s_apM&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=n1dSj6s_apM&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/n1dSj6s_apM/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=n1dSj6s_apM&amp;feature=youtube_gdata">Pandora: Running VCS2600</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Nothing spectacular - but one of the members of the german community posted a list with a lot of commercials of retro consoles here: http://forum.gp2x.de/viewtopic.php?f=10&amp;t=9230

Couldn&#39;t resist and had to play some Ms. PacMan on the Pandora as video response :)</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
383</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">13
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">00:32</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,172,4,2,'http://gdata.youtube.com/feeds/base/videos/2XODitEQq9E','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 6','2010-03-09 00:29:47','http://www.youtube.com/watch?v=2XODitEQq9E&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=2XODitEQq9E&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/2XODitEQq9E/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=2XODitEQq9E&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 6</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Der letzte Teil voller Fragen und Antworten.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
1912</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">24
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">08:38</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,173,4,2,'http://gdata.youtube.com/feeds/base/videos/AyZBpMiz1hw','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 5','2010-03-09 00:13:21','http://www.youtube.com/watch?v=AyZBpMiz1hw&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=AyZBpMiz1hw&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/AyZBpMiz1hw/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=AyZBpMiz1hw&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 5</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Fortsetzung der Pr&auml;sentation.
Noch mehr Fragen, noch mehr Antworten.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
1110</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">18
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">06:42</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,174,4,2,'http://gdata.youtube.com/feeds/base/videos/Dtx7AG7PSa4','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 4','2010-03-08 23:46:49','http://www.youtube.com/watch?v=Dtx7AG7PSa4&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=Dtx7AG7PSa4&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/Dtx7AG7PSa4/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=Dtx7AG7PSa4&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 4</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Fortsetzung der Pr&auml;sentation.
Zuschauer fragen - EvilDragon antwortet.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
1119</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">21
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">09:40</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,175,4,2,'http://gdata.youtube.com/feeds/base/videos/ymMZpcjravg','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 3','2010-03-08 20:24:27','http://www.youtube.com/watch?v=ymMZpcjravg&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=ymMZpcjravg&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/ymMZpcjravg/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=ymMZpcjravg&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 3</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Fortsetzung der Pr&auml;sentation.
Vor- und Nachteile von OpenSource-Handhelds, Entwicklung der Community.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
1266</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">28
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">09:48</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,176,4,2,'http://gdata.youtube.com/feeds/base/videos/mW4aJEkF-W8','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 2','2010-03-08 20:04:28','http://www.youtube.com/watch?v=mW4aJEkF-W8&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=mW4aJEkF-W8&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/mW4aJEkF-W8/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=mW4aJEkF-W8&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 2</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Fortsetzung der Pr&auml;sentation.
Spielehandheld-Geschichte: Vom F200 bis zur Pandora.
Vor- und Nachteile von OpenSource-Spielehandhelds</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
1327</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">24
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">08:38</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,177,4,2,'http://gdata.youtube.com/feeds/base/videos/Q2R2N1pJ6q4','CeBIT: EvilDragon spricht über OpenSource-Spiele-Handhelds auf der LinuxHotel-Bühne - Teil 1','2010-03-08 19:42:27','http://www.youtube.com/watch?v=Q2R2N1pJ6q4&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=Q2R2N1pJ6q4&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/Q2R2N1pJ6q4/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=Q2R2N1pJ6q4&amp;feature=youtube_gdata">CeBIT: EvilDragon spricht &uuml;ber OpenSource-Spiele-Handhelds auf der LinuxHotel-B&uuml;hne - Teil 1</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Einf&uuml;hrung und kurze Geschichte der OpenSource-Spielehandhelds bis zum F200.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
2774</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_empty_11x11.gif"></div>
<div style="font-size: 11px;">27
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">09:10</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,178,4,2,'http://gdata.youtube.com/feeds/base/videos/1QUDH-Ii8Cc','Pandora: Surfing the web, doing some messenging and eMailing','2010-03-03 14:57:41','http://www.youtube.com/watch?v=1QUDH-Ii8Cc&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=1QUDH-Ii8Cc&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/1QUDH-Ii8Cc/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=1QUDH-Ii8Cc&amp;feature=youtube_gdata">Pandora: Surfing the web, doing some messenging and eMailing</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>It just shows how you can use the Pandora and do common internet tasks.
WebKit (from the Angstr&ouml;m-Repo) on the Pandora has a small rendering error for websites currently, but that&#39;s already fixed in the normal desktop distros, so it should not take long to fix that.

As WiFi is not working yet, I used USB-Gadget to connect to the net via a PC.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
4926</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">29
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">04:27</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,179,4,2,'http://gdata.youtube.com/feeds/base/videos/1hYv54euXVQ','Pandora: Developing on-the-go with PyGame','2010-03-02 19:16:59','http://www.youtube.com/watch?v=1hYv54euXVQ&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=1hYv54euXVQ&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/1hYv54euXVQ/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=1hYv54euXVQ&amp;feature=youtube_gdata">Pandora: Developing on-the-go with PyGame</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Just showing how you can easily edit sourcecodes of a PyGame Game, start it from console and see the output.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
4353</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">24
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">01:15</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,180,4,2,'http://gdata.youtube.com/feeds/base/videos/tSjV9cRAKfM','Pandora Quickie: Changes themes in the OS','2010-03-02 18:37:26','http://www.youtube.com/watch?v=tSjV9cRAKfM&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=tSjV9cRAKfM&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/tSjV9cRAKfM/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=tSjV9cRAKfM&amp;feature=youtube_gdata">Pandora Quickie: Changes themes in the OS</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Just a very quick video showing how to change themes in XFCE4 on the Pandora</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
2340</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">22
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">02:00</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,181,4,2,'http://gdata.youtube.com/feeds/base/videos/T1COcy40b_c','Pandora: Things to do when you''re NOT playing','2010-03-02 17:16:18','http://www.youtube.com/watch?v=T1COcy40b_c&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=T1COcy40b_c&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/T1COcy40b_c/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=T1COcy40b_c&amp;feature=youtube_gdata">Pandora: Things to do when you&#39;re NOT playing</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>This video just shows the Pandora OS (Angstr&ouml;m with XFCE4) including FileManager, Multitasking, AbiWord, PDF-Reader, Movieplayer, etc.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
5827</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">44
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">09:49</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,182,4,2,'http://gdata.youtube.com/feeds/base/videos/RM2Z-N0_1_A','Pandora: Playing Amiga on an unoptimized UAE build','2010-02-15 17:33:43','http://www.youtube.com/watch?v=RM2Z-N0_1_A&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=RM2Z-N0_1_A&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/RM2Z-N0_1_A/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=RM2Z-N0_1_A&amp;feature=youtube_gdata">Pandora: Playing Amiga on an unoptimized UAE build</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Well, UAE is known to need a lot of horsepower. The unoptimized build (no ARM ASM core, etc.) does work fine with FS2 on the Pandora!
This is incredibly. It&#39;s probably the slowest Amiga emulation possible on the Pandora and already VERY playable.

Can&#39;t wait for a Cyclone-Version, this will easily fly away!
Thanks to Pickle for the quick port.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
4535</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">27
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">01:49</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,183,4,2,'http://gdata.youtube.com/feeds/base/videos/OOtENx0QuZM','Pandora: PNDs, switching GUIs and Hatari','2010-02-15 16:30:18','http://www.youtube.com/watch?v=OOtENx0QuZM&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=OOtENx0QuZM&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/OOtENx0QuZM/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=OOtENx0QuZM&amp;feature=youtube_gdata">Pandora: PNDs, switching GUIs and Hatari</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>A small video which shows how to switch between GUIs, how PND Autodiscovery works and some Atari ST emulation (unoptimized)</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
5303</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">39
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">06:11</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,184,4,2,'http://gdata.youtube.com/feeds/base/videos/zeBngSJOr_A','LCD Comparison: WIZ, PSP, F200, Pandora','2010-02-01 19:52:28','http://www.youtube.com/watch?v=zeBngSJOr_A&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=zeBngSJOr_A&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/zeBngSJOr_A/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=zeBngSJOr_A&amp;feature=youtube_gdata">LCD Comparison: WIZ, PSP, F200, Pandora</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>I tried to compare the WIZ, PSP, F200 and Pandora-Display in regards of ghosting. As suspected, that can&#39;t be really done. The camera used was doing HD (720 with 50p) and the game usually runs at 60Hz which is way different.
You can see a BIT of a difference though. First you see the game in fullspeed and after that at 50% speed which makes the ghosting more visible.
As expected, ALL LCD have ghosting. In my opinion, the WIZ one (a OLED) is the best one regarding to ghosting (no surprise here). On second place if you only take a look at the ghosting is F200 and Pandora. However, F200 has weird colors and contrast (I tried to fix it with a color correction, but the colorspace seems weird here). Therefore, I like the Pandora one better.
While the PSP one basically has the same amount of ghosting, there is one thing that makes it look worse (can also be seen here in the video): The ghosting is very dark and therefore clearly visible.
The Pandora / F200 has a much lighter ghosting which makes it look like a motion blur (and that does make the games look similar as on 80s/90s CRTs) , whereas the PSP does look like it smears.

Both the Pandora one and WIZ one look sharper than the others. No surprise for the Pandora here, as its normal resolution is much higher (800x480).

So, which is the best LCD? It depends on what you want to do :)
The WIZ one is looking good but lores and small (and OLED still has some issues).
The Pandora one is nice with some ghosting visible, but actually looks like some motion blur.
Same for the F200, except for those scanlines and the bad colors / contrast.
The PSP one is bleeding colors, as is already known for a long time.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
2698</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">19
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">01:35</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,185,4,2,'http://gdata.youtube.com/feeds/base/videos/mLYBDoNhfqc','Pandora: Christmas like 25 years ago','2009-12-24 12:58:09','http://www.youtube.com/watch?v=mLYBDoNhfqc&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=mLYBDoNhfqc&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/mLYBDoNhfqc/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=mLYBDoNhfqc&amp;feature=youtube_gdata">Pandora: Christmas like 25 years ago</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Just showing how nice a quick port of VICE runs on the Pandora handheld.
Enjoy a few of the classics :)</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
10779</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">68
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">04:48</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,186,4,2,'http://gdata.youtube.com/feeds/base/videos/okfBoaOW7_Y','Pandora - DPad-Demonstration with Picodrive','2009-12-22 22:16:33','http://www.youtube.com/watch?v=okfBoaOW7_Y&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=okfBoaOW7_Y&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/okfBoaOW7_Y/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=okfBoaOW7_Y&amp;feature=youtube_gdata">Pandora - DPad-Demonstration with Picodrive</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Just a small demonstration of how well the DPad does work using Picodrive.
I never played any beat-em ups so I can&#39;t show you any cool combos, however, I played some Thunderforce 4 and Snake Rattle&#39;n&#39;Roll.
Not too good there either, but I do hope it shows that the DPad is working perfectly :)</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
8717</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">37
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">03:31</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,187,4,2,'http://gdata.youtube.com/feeds/base/videos/dD6gytB1iw8','Pandora Prototype Showoff','2009-12-17 22:55:23','http://www.youtube.com/watch?v=dD6gytB1iw8&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=dD6gytB1iw8&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/dD6gytB1iw8/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=dD6gytB1iw8&amp;feature=youtube_gdata">Pandora Prototype Showoff</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Here&#39;s a little video which shows some nice closeups of the Pandora prototype.
I also demonstrate the dpad and keyboard so you can see that it is working nicely.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
20651</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">83
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">02:54</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,188,4,2,'http://gdata.youtube.com/feeds/base/videos/O4fhYlEDW54','Pandora - Prerelease OS Snippet 3','2009-12-17 21:54:27','http://www.youtube.com/watch?v=O4fhYlEDW54&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=O4fhYlEDW54&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/O4fhYlEDW54/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=O4fhYlEDW54&amp;feature=youtube_gdata">Pandora - Prerelease OS Snippet 3</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>This time we take a look on how easy it is to install games onto your Pandora.
Simply copy the .PND files in a directory of the SD Card and put the card into the Pandora. That&#39;s it.
Thanks to all the devs (skeezix, vimacs, DJWillis, notaz, ...) who worked on that feature.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
8060</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">39
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">02:24</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,189,4,2,'http://gdata.youtube.com/feeds/base/videos/1dXNjmS82vk','GPH WIZ - OpenSource Handheld für Homebrew und Emulatoren','2009-12-13 10:13:56','http://www.youtube.com/watch?v=1dXNjmS82vk&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=1dXNjmS82vk&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/1dXNjmS82vk/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=1dXNjmS82vk&amp;feature=youtube_gdata">GPH WIZ - OpenSource Handheld f&uuml;r Homebrew und Emulatoren</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Dieses Video gibt einen schnellen &Uuml;berblick, was man mit dem WIZ alles machen kann.
Ohne Hacken oder eine illegale Firmware installieren zu m&uuml;ssen. Linux und OpenSource machen es m&ouml;glich. Zum Anwenden sind allerdings keine Linux-Kennnisse n&ouml;tig.

Die Spiele kann man einfach herunterladen, auf die SD-Karte kopieren und loslegen.

Mehr Infos zum WIZ:
Shop: http://shop.gp2x.de/
Forum: http://forum.gp2x.de/
Download Archiv: http://www.openhandhelds.org/</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
841</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">18
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">05:35</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,190,4,2,'http://gdata.youtube.com/feeds/base/videos/i--xlwE8UlY','Pandora - Prerelease OS Snippet 2','2009-12-09 11:57:34','http://www.youtube.com/watch?v=i--xlwE8UlY&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=i--xlwE8UlY&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/i--xlwE8UlY/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=i--xlwE8UlY&amp;feature=youtube_gdata">Pandora - Prerelease OS Snippet 2</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Here is the next snippet of the OS, showing you some basic window handling on the XFCE Desktop.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
11496</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">55
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">02:08</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,191,4,2,'http://gdata.youtube.com/feeds/base/videos/GQOPzVytaDI','Pandora - Prerelease OS Snippet 1','2009-12-08 19:03:39','http://www.youtube.com/watch?v=GQOPzVytaDI&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=GQOPzVytaDI&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/GQOPzVytaDI/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=GQOPzVytaDI&amp;feature=youtube_gdata">Pandora - Prerelease OS Snippet 1</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>A short preview of the operating system for the upcoming first release of the Pandora.
It shows the First Boot Wizard which will guide the user to setup his machine.
More information: www.openpandora.org</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
12358</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">53
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">01:49</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,192,4,2,'http://gdata.youtube.com/feeds/base/videos/quGtMdGsf6k','GP2X WIZ - Spielekonsole für Homebrew u Emulatoren','2009-12-08 01:57:37','http://www.youtube.com/watch?v=quGtMdGsf6k&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=quGtMdGsf6k&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/quGtMdGsf6k/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=quGtMdGsf6k&amp;feature=youtube_gdata">GP2X WIZ - Spielekonsole f&uuml;r Homebrew u Emulatoren</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Der WIZ - die offene Spielekonsole f&uuml;r die Westentasche. 
Emulatoren,kostenlose Homebrew-Spiele,Filme,Musik. 
Ohne Hacken oder Freischalten - powered by Linux. 
 
Infos im Forum unter http://forum.gp2x.de 
Erh&auml;ltlich f&uuml;r 125&euro;: http://shop.gp2x.de</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
886</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">12
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">01:04</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,193,4,2,'http://gdata.youtube.com/feeds/base/videos/6H2qOAZKa68','WIZ - small introduction of the OpenSource-Handheld','2009-11-06 20:01:27','http://www.youtube.com/watch?v=6H2qOAZKa68&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=6H2qOAZKa68&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/6H2qOAZKa68/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=6H2qOAZKa68&amp;feature=youtube_gdata">WIZ - small introduction of the OpenSource-Handheld</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>The WIZ is a korean OpenSource-Handheld, which allows you to play free homebrew games, classic games via emulators and a lot more. Without any special knowledge.
This video is a short overview over the system and shows you, how easy it is to download and play free games.kostenfreie Spiele herunterzuladen und zu installieren.

More about the WIZ:
http://shop.gp2x.de
http://www.gp32x.com
http://www.globalgph.com
http://openhandhelds.org

Note: We don&#39;t want to encourage the illegal playing of pirated games or roms. Please only emulate, what you are allowed to play (this differs in various countries. Usually, it is okay to read out your cartridges or CDs and play them, as long as they are not copy protected and you do own the original game).
You can also use the emulators to play free homebrew games for those system (available at http://www.pdroms.de, e.g.)
WE DON&#39;T SUPPORT ILLEGAL DOWNLOADING OF COMMERCIAL ROMS! A game worth playing is a game worth buying. Respect the authors and their copyrights!</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
4382</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">19
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">04:50</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,194,4,2,'http://gdata.youtube.com/feeds/base/videos/67XYlTjx9C4','WIZ - kleines Intro des OpenSource-Handhelds','2009-11-06 17:03:23','http://www.youtube.com/watch?v=67XYlTjx9C4&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=67XYlTjx9C4&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/67XYlTjx9C4/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=67XYlTjx9C4&amp;feature=youtube_gdata">WIZ - kleines Intro des OpenSource-Handhelds</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Der WIZ ist ein koreanischer OpenSource-Handheld, mit welchem man ohne Vorkenntnisse einfach Homebrew-Spiele, Emulatoren und vieles andere mehr laufen lassen kann.
Dieses Video gibt einen kurzen &Uuml;berblick &uuml;ber die wichtigsten Funktionen und zeigt kurz, wie einfach es ist, kostenfreie Spiele herunterzuladen und zu installieren.

Mehr zum WIZ:
http://www.gp2x.de
http://forum.gp2x.de
http://shop.gp2x.de
http://www.globalgph.com
http://openhandhelds.org

Hinweis: Wir wollen KEINE illegale Emulation f&ouml;rdern. Bitte nur emulieren, was auf legale Art und Weise erworben worden ist. Das kann durch eigenes Auslesen geschehen (sofern kein Kopierschutz vorhanden ist) oder mit Homebrew f&uuml;r das emulierte System (z.B. auf http://www.pdroms.de erh&auml;ltlich).
KOSTENFREIES HERUNTERLADEN VON KOMMERZIELLEN ROMS IST ILLEGAL UND WIRD VON UNS NICHT UNTERST&Uuml;TZT!
Ein Spiel, welches es wert ist, gespielt zu werden, ist es auch wert, gekauft zu werden.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
8793</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">21
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">04:51</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=20">Gaming</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,195,4,2,'http://gdata.youtube.com/feeds/base/videos/B50Kh70AeE4','Assembling a Pandora Prototype Case','2009-03-20 11:29:59','http://www.youtube.com/watch?v=B50Kh70AeE4&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=B50Kh70AeE4&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/B50Kh70AeE4/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=B50Kh70AeE4&amp;feature=youtube_gdata">Assembling a Pandora Prototype Case</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>This shows the Pandora Prototype Case parts, including the assembling.
Unfortunately, my ribbon cable broke so I can&#39;t show it running.
But I&#39;ll get a new one soon!</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
27181</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">59
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">09:14</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,196,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=171%3Asome-more-speed&catid=2%3Ablog&Itemid=2&lang=en','Some more speed...','2010-04-06 13:33:53','http://www.open-pandora.org/index.php?option=com_content&view=article&id=171%3Asome-more-speed&catid=2%3Ablog&Itemid=2&lang=en','<P>... as said, Michael is still working on tweaking WiFi. The speeds I posted in my previous blog entry are old - at the moment, he already doubled the speed on Rev4/5 using the minimal kernel. He still needs to try on the normal image.<BR mce_bogus="1"></P>');
INSERT INTO posts VALUES(NULL,197,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=170%3Aback-on-track&catid=2%3Ablog&Itemid=2&lang=en','Back on Track!','2010-04-06 11:49:21','http://www.open-pandora.org/index.php?option=com_content&view=article&id=170%3Aback-on-track&catid=2%3Ablog&Itemid=2&lang=en','<P>Finally - a new blog post. Did take a real long time, since there was so much we needed to figure out first.</P><P>Okay, here is what happened:</P><P><STRONG><U>1. The WiFi issue - finally resolved</U></STRONG></P><P>A lot of guys have probably already followed this on the boards: notaz was working on the WiFi driver and still couldn''t get it to work reliable. As he didn''t know what else to try, he thought it could also be a hardware issue - of course, that got us alarmed. Michael immediately stopped the board production (700 had been produced so far back then) to first do more tests with WiFi. We were totally in the dark. If you ever wanted to know how sudden death feels... well, we do know for sure yet.</P><P>Michael did begin investigating the hardware while notaz did more tests and tweaks with the software. A kernel which disabled everything except WiFi did get a bit more speed out of the WiFi, but it still was very slow. Was it the driver causing problems when other stuff was running? Or was it the hardware? We still didn''t know for sure.<BR><BR>As we didn''t know, we decided we will get some WiFi sticks for the beginning and ask every customer whether he wanted to get the Pandora with a stick and internal WiFi that might be fixable by software or maybe needs a hardware fix later.<BR><BR>Then, at one time, we found out that WiFi was faster on Rev2/3 boards then on the recent Rev4/5 boards - pretty weird, as nothing had been changed in these revisions that could affect WiFi. Except the board manufacturer. Using that clue, we figured out that the impedance of one trace had been changed. The impedance is important here, as a wrong impedance will distort the signal and then the module doesn''t get a clean clock. Measuring the clock signal did prove that: Yep, the impedance had been changed.<BR>Who''s fault was it? Hard to tell. The company had changed that trace without asking, but we also didn''t explicitely say it needs to have a correct back. So it''s a hard thing, the trace is working, it was just not good enough for the signal.<BR>Knowing that, Michael did work on it for a couple of days, doing some trial and error (not much you can''t do unless you do know the exact new impedance).<BR>He got it working better - but still not good enough to really be usable - was this due to software? Or still hardware?<BR>So he started to work on a new testing board (Rev6) which could also be used as new board for the rest of the 3300 Pandoras if it fixes WiFi.<BR>While doing that, he had another idea - modded another Rev5 board and got a HUGE speed increase! On minimal kernel, he can get 350KB/s, on normal image he gets 66KB/s stable speed (tested downloading from the internet. That fix is easy: Simply piggyback a resistor on top of an existing one. Takes about 1 - 2 minutes. And the rest of the 3300 boards can be populated with the new resistor immediately, so that fix won''tl be needed on them.<BR>Speed can probably still be improved - Michael just found out about that yesterday, he will try to tweak more (or even combine the two mods) during the next days, until he leaves for UK to start assembling (he will do the modification of each board while assembling).<BR>Finally! That news did make us more alive again, we were really suffering during the last days...</P><P><BR></P><P><STRONG><U>2. The cases</U></STRONG></P><P>Since board production had been stopped for a while, we allowed the Chinese guys to tweak the case moulds a bit more. As you might have seen on the latest image, the bottom part (with the keyboard) looks spot-on right now - however, the top part still has some weird discoloration. No problem with stability here, just looks a bit weird if you look closely.</P><P><BR><STRONG><U>3. The OS - ready for first release</U></STRONG></P><P>The latest image had been tested a lot by all of us already. It is pretty stable, has some minor issues (like you need to restart after calibrating the touchscreen at the moment... no biggie, I only needed to calibrate once in the last four months).<BR>It has a working browser, eMail client, IRC, ICQ, MSN, etc. everything you need for normal life.<BR>There is room for speed improvement in the future, SDL is not using hardware surfaces yet, but that will follow.<BR>Also, boot process will be further optimized and will use Upstart to be a lot faster.<BR>If you don''t like a fancy desktop system, you can also use some minimal GUIs. We also designed that system to be configurable, so as soon as anyone codes a new GUI, it can easily be included by simply changing a config file.<BR><BR>The libpnd system is also working nicely: download a PND onto your SD Card and it will automatically appear in the menu (or on the desktop). Games will be sorted into categories, every dev can include a documentation in his PND so you can easily check the manual or installation settings, etc. Really convenient.<BR>Of course, the categories, icons, etc. can be overriden, in case you want to have your own ones.<BR>One thing you should not expect from the beginning is (as said before) accellerated movie playing (and therefore, also youtube movie playing).<BR>This does need a new kernel and is on our TO-Do list for the next firmware release, which will be worked on as soon as the first one is ready to go on the NAND.<BR>You can also help us testing then, as you can install the new beta image on an SD Card and try it out.</P><P>As the image is working well already, devs already concentrate to port more things. At the moment, we got fullspeed Amiga 500 emulation (without frameskip) at 500MHz, fullspeed Genesis and MegaCD, fullspeed C64 (Vice!) on 500 MHz without any frameskip, VCS2600, Colecovision, Atari ST, ... tons of stuff to play. Skeezix is also porting PocketSNES, so fullspeed SNES will also work when you get your unit.<BR>PandoraPanic (minigames created by members of the GP32x.com community) is working nice, FreeDink, some PyGame-Games, etc. have also been ported already.<BR></P><P>Overall, you will get a good working first release OS which still leaves a lot of room for improvements.</P><P> </P><P><U><STRONG>4. The current situation</STRONG></U></P><P>We lost two weeks due to that WiFi issue, but now that this has been resolved being a fixable hardware issue, Michael told the company yesterday to ship out all the produced boards we have as soon as possible to UK. Additionally, Fatih told the Chinese to do the same: Produce the cases as they are now and ship them!<BR>DJWillis is working on making the image NAND-installable, so yes, you might see us assembling them on webcam soon!<BR></P>');
INSERT INTO posts VALUES(NULL,198,1,1,837157,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 06:52:46','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837157','I&#39;m posting this from a Pandora connected via built in wifi. Works quite good. :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,199,1,2,837275,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 14:15:09','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837275','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837262''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>fusion_power, on 08 April 2010 - 02:14 PM, said:</p><div class="blockquote"><div class=''quote''>I still hope, Hardware Acceleration will work at the end. Not that it turns out there is another wrong resistor somewhere that prevents the Pandora to use hardware Acceleration at all.</div></div><br />
<br />
Haha, don&#39;t worry. It works on Angstr�m on the BeagleBoard but needs a more recent kernel.<br />
And the hardware accelleration is within the OMAP, there is no resistor that could be wrong ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,200,1,2,837249,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 12:51:41','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837249','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837244''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>paddy, on 08 April 2010 - 01:36 PM, said:</p><div class="blockquote"><div class=''quote''>matenrou , i think it should work still without a hardware driver ,i used totum on a dell mini<br />
with no display driver as i was using hardware not really supported in ubuntu at version 8.04<br />
and yes the video plays perfectly including full screen</div></div><br />
<br />
We&#39;ve got Totem, but without hardware acceleration it plays YouTube video with about 1 frame each three seconds.
						
						<br />');
INSERT INTO posts VALUES(NULL,201,1,2,837234,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 12:11:14','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837234','Epiphany had the same rendering and crashing issues as Midori for me - I guess the problem is with WebKit, as they both use it.<br />
For the rendering issue, there&#39;s a fix, it might also fix the crashing, but it&#39;s not yet implemented in our image :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,202,1,2,837118,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 03:34:41','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837118','I just installed Arora on the Pandora.<br />
Pretty nice, fast browser, no rendering errors, no crashes :) <br />
<br />
Maybe we should replace Midori with it, at least for first release, as Midori loves to crash (even on my desktop PC...)
						
						<br />');
INSERT INTO posts VALUES(NULL,203,1,2,837038,'Pandora Wi-Fi On 350kilobytes/s','2010-04-07 23:50:39','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837038','Current speed Michael gets while downloading off the net:<br />
200 - 300 KB/s on NORMAL image&#33;<br />
Not the minimal WiFi image :) <br />
<br />
That&#39;s 2.4MBps :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,204,1,2,836964,'Pandora Wi-Fi On 350kilobytes/s','2010-04-07 20:24:59','http://www.gp32x.com/board/index.php?/topic/52868-video-output-signal-quality-also-affected-by-impedance-problem/page__view__findpost__p__836964','Since I measured the TV Out signal with our waveform already to tweak the TV Out scripts... I guess it&#39;s fine ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,205,1,2,836806,'Pandora Wi-Fi On 350kilobytes/s','2010-04-07 13:06:44','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__836806','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836799''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>JayFoxRox, on 07 April 2010 - 01:49 PM, said:</p><div class="blockquote"><div class=''quote''>Personally I didn&#39;t post iperf yet because the team has seen the posts by that asian person who benchmarked his beagleboard with the working wifi chip. Additionaly I&#39;d assume that the team is able to do a slight bit of research themself by typing &quot;network benchmark&quot; into google which gives tons of other good options.</div></div><br />
<br />
Well, yeah, though the only one who mods those things is MichaelW, and currently he is trying to squeeze out more speed instead. His normal PC does still download a tad faster than the Pandora does, so there is room of improvement. notaz also wants to do the mod, and as soon as he did, he wants to do proper speed tests and maybe tweak the driver.<br />
<br />
Michael is a hardware genius, but not used to do any hardware benchmarking using software, so he would need time to find out and set up everything.<br />
Instead of doing this, he is rather working on the hardware until he hits the &quot;won&#39;t get faster because of my internet speed&quot;-limit.
						
						<br />');
INSERT INTO posts VALUES(NULL,206,1,2,836805,'Official Blog Post','2010-04-07 12:58:46','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836805','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836794''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Alerino, on 07 April 2010 - 01:37 PM, said:</p><div class="blockquote"><div class=''quote''>it&#39;s not good when a nice guy like ED gets angry</div></div><br />
<br />
It takes a lot more to get me angry ;) <br />
Don&#39;t you worry.
						
						<br />');
INSERT INTO posts VALUES(NULL,207,1,2,836780,'Talks From A Assembly Company.','2010-04-07 12:03:33','http://www.gp32x.com/board/index.php?/topic/52865-talks-from-a-assembly-company/page__view__findpost__p__836780','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836776''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Azure, on 07 April 2010 - 01:54 PM, said:</p><div class="blockquote"><div class=''quote''>In all fairness, you have to subtract from 200 the number of days until assembly actually begins. When assembly begins is a little uncertain. All we know is that it&#39;s been &quot;soon&quot; or &quot;really close&quot; for many months now...so, with that in mind, it isn&#39;t *too* outrageous to be looking at the latter half of 2010 for when the last first batch Pandora arrives. I&#39;m just saying, it&#39;s hard to differentiate the confidence behind a &quot;soon&quot; right now and a &quot;soon&quot; we heard at the beginning of the year, and so on back in time to when pre-orders began.</div></div><br />
<br />
Well, according to the companies, everything will ship at the end of this week. If this is true, assembly begins next week.
						
						<br />');
INSERT INTO posts VALUES(NULL,208,1,2,836733,'Talks From A Assembly Company.','2010-04-07 10:35:03','http://www.gp32x.com/board/index.php?/topic/52865-talks-from-a-assembly-company/page__view__findpost__p__836733','Errmm... you DID tell him that neither the board nor the case production is done by people in the SPARE time but by companies who do that for a living?<br />
<br />
Yep, the DESIGN of the case and board as well as software has mostly been done in the spare time - but that&#39;s over now.<br />
<br />
And assembly will not take place in spare time either, we gather a team which will work fulltime on assembling the stuff.<br />
<br />
So... let me see, we got approx. 200 days left until 2011 (already substracted a few days because of holidays, etc.)<br />
If we have 4000 Pandoras to build, that would mean that we shouldn&#39;t build more then 20 units a day. Since we are working something between 10 - 12 hours on assembling (maybe even more), that would mean no more than 2 units per hour.<br />
MichaelW made a video tutorial showing us how to assemble a Pandora. He does it really slow and repeats steps quite a few times to really show you how to do it.<br />
That does take 17 minutes.<br />
<br />
So if one person is working REALLY slow to build a Pandora, it takes 17 minutes - which would be a bit more than 3 units per hour.<br />
That&#39;s already too fast.<br />
<br />
We have at least 8 people assembling Pandoras - so how slow should they work?
						
						<br />');
INSERT INTO posts VALUES(NULL,209,1,2,836707,'Official Blog Post','2010-04-07 09:26:30','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836707','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836701''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>ging, on 07 April 2010 - 10:45 AM, said:</p><div class="blockquote"><div class=''quote''>It&#39;s not speculation, it&#39;s my opinion. They&#39;ve painted themeselves into a corner with bad MRP/II which has led a perfectly reasonable question that won&#39;t be answered . I&#39;ve not got a vendetta against the OP team or higlighting ED out  but he is the public facing side of the team  we get to interact with as &quot;customers&quot;.</div></div><br />
<br />
Okay, then answer me these simple questions:<br />
1. How long does a team in an assembly line with 8 stations need to assemble a Pandora?<br />
2. Do you know the exact modifications we need to do to get WiFi fully working yet?<br />
3. Do you know if the cases that arrive in UK are perfectly fine and can be used without any modifications?<br />
<br />
You can&#39;t? Bummer, if I knew those, I could tell you how long it will take.<br />
<br />
Those are the things we don&#39;t know yet.<br />
As said multiple times (even in this thread):<br />
<br />
Answer to 1. Probably 3 - 12 minutes, speed will increase with assembly experience. There&#39;s no way yet to tell you how long it will take.<br />
Answer to 2. Well, as Michael is still tweaking, we don&#39;t know yet. As soon as we know, we can ask the company how long it will take to produce the rest of the boards. Before that anything is speculation<br />
Answer to 3. We&#39;ll find out as soon as they get there. Until then, there&#39;s no way we can tell you how long the rest will take.<br />
<br />
<br />
See the problem with your &quot;simple&quot; questions?<br />
They can only be answered when certain events took place.<br />
<br />
We will all know more after assembly has started. Not before.
						
						<br />');
INSERT INTO posts VALUES(NULL,210,1,2,836533,'Official Blog Post','2010-04-06 21:30:25','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836533','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836521''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>ging, on 06 April 2010 - 10:55 PM, said:</p><div class="blockquote"><div class=''quote''>Ed,<br />
   I&#39;ve asked a straight forward question in the thread twice now as it related  to your post about the boards shipping . I did&#39;nt want to start another thread but I&#39;m concerned you&#39;ve not answered a simple question.<br />
<br />
Is the intention to assemble the remaining 3,300 in one go while in the UK from next week after the initial xxx are done? You say you don&#39;t know how long it will take to assemble them which is fine but you must have a finite amount of time you guys can devote to time away from your homes and places of work ?<br />
<br />
Just looking for straight &quot;we stay till all 4000 are done &quot; or &quot; we disperse at the end of the initial xxx  and build them as individuals after that.</div></div><br />
<br />
Look, anything I do know for sure is posted in the blog.<br />
Everything else would just be speculation - and that&#39;s something you can do yourself.<br />
No need to ask the same thing twice or even more often. If I don&#39;t answer, I don&#39;t know.
						
						<br />');
INSERT INTO posts VALUES(NULL,211,1,2,836442,'Official Blog Post','2010-04-06 16:47:24','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836442','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836435''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>fusion_power, on 06 April 2010 - 05:35 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836396''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 06 April 2010 - 05:08 PM, said:</p><div class="blockquote"><div class=''quote''>Longest time is probably taking assembly, so until we got a bit of routine assembling the Pandoras there&#39;s no way to tell how fast we can assemble.</div></div><br />
Hmm, good Question. ^^ How fast can YOU assemble a complete Pandora including sensitive LCD-ribbon-roll? ;) </div></div><br />
<br />
I won&#39;t assemble a complete Pandora, as there are different assembly station and each one does a different thing ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,212,1,2,836411,'Official Blog Post','2010-04-06 15:44:10','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836411','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836403''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>MooTheKow, on 06 April 2010 - 04:22 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836396''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 06 April 2010 - 10:08 AM, said:</p><div class="blockquote"><div class=''quote''>No need asking questions over and over again that nobody can answer, is there?<br />
<br />
Longest time is probably taking assembly, so until we got a bit of routine assembling the Pandoras there&#39;s no way to tell how fast we can assemble.</div></div><br />
<br />
New question -- when are people planning on doing things like... buying tickets to fly to the UK?</div></div><br />
<br />
Fatih already got a ticket, I have to wait until hockey season is over here (we&#39;re currently in the playoffs) as I do live video mixing there.<br />
I&#39;m probably joining assembly later.<br />
<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836406''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Dead1nside, on 06 April 2010 - 04:33 PM, said:</p><div class="blockquote"><div class=''quote''>I was a bit saddened when you said that if you want faster than that, perhaps you should wait for the next batch. I just hope MWeston can perfect it in time. I understand at the moment you&#39;ve got quite a few stressed customers, and you&#39;re all working so hard on it. I just think it&#39;s worth a week or so if needs be. God knows we&#39;ve waited for the cases forever.</div></div><br />
<br />
Well, what should we tell you? If WiFi is completely fixable, you&#39;re fine :) <br />
If it will be usable for almost all things I can imagine I want to use it for, but not fullspeed and you really NEED it fullspeed, there&#39;s no other thing than either waiting or use a WiFi dongle. We are no magicians :) <br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>On the cases, what was the discolouration you mentioned? I haven&#39;t noticed any in the pictures. If it&#39;s about that outline of the internal structure on the case, I&#39;m pretty satisfied that all the incremental improvements up to now will have improved it enough for it to be acceptable.</div></div><br />
<br />
Yep, it was that outline.
						
						<br />');
INSERT INTO posts VALUES(NULL,213,1,2,836398,'Pandora Wi-Fi On 350kilobytes/s','2010-04-06 15:09:18','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__836398','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836350''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>fusion_power, on 06 April 2010 - 02:24 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836337''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 06 April 2010 - 02:57 PM, said:</p><div class="blockquote"><div class=''quote''>I&#39;m sure you will be delighted to know Michael saw 606KB last night.</div></div><br />
By the way, I still miss MWeston in the boards here to celebrate with us. ^^</div></div><br />
<br />
He&#39;s still too busy improving and testing the fix :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,214,1,2,836396,'Official Blog Post','2010-04-06 15:08:14','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836396','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836392''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Wolfsclaw, on 06 April 2010 - 04:01 PM, said:</p><div class="blockquote"><div class=''quote''>With all these and definitive upcoming delays, and with the time needed for every resistor fix and assembly plus shipping time, i suppose nr. ~1500 where i&#39;m probably at right now won&#39;t find its way to me before, let me guess, two months....?</div></div><br />
<br />
No need asking questions over and over again that nobody can answer, is there?<br />
<br />
Longest time is probably taking assembly, so until we got a bit of routine assembling the Pandoras there&#39;s no way to tell how fast we can assemble.
						
						<br />');
INSERT INTO posts VALUES(NULL,215,1,2,836394,'Official Blog Post','2010-04-06 15:05:25','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836394','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836389''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Caine, on 06 April 2010 - 03:57 PM, said:</p><div class="blockquote"><div class=''quote''>You claim WiFi issues have been resolved. <br />
<br />
Should I read this as that you believe 606 KB/s is a decent speed for 802.11g or that you&#39;re confident that the remaining speed improvements are all software related? <br />
<br />
Don&#39;t get me wrong, I&#39;m very glad that MWeston managed to achieve a usable WiFi speed. However, we ordered a device with an 802.11b/g chip, not just an 802.11b.</div></div><br />
<br />
If you read the blog, you could see that MWeston only did tests with normal internet yet (5Mbps line, as I know now), so he as long as he doesn&#39;t setup a connection between his server and the Pandora, he probably can&#39;t squeeze out more of it.<br />
He is also still working on tweaking and managed speed doubling in about four hours.<br />
<br />
Until all tests have been finished, we can&#39;t say more about that.<br />
<br />
If the speed is not sufficient enough for you, you probably need to wait for a later revision.<br />
<br />
It&#39;s enough for normal internet surfing, video streaming, Audio streaming, Messenging, etc.<br />
<br />
Sometimes I do wonder what you guys are planning to do with your Pandora...?
						
						<br />');
INSERT INTO posts VALUES(NULL,216,1,2,836385,'Official Blog Post','2010-04-06 14:45:48','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836385','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836381''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>WizardStan, on 06 April 2010 - 03:43 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836369''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 06 April 2010 - 10:13 AM, said:</p><div class="blockquote"><div class=''quote''>Fatih is still waiting for a confirmation from the chinese factory that they can also ship Thursday / Friday (they did tell him they will do it yesterday, but didn&#39;t 100% confirm it yet)</div></div><br />
They did also say they would ship March 18th.  Then a few days later.  Then a few days later. :P </div></div><br />
<br />
In best case, yes. However, there was a stability issue that caused the cases to be delayed until 26th (I did post that somewhere in a thread).<br />
And on that date, we already knew something was up with WiFi and gave them more time :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,217,1,2,836375,'Touchscreen Vs. Mouse','2010-04-06 14:32:08','http://www.gp32x.com/board/index.php?/topic/52836-touchscreen-vs-mouse/page__view__findpost__p__836375','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836303''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Michie4life, on 06 April 2010 - 12:27 PM, said:</p><div class="blockquote"><div class=''quote''>maybe possibility to move the mouse with the analogue gaming controls.</div></div><br />
<br />
That does work already, yes.<br />
<br />
However, even mouse emulation for Amiga / Atari ST, etc. COULD be done using touchscreen.<br />
It&#39;s just that someone needs to code it.<br />
<br />
i.e. you could remember where you last touched the screen and calculate a movement for the Amiga mouse when you touch the touchscreen at a new spot.<br />
Then the emulator needed to simulate a mouse movement as fast as possible between those two spots.<br />
<br />
Another thing might be manipulating the cursor directly in the Amiga RAM.<br />
AFAIR the mouse on the Amiga could move itself, that does mean there should be an area where the current position of the mousepointer is stored.<br />
So you could directly manipulate that using the touchscreen values.
						
						<br />');
INSERT INTO posts VALUES(NULL,218,1,2,836369,'Official Blog Post','2010-04-06 14:13:59','http://www.gp32x.com/board/index.php?/topic/52852-official-blog-post/page__view__findpost__p__836369','If WiFi can be fixed, there&#39;s no need for a new Rev :) <br />
<br />
We will assemble ALL 4000 Pandoras ourselves, the remaining units will probably arrive in smaller batches while we&#39;re assembling :) <br />
<br />
We just received the confirmation that the boards and LCDs will be shipped in Thursday or Friday.<br />
Fatih is still waiting for a confirmation from the chinese factory that they can also ship Thursday / Friday (they did tell him they will do it yesterday, but didn&#39;t 100% confirm it yet)
						
						<br />');
INSERT INTO posts VALUES(NULL,219,1,2,836332,'How Much Of A Delay Is The Resistor Issue Going To Cause?','2010-04-06 12:44:17','http://www.gp32x.com/board/index.php?/topic/52850-how-much-of-a-delay-is-the-resistor-issue-going-to-cause/page__view__findpost__p__836332','Blog post coming in the next 30 minutes.
						
						<br />');
INSERT INTO posts VALUES(NULL,220,1,2,836307,'How Much Of A Delay Is The Resistor Issue Going To Cause?','2010-04-06 11:47:22','http://www.gp32x.com/board/index.php?/topic/52850-how-much-of-a-delay-is-the-resistor-issue-going-to-cause/page__view__findpost__p__836307','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836304''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>gibberish, on 06 April 2010 - 12:28 PM, said:</p><div class="blockquote"><div class=''quote''>Are you still planning to begin shipping this month?<br />
Have the cases and boards left the factories now?<br />
Is the Production Line ready to start or are you still sorting it out?</div></div><br />
<br />
Is there a need to open new threads always asking the same things?<br />
Couldn&#39;t you wait until we all sorted out and have enough information to give it out officially to all you guys?<br />
We just discovered the fault, let&#39;s just give us a day at least to make all figures and tell you then.<br />
<br />
The mod fix takes about 2 minutes per board, so the new delay will approximately be 1400 minutes (as 700 boards had been produced so far).<br />
Of course, there was the delay until we discovered what was wrong, but that&#39;s over already.<br />
<br />
And yes, we still are planning to begin shipping this month.
						
						<br />');
INSERT INTO posts VALUES(NULL,221,1,2,836029,'Touchscreen Vs. Mouse','2010-04-05 18:33:55','http://www.gp32x.com/board/index.php?/topic/52836-touchscreen-vs-mouse/page__view__findpost__p__836029','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835916''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Multiplex, on 05 April 2010 - 04:00 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835884''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>skeezix, on 05 April 2010 - 03:14 PM, said:</p><div class="blockquote"><div class=''quote''>Touchscreen is a touchscreen device, and many apps are touchscreen aware and treat it like a mouse .. but thats their choice, not automatic function.</div></div><br />
Is that right? My impression was that applications that are not touch-screen aware will receive normal mouse events.</div></div><br />
<br />
That&#39;s not possible, as a mouse MOVES whereas a touchscreen can be touched anywhere so the mouse cursor jumps immediately to that direction.<br />
<br />
In X, the input driver takes care of that, so all normal X apps can work with a touchscreen.<br />
However, for emulation like DosBox, Atari ST, Amiga, etc. this won&#39;t work.<br />
The original system is not aware of a touchscreen, so it cannot let the mouse cursor jump around, it can only move it like it was a mouse.<br />
<br />
Currently, the mouse cursor moves when you move the cursor around with the touchscreen - but it&#39;s not aware when you remove the pen and put it to a different spot. It will not move the mouse pointer there.<br />
Can be fixed, but needs some work.
						
						<br />');
INSERT INTO posts VALUES(NULL,222,1,2,836007,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 17:28:29','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__836007','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836006''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>paddy, on 05 April 2010 - 07:25 PM, said:</p><div class="blockquote"><div class=''quote''>Yeh MWeston is working his ass of just like Ed and Craig and well everyone else i imagine ,all i am<br />
saying is that a retest of all parts would be a good idea ? seeing as it&#39;s the removal ,not replacment<br />
of the resistor.</div></div><br />
<br />
Who is saying this? It&#39;s a replacement of an resistor. For the mods, we stick another one on top since this is faster and easier for producing the rest the correct resistor can be populated so no prob.
						
						<br />');
INSERT INTO posts VALUES(NULL,223,1,2,836001,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 17:17:53','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__836001','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835999''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>paddy, on 05 April 2010 - 07:11 PM, said:</p><div class="blockquote"><div class=''quote''>Ed ,what i am talking about is retesting all parts after the removal of the resistor ,you really ,really<br />
do not know for sure if it will cause a problem else where</div></div><br />
<br />
We really really really do know for sure. Michael designed the whole board and does certainly know what part does what.<br />
There&#39;s a crystal that gives the module a 26MHz clock, and the curve is optimized by some parts.<br />
Those parts have ABSOLUTELY nothing to do with any other busses on the Pandora.<br />
On the old boards without WiFi they didn&#39;t even exist.
						
						<br />');
INSERT INTO posts VALUES(NULL,224,1,3,837271,'Putting A Cellphone In This Thing?','2010-04-08 13:56:08','http://www.gp32x.com/board/index.php?/topic/52870-putting-a-cellphone-in-this-thing/page__view__findpost__p__837271','I just don&#39;t know where to start with this thread.<br />
<br />
Could you not just buy an n-guage?
						
						<br />');
INSERT INTO posts VALUES(NULL,225,1,3,836897,'I Want To Be A Programmer.','2010-04-07 17:39:19','http://www.gp32x.com/board/index.php?/topic/52846-i-want-to-be-a-programmer/page__view__findpost__p__836897','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836642''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>banjeed, on 07 April 2010 - 04:49 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836563''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 06 April 2010 - 05:50 PM, said:</p><div class="blockquote"><div class=''quote''>(and I can code in ASM, C, Perl, Basic, Pascal, Java etc. etc.)</div></div><br />
What did you think if objective C?  And if you don&#39;t mind me asking,(not to be taken harshly), should I stop holding my breath for Wizzley Presto?</div></div><br />
<br />
Funnily enough I&#39;m just talking with Z about the iPad version. The iPhone one has been finished for ages, I just need to find the time to launch and promote it.<br />
<br />
I hate that it&#39;s just sitting there waiting, but you know how busy I am...
						
						<br />');
INSERT INTO posts VALUES(NULL,226,1,3,836612,'I Want To Be A Programmer.','2010-04-07 01:52:44','http://www.gp32x.com/board/index.php?/topic/52846-i-want-to-be-a-programmer/page__view__findpost__p__836612','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836588''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Sphinxter, on 07 April 2010 - 12:59 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836565''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>beavith, on 06 April 2010 - 04:07 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=836563''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 06 April 2010 - 05:50 PM, said:</p><div class="blockquote"><div class=''quote''>I&#39;d recommend something like <a href=''http://www.purebasic.com/'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://www.purebasic.com/</a> too.<br />
<br />
Excellent for quickly seeing results while learning how programming works. Also has a good support forum.<br />
<br />
Don&#39;t let people put you off basic, it is excellent when used for the right things.</div></div><br />
Isn&#39;t it really hard to move from basic, onto more complex languages? At some point I have to move to something like C++....right?</div></div><br />
<br />
Yes and horribly painful too as you&#39;ll have to un-learn everything craigx taught you so why not jump to the head of the class, start with C and save yourself some grief.</div></div><br />
<br />
Balls. You&#39;re just going to put him on a learning curve so hard he will be put off, and when I moved from Basic to C it took me about 10mins to learn the difference. Once you can code in any major language it&#39;s piss easy to pick up another, so why not start with an easy one?<br />
<br />
(and I can code in ASM, C, Perl, Basic, Pascal, Java etc. etc.)<br />
<br />
What I found the most fun for a challenge was Z80 ASM, I used to love that (Gameboy, Arcade emu), but I think he should start with something like Basic and move on to other languages later.<br />
<br />
Depending on what he wants to do, Basic might be all he needs.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 07 April 2010 - 01:53 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,227,1,3,836563,'I Want To Be A Programmer.','2010-04-06 22:50:16','http://www.gp32x.com/board/index.php?/topic/52846-i-want-to-be-a-programmer/page__view__findpost__p__836563','I&#39;d recommend something like <a href=''http://www.purebasic.com/'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://www.purebasic.com/</a> too.<br />
<br />
Excellent for quickly seeing results while learning how programming works. Also has a good support forum.<br />
<br />
Don&#39;t let people put you off basic, it is excellent when used for the right things.
						
						<br />');
INSERT INTO posts VALUES(NULL,228,1,3,836337,'Pandora Wi-Fi On 350kilobytes/s','2010-04-06 12:57:53','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__836337','I&#39;m sure you will be delighted to know Michael saw 606KB last night.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 06 April 2010 - 12:58 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,229,1,3,835990,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 16:54:12','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835990','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835986''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Exophase, on 05 April 2010 - 05:51 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835953''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Polossatik, on 05 April 2010 - 04:52 PM, said:</p><div class="blockquote"><div class=''quote''>Not mentioning that if you need to decrease the value you can simply solder one &quot;on top&quot; of the existing one - no desoldering needed and damn fast to do (under one minute even counting taking the resistor and board and putting it back) by someone who is used to soldering smd&#39;s.<br />
<br />
Even desoldering the existing resistor first will only add a little more time if you use a decent smd workstation.<br />
<br />
Manually changing one resistor should be timewise faster then the assembly process, so ONE person soldering instead of assembling the first 2 day&#39;s or so.</div></div><br />
<br />
Yes of course in my post it was under the assumption that he was replacing the resistor. I don&#39;t know what kind of tools he has available. But I think that it might take longer to do them when you&#39;re doing 500 straight than if you were doing just a few. My figure was for about 10 minutes.. an assumption of less than 1 minute each and doing that for over 8 hours straight is a bit much, especially when that&#39;s supposed to be the extreme end in time&#33; These people are not machines...<br />
<br />
Yeah it&#39;s faster than the overall process but it&#39;s still an extra overhead, which is why I asked if more than MWeston is going to be doing it (because that&#39;s not what was implied). ED says a few minutes, going to assume it&#39;s not a big deal with the rest of the assembly process but unless they have more people it&#39;ll still add a little time overhead.</div></div><br />
<br />
But a lot more preferable to paying for 4000 new boards and 1000 wifi dongles&#33; :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,230,1,3,835978,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 16:42:44','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835978','I&#39;m sure Michael will get back on the wifi once he is awake, so there might be more news today.
						
						<br />');
INSERT INTO posts VALUES(NULL,231,1,3,835914,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 14:00:15','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835914','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835912''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>sverm, on 05 April 2010 - 02:56 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835911''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 05 April 2010 - 09:51 AM, said:</p><div class="blockquote"><div class=''quote''>It&#39;s such a simple issue Michael is just going to do them as we ship them.<br />
<br />
The factory can do the rest.</div></div><br />
<br />
If I interpret this correctly, do you mean that for the boards already populated, Michael will be making a manual adjustment (God bless his patience&#33;); and for all future not-yet-populated boards, the factory will be doing the fix right from the start of the manufacture?</div></div><br />
<br />
Yes. It&#39;s just a resistor change.
						
						<br />');
INSERT INTO posts VALUES(NULL,232,1,3,835911,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 13:51:59','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835911','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835909''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>RajTakhar, on 05 April 2010 - 02:50 PM, said:</p><div class="blockquote"><div class=''quote''>guys - before the flamin starts<br />
<br />
changing a resistor is not a big issue - its relatively easy<br />
<br />
compared to changing any of the larger surface mounted stuff</div></div><br />
<br />
It&#39;s such a simple issue Michael is just going to do them as we ship them.<br />
<br />
The factory can do the rest.
						
						<br />');
INSERT INTO posts VALUES(NULL,233,1,3,835902,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 13:46:17','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835902','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835899''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>RajTakhar, on 05 April 2010 - 02:45 PM, said:</p><div class="blockquote"><div class=''quote''>do we know how it got fixed?<br />
<br />
I mean was it from fault finding/de-bugging or the other thread yesterday about drivers?<br />
<br />
Great news either way</div></div><br />
<br />
It was a resistor
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 05 April 2010 - 01:46 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,234,1,3,835890,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 13:33:27','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835890','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835886''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>GeneralZod, on 05 April 2010 - 02:26 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835850''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 05 April 2010 - 01:40 PM, said:</p><div class="blockquote"><div class=''quote''>What would people take as a minimum speed?</div></div><br />
<br />
350KB/s is fine by me - bet this is all a huge relief to you guys :) </div></div><br />
<br />
It is indeed. First bit of good news in a while.
						
						<br />');
INSERT INTO posts VALUES(NULL,235,1,3,835874,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 13:06:42','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835874','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835868''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Mutilator, on 05 April 2010 - 02:01 PM, said:</p><div class="blockquote"><div class=''quote''>great news, what was the cause of the slow speeds in the end?</div></div><br />
<br />
Michael might post a more accurate explanation, but in simple terms it was a lack of power.
						
						<br />');
INSERT INTO posts VALUES(NULL,236,1,3,835865,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 12:58:42','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835865','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835861''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Restless, on 05 April 2010 - 01:51 PM, said:</p><div class="blockquote"><div class=''quote''>Just To clarify is this Kilo &quot;Btye&#39;s&quot; or kilo &quot;Bits&quot;?<br />
<br />
<br />
<br />
<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835854''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>RenegadeChic, on 05 April 2010 - 08:45 AM, said:</p><div class="blockquote"><div class=''quote''>for browsing, 350KB/s is marvellous&#33; i am more than happy with that<br />
<br />
as far as streaming around the house goes... well the pandora is only really gonna be receiving for me at most. any video watching i do with it will probably be taking it to someone elses house and using the TV-Out or something</div></div></div></div><br />
<br />
KB.
						
						<br />');
INSERT INTO posts VALUES(NULL,237,1,3,835850,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 12:40:49','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835850','What would people take as a minimum speed?
						
						<br />');
INSERT INTO posts VALUES(NULL,238,1,3,835849,'[Analysis] Retrospecter Pandora','2010-04-05 12:39:13','http://www.gp32x.com/board/index.php?/topic/52789-analysis-retrospecter-pandora/page__view__findpost__p__835849','Best thread in weeks :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,239,1,3,835843,'Pandora Wi-Fi On 350kilobytes/s','2010-04-05 12:21:43','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__835843','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835841''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>(naw)mcx, on 05 April 2010 - 01:17 PM, said:</p><div class="blockquote"><div class=''quote''>I guess that&#39;s something.<br />
<br />
Not exactly too useful, for me, but yay, I guess.</div></div><br />
<br />
<br />
Lucky you, my internet connection is 120KB/s tops.
						
						<br />');
INSERT INTO posts VALUES(NULL,240,1,3,835629,'Icontrolpad Updates&#33;','2010-04-04 17:07:41','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835629','I see what you&#39;re saying, but go in to any computer or car accessories shop and you wills see third party add ons.<br />
<br />
We probably will add the google phone, but if we keep &#39;hiding&#39; from apple, where would that stop?
						
						<br />');
INSERT INTO posts VALUES(NULL,241,1,3,835603,'Icontrolpad Updates&#33;','2010-04-04 14:58:03','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835603','Whatever you run on the iPhone is what makes the ICP work with the iPhone, the ICP does not &#39;hack the iphone&#39; in any way.<br />
<br />
It&#39;s just a controller, it would equally work on the PC if you wrote software for it, or, as has been said, the google phone.
						
						<br />');
INSERT INTO posts VALUES(NULL,242,1,3,835326,'Icontrolpad Updates&#33;','2010-04-03 13:36:52','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835326','This vid:<br />
<br />
<a href=''http://www.youtube.com/watch?v=P7Y3JhEcBzQ&amp;feature=related'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://www.youtube.c...feature=related</a><br />
<br />
At 1:28 has a crazy enclosure for the ZX Spectrum, one of several.
						
						<br />');
INSERT INTO posts VALUES(NULL,243,1,3,835321,'Icontrolpad Updates&#33;','2010-04-03 13:26:27','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835321','<img src=''http://the-gadgeteer.com/assets/gamepad3.jpg'' alt=''Posted Image'' class=''bbc_img'' />
						
						<br />');
INSERT INTO posts VALUES(NULL,244,1,3,835319,'[Analysis] Retrospecter Pandora','2010-04-03 13:24:28','http://www.gp32x.com/board/index.php?/topic/52789-analysis-retrospecter-pandora/page__view__findpost__p__835319','Oh gads, those GP32Spain guys. I&#39;m disappointed the photos are not of me, or of Ed.<br />
<br />
But it is so funny how they have always wished the Pandora would fail LOL ROFL ZMG then we would have to just all develop for the Wiz&#33;&#33;&#33;&#33;&#33;&#33;11 Who needs a stupid attempt to advance to scene, ROFL LOL. Pandora sux&#33;1<br />
<br />
etc.<br />
<br />
Well, time to get back to real work.
						
						<br />');
INSERT INTO posts VALUES(NULL,245,1,3,835309,'Icontrolpad Updates&#33;','2010-04-03 13:05:02','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835309','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835285''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>iprice, on 03 April 2010 - 11:19 AM, said:</p><div class="blockquote"><div class=''quote''>Craig, why on earth didn&#39;t you patent the device when you came up with the design? It was new, it was original - why did you not try to protect that? <br />
<br />
I know that it&#39;s easy to look back in hind-sight and say that&#39;s obvious now, but having not done so is looking likely to cause you severe difficulties. :( <br />
<br />
better get the Pandora patented before Apple tries to &quot;re-create&quot; that too :P </div></div><br />
<br />
We do have the IP for it, but you can get clip on joypads for PDAs and there was even one for the ZX spectrum back in the 80&#39;s - people have posted various photos to the slashdot article.<br />
<br />
The issue here isn&#39;t that we don&#39;t have a patent, it is that Apple filed a patent for something we created.
						
						<br />');
INSERT INTO posts VALUES(NULL,246,1,3,835236,'Icontrolpad Updates&#33;','2010-04-03 02:28:11','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835236','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835235''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Lingman, on 03 April 2010 - 03:15 AM, said:</p><div class="blockquote"><div class=''quote''>One thing you may want to be aware of is something called &quot;swearing behind&quot; a patent date.  Essentially means they can claim that they invented it a year before they filed it, and that trumps art published in the intervening time.  What&#39;s the earliest you guys published disclosed your concept?<br />
(not a patent agent/laywer, but I get paid looking for patent infringement)<br />
<br />
Dan.</div></div><br />
<br />
The problem here is the difference between UK and USA law. This is why I need to speak to people this week and lay out a plan of action. (But I intend to keep everything that happens public).
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 03 April 2010 - 02:28 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,247,1,3,835228,'Icontrolpad Updates&#33;','2010-04-03 01:40:13','http://www.gp32x.com/board/index.php?/topic/52310-icontrolpad-updates/page__view__findpost__p__835228','The funny thing is Apple won&#39;t stop the ICP, if they did shut us down a Chinese company will just clone it and flood the market.<br />
<br />
Things should get interesting this month though Pandora building AND ICP building AND Apple trying to stop the ICP.<br />
<br />
Why can&#39;t we ever get a quiet month?
						
						<br />');
INSERT INTO posts VALUES(NULL,248,1,3,835179,'Eds Wifi Stick','2010-04-02 22:37:05','http://www.gp32x.com/board/index.php?/topic/52779-eds-wifi-stick/page__view__findpost__p__835179','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835163''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>cixelsyd, on 02 April 2010 - 11:07 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835102''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 02 April 2010 - 09:09 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=835100''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>paddy, on 02 April 2010 - 09:06 PM, said:</p><div class="blockquote"><div class=''quote''>Actuly i just thought about this and it doesn&#39;t add up to me ,right now 1000x wifi stick<br />
are setting OP back &#163;7 a stick and they are getting them at that price as they are buying in bulk<br />
so the grand total is &#163;7000 ,now that is quite alot of money for only 1000 customers<br />
but couldnt that &#163;7000 pay for a driver ? then all is fixed and even the first 1000 customers<br />
will be more happy to get working wifi.<br />
<br />
I mean where did this chip come from ,what other devices use the same chip on an arm OS ?<br />
there must be a driver out there that should work ? i do also understand that while we wait<br />
OP are testing the chip for a hardware issue and that in the mean time it would be pointless<br />
to aquire such a driver at cost ifthe hardware is to fault ,but then again if the hardware<br />
is to fault in some way ,then can&#39;t the chip just be reordered in a working fashion.</div></div><br />
<br />
We already wasted thousands of pounds on a &#39;wifi expert&#39; called [NAME REMOVED BY REQUEST], an ex-ti employee and we got nothing.</div></div><br />
I remember that being mentioned.<br />
The thing what i am amazed about is that you thought that the ex-ti fellow did not do a good job while now it may be hardware.<br />
Didn&#39;t you think back then to check the hardware if it was bullet proof.<br />
You should have don the test then on the hardware what you are going to do now.<br />
I know it may still be software but the hardware should have had all the possible checks back then.<br />
Yet again someone else got used as scapegoat while OP neglected to do all the needed test.<br />
Now there are more delays.Just for ones it would be nice to hear you say &quot;well we came short sorry&quot;<br />
And if the name you gave here is a real name than that is a show of bad manner.</div></div><br />
<br />
Unfortunately you have no idea what you are talking about.
						
						<br />');
INSERT INTO posts VALUES(NULL,249,1,4,837468,'Random Memorabilia With Order?','2010-04-09 01:16:11','http://www.gp32x.com/board/index.php?/topic/52864-random-memorabilia-with-order/page__view__findpost__p__837468','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837461''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>darien, on 08 April 2010 - 06:50 PM, said:</p><div class="blockquote"><div class=''quote''>It was cool when the silk screening was going to say First Batch. But then...</div></div><br />
Now the battery compartment sticker says it.
						
						<br />');
INSERT INTO posts VALUES(NULL,250,1,4,837164,'Random Memorabilia With Order?','2010-04-08 07:18:13','http://www.gp32x.com/board/index.php?/topic/52864-random-memorabilia-with-order/page__view__findpost__p__837164','I&#39;ll start collecting finger nail clippings, skin flakes and loose body hair immediately. :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,251,1,4,837104,'Keyboard Leds Possible Mod ?','2010-04-08 02:33:13','http://www.gp32x.com/board/index.php?/topic/52854-keyboard-leds-possible-mod/page__view__findpost__p__837104','I&#39;ve pulled the LCD closer to the keyboard many times to see the keys when playing on the couch in the dark (a couple of late night N64 game sessions several months ago).  It helps a lot.<br />
<br />
Also, the KP_BL pads can sink 160mA and the source is the battery directly.  The + side is the battery and the - side is the FET in the TPS65950 sinking the current with PWM control available.  As you can tell, that means no current limiting so 160mA is the safe number but you have to use resistors to be sure you don&#39;t fry anything yourself.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: Yesterday, 02:35 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,252,1,4,837102,'Pandora Wi-Fi On 350kilobytes/s','2010-04-08 02:29:31','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837102','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837051''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>DroneB Dev, on 07 April 2010 - 06:08 PM, said:</p><div class="blockquote"><div class=''quote''>im more worried about range (tx/rx) performance, i do really hate chips so low TX power that even sitting under the router still have some issues.</div></div><br />
This interests me too.  I live in a concrete apartment building.  I could walk the floors and stairwells with no interruption to my internet radio.  I went for a walk and got four houses down the block before it wasn&#39;t able to keep the buffer loaded enough to play the stream.<br />
<br />
It also played fine whether the lid was open or completely closed and with the unit in my hand (although performance does degrade on high speed stuff if you cover the antenna with your hand).<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837100''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>amf66, on 07 April 2010 - 08:27 PM, said:</p><div class="blockquote"><div class=''quote''>Awesome&#33; It still amazes me that one tiny resistor can make such a huge difference. Tells you a lot about how much clock speeds matter.</div></div><br />
The resistor was the series resistance in the oscillator driver.  I did change it once on a previous revision but since there were no complaints back in the day, I kept it larger for lower current consumption.  The wifi clock requires a very strict clock profile so I had to decrease this resistance to drive the crystal harder (larger voltage swing), increase the bandwidth and put the crystal into a tighter range around resonance.  It probably means an extra mA or two of constant current drain so not a big issue in that respect.
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: Yesterday, 02:40 AM
								
							</p>');
INSERT INTO posts VALUES(NULL,253,1,4,837042,'Pandora Wi-Fi On 350kilobytes/s','2010-04-07 23:53:42','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__837042','Posting from a Pandora over wifi as well.  It&#39;s pretty quick to browse websites now.  Firefox itself is a bit chuggy with the scrolling but ED has told me about a dozen others in the Angstrom repo to try.<br />
<br />
I hit 315KB/s downloading a pnd from ED&#39;s site a few minutes ago.  It was still climbing when the file finished (was only 5MB).  I should try to make a video of this later.<br />
<br />
P.S. Yes, transferring a file from my PC would be smarter but I have to figure out how to do that still.  I normally turn anything like that off for security reasons.  I don&#39;t think I&#39;ve done file sharing since the headache-y days of Win98&#33;
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>MWeston</b>: 07 April 2010 - 11:58 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,254,3,3,'http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.','2010-04-07 17:31:17','http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.');
INSERT INTO posts VALUES(NULL,255,3,3,'http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.','2010-04-06 13:10:38','http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.');
INSERT INTO posts VALUES(NULL,256,3,3,'http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.','2010-04-06 13:02:42','http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.');
INSERT INTO posts VALUES(NULL,257,3,3,'http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.','2010-04-05 12:30:43','http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.');
INSERT INTO posts VALUES(NULL,258,3,3,'http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.','2010-04-05 12:21:52','http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.');
INSERT INTO posts VALUES(NULL,259,3,3,'http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.','2010-04-05 11:49:37','http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.');
INSERT INTO posts VALUES(NULL,260,3,3,'http://twitter.com/Craigix/statuses/11558365599','Craigix: Spent all day reading up on patent law in the USA and Europe, not going to post our video until we get advice from our IP lawyer.','2010-04-03 23:34:42','http://twitter.com/Craigix/statuses/11558365599','Craigix: Spent all day reading up on patent law in the USA and Europe, not going to post our video until we get advice from our IP lawyer.');
INSERT INTO posts VALUES(NULL,261,3,3,'http://twitter.com/Craigix/statuses/11512117536','Craigix: Tomorrow I''ll post a public video on Youtube speaking directly to Apple.','2010-04-03 02:05:09','http://twitter.com/Craigix/statuses/11512117536','Craigix: Tomorrow I''ll post a public video on Youtube speaking directly to Apple.');
INSERT INTO posts VALUES(NULL,262,3,3,'http://twitter.com/Craigix/statuses/11507116603','Craigix: Thank you to everyone who is getting this story out there, the power of twitter is quite fantastic.','2010-04-03 00:03:39','http://twitter.com/Craigix/statuses/11507116603','Craigix: Thank you to everyone who is getting this story out there, the power of twitter is quite fantastic.');
INSERT INTO posts VALUES(NULL,263,3,3,'http://twitter.com/Craigix/statuses/11505924276','Craigix: Slashdot have posted the story too! http://bit.ly/cE2Y4J wow!','2010-04-02 23:32:30','http://twitter.com/Craigix/statuses/11505924276','Craigix: Slashdot have posted the story too! http://bit.ly/cE2Y4J wow!');
INSERT INTO posts VALUES(NULL,264,3,3,'http://twitter.com/Craigix/statuses/11497021349','Craigix: @iphonehellas Thanks, will link from site in next update.','2010-04-02 19:33:00','http://twitter.com/Craigix/statuses/11497021349','Craigix: @iphonehellas Thanks, will link from site in next update.');
INSERT INTO posts VALUES(NULL,265,3,3,'http://twitter.com/Craigix/statuses/11494519153','Craigix: PocketGamer are the first site to cover the story: http://www.pocketgamer.co.uk/r/iPhone/iControlpad/news.asp?c=19637','2010-04-02 18:31:42','http://twitter.com/Craigix/statuses/11494519153','Craigix: PocketGamer are the first site to cover the story: http://www.pocketgamer.co.uk/r/iPhone/iControlpad/news.asp?c=19637');
INSERT INTO posts VALUES(NULL,266,3,3,'http://twitter.com/Craigix/statuses/11492243262','Craigix: @TheBisquick  We have the IP on the design.','2010-04-02 17:40:12','http://twitter.com/Craigix/statuses/11492243262','Craigix: @TheBisquick  We have the IP on the design.');
INSERT INTO posts VALUES(NULL,267,3,3,'http://twitter.com/Craigix/statuses/11490428930','Craigix: Just got confirmation - apple really have patented our iControlPad design. We need to make this as public as possible. icontrolpad.com','2010-04-02 17:01:46','http://twitter.com/Craigix/statuses/11490428930','Craigix: Just got confirmation - apple really have patented our iControlPad design. We need to make this as public as possible. icontrolpad.com');
INSERT INTO posts VALUES(NULL,268,3,3,'http://twitter.com/Craigix/statuses/11488681616','Craigix: @CymonsGames They won''t be cutting us off. We have the IP on the design as well as prior art.','2010-04-02 16:26:05','http://twitter.com/Craigix/statuses/11488681616','Craigix: @CymonsGames They won''t be cutting us off. We have the IP on the design as well as prior art.');
INSERT INTO posts VALUES(NULL,269,3,3,'http://twitter.com/Craigix/statuses/11487585421','Craigix: @mycon I have no doubt that apple are going to come after us now, I''ve already emailed my IP attorney in the UK. I''ll keep you updated.','2010-04-02 16:04:06','http://twitter.com/Craigix/statuses/11487585421','Craigix: @mycon I have no doubt that apple are going to come after us now, I''ve already emailed my IP attorney in the UK. I''ll keep you updated.');
INSERT INTO posts VALUES(NULL,270,3,3,'http://twitter.com/Craigix/statuses/11487058530','Craigix: I find this, filed 6 months after we revealed the exact same design, to be highly sinister: http://bit.ly/broJyv - shame it isn''t april 1st.','2010-04-02 15:53:42','http://twitter.com/Craigix/statuses/11487058530','Craigix: I find this, filed 6 months after we revealed the exact same design, to be highly sinister: http://bit.ly/broJyv - shame it isn''t april 1st.');
INSERT INTO posts VALUES(NULL,271,3,3,'http://twitter.com/Craigix/statuses/11486849239','Craigix: @captainhairy That is very sinister indeed.','2010-04-02 15:49:32','http://twitter.com/Craigix/statuses/11486849239','Craigix: @captainhairy That is very sinister indeed.');
INSERT INTO posts VALUES(NULL,272,3,3,'http://twitter.com/Craigix/statuses/11486075498','Craigix: Video of Ed using a mini-wifi stick: http://www.youtube.com/watch?v=lRL4zi35nVU&playnext_from=TL&videos=TPyGGQC5P2w&feature=sub','2010-04-02 15:34:22','http://twitter.com/Craigix/statuses/11486075498','Craigix: Video of Ed using a mini-wifi stick: http://www.youtube.com/watch?v=lRL4zi35nVU&playnext_from=TL&videos=TPyGGQC5P2w&feature=sub');
INSERT INTO posts VALUES(NULL,273,4,2,'http://gdata.youtube.com/feeds/base/videos/lRL4zi35nVU','Pandora: Surfing the Web with a tiny WiFi stick','2010-04-02 13:39:32','http://www.youtube.com/watch?v=lRL4zi35nVU&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=lRL4zi35nVU&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/lRL4zi35nVU/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=lRL4zi35nVU&amp;feature=youtube_gdata">Pandora: Surfing the Web with a tiny WiFi stick</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>Okay, as promised, here is a video where I show web surfing with the tiny WiFi stick.
WebKit hasn&#39;t been fixed yet so there are little rendering errors, but that shouldn&#39;t be a problem and will probably be fixed soon.
I also show Exaile playing streaming some music as well as downloading PNDs directly onto the SD Card and popping up in the menu.

MiniMenu also makes a debut in this video, and also a new PND-Feature: Documentations and Help.

Sorry for the sound and picture quality this time, I was in a rush and the microphone did act up... as well as the brightness was set too high on the camera.</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
5074</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_half_11x11.gif"></div>
<div style="font-size: 11px;">45
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">08:15</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,274,1,1,838216,'New Picture','2010-04-11 09:59:31','http://www.gp32x.com/board/index.php?/topic/52894-new-picture/page__view__findpost__p__838216','Hehehhe.. I like this one.
						
						<br />');
INSERT INTO posts VALUES(NULL,275,1,2,838288,'Fullspeed Amiga Emulation On Pandora&#33;','2010-04-11 15:06:01','http://www.gp32x.com/board/index.php?/topic/44100-fullspeed-amiga-emulation-on-pandora/page__view__findpost__p__838288','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837736''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Gurumeditation, on 09 April 2010 - 11:42 PM, said:</p><div class="blockquote"><div class=''quote''>Hi, some time ago i ask ED because of this theme.<br />
<br />
ED says that the touchscreen works very well but you can only control the cursor. But you cant clicking on the screen, that the cursor chance his position.<br />
So you must drag the courser.</div></div><br />
<br />
Yep, that&#39;s something that needs to be coded, as the Amiga doesn&#39;t know what a touchscreen is, it only has a mouse and a mouse can&#39;t jump around.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>And I think ED says that doubleclicking is also not possible.</div></div><br />
<br />
Now I do wonder... why shouldn&#39;t it?
						
						<br />');
INSERT INTO posts VALUES(NULL,276,1,2,838286,'Case Finish?','2010-04-11 14:45:58','http://www.gp32x.com/board/index.php?/topic/52906-case-finish/page__view__findpost__p__838286','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838252''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>WizardStan, on 11 April 2010 - 02:28 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838243''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>fusion_power, on 11 April 2010 - 07:58 AM, said:</p><div class="blockquote"><div class=''quote''>Painting the cases never was the deal or even mentioned by the Pandora Team, so they can&#39;t actualy paint the cases.</div></div><br />
Yes they can.  They didn&#39;t say there weren&#39;t going to paint the case so it&#39;s not like you can claim &quot;false advertising&quot; if they do.</div></div><br />
<br />
I also can&#39;t remember Nintendo telling me they will sell me a painted case with the Nintendo DS - and in fact, the old Nintendo DS IS painted.
						
						<br />');
INSERT INTO posts VALUES(NULL,277,1,2,838049,'New Picture','2010-04-10 21:25:53','http://www.gp32x.com/board/index.php?/topic/52894-new-picture/page__view__findpost__p__838049','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838001''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Sugar_Kane, on 10 April 2010 - 07:37 PM, said:</p><div class="blockquote"><div class=''quote''>There is a kind of spray paint that actually bonds with plastic, which means it will never chip or wear off. I know that Krylon Fusion is one brand, but I&#39;m having trouble finding it, or an alternative in the UK. Anyway, if you&#39;re in the US you should be able to get your hands on some with ease should you want to change the colour of your Pandora.</div></div><br />
<br />
Well, I used such paint for my white GP32 NLU years ago and was playing daily... didn&#39;t wear off yet :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,278,1,3,838592,'Fullspeed Amiga Emulation On Pandora&#33;','2010-04-12 09:19:06','http://www.gp32x.com/board/index.php?/topic/44100-fullspeed-amiga-emulation-on-pandora/page__view__findpost__p__838592','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838390''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Dunny, on 11 April 2010 - 09:04 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838343''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>WizardStan, on 11 April 2010 - 07:22 PM, said:</p><div class="blockquote"><div class=''quote''>The Amiga mouse doesn&#39;t do any X/Y translation.  It just passes &quot;mouse moved left X points&quot;, &quot;mouse moved up Y points&quot;, etc...<br />
By contrast, a touchscreen is a direct X/Y system.<br />
What needs to happen in order to work with the Amiga emulator is to somehow take the exact positions that the touchscreen provides and translate them to relative positions for the amiga programs.  If different programs have different mouse &quot;resolutions&quot;, then this will be even more difficult.<br />
In short, possible, but only after a lot of work and experimentation.</div></div><br />
<br />
Yes, it&#39;s perfectly possible - if I&#39;ve done it for a speccy mouse (which uses the same mechanism as an amiga mouse, but with interrupts for directional movements) then it can be done for the Amiga. Each app which uses the mouse will need to be patched. As everyone will be using a Workbench, it will be a good place to start adding a patch to the ROM libs to utilise a touchscreen. From there, you&#39;ll have to patch individual games but it shouldn&#39;t be too hard, and there&#39;s not many games that will need it - mouse controlled games were far outnumbered by those controlled by joystick or keys.<br />
<br />
D.</div></div><br />
<br />
I find this solution to be unlikely at best.<br />
<br />
Thousands of games, hundreds of which used the mouse somewhere in them, then you have to work out how each program stored the mouse coords (that won&#39;t be a fun job), then see if the program will actually allow you to poke in a new value/patch without some kind of ancient copy protection kicking in, then work out a way of having the emulator identify which game needs which patch and when it needs the patch (those memory locations may well be used for something else when the mouse isn&#39;t on the screen) ... urgh... it&#39;s getting messy...
						
						<br />');
INSERT INTO posts VALUES(NULL,279,1,3,838516,'How About The 720Mhz Omap For The Second Batch?','2010-04-12 01:12:01','http://www.gp32x.com/board/index.php?/topic/52890-how-about-the-720mhz-omap-for-the-second-batch/page__view__findpost__p__838516','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838318''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Exophase, on 11 April 2010 - 05:47 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838304''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>craigix, on 11 April 2010 - 05:04 PM, said:</p><div class="blockquote"><div class=''quote''>You really should not worry. The Pandora2 will almost certainly be an OMAP4 and judging by the OMAP3 time line that&#39;s not going to be ready until at least the end of 2011.<br />
<br />
So maybe you could see some dev units then and a push in mid 2012 for customers.<br />
<br />
In other words, it&#39;s 2 months away.</div></div><br />
<br />
I think you&#39;re going to be eating your words if an OMAP4 device comes out over a year earlier than you project. If TI doesn&#39;t plan on having OMAP4 ready to market in 2010 then they&#39;d probably may as well just exit the market - Tegra 2 can be obtained <em class=''bbc''>today</em>. NEC and NXP have also both announced Cortex-A9 SoCs. With A9 being announced all the way back in 2007 my guess is that some companies skipped out on A8 altogether.<br />
<br />
I wouldn&#39;t judge the OMAP4 release cycle based on OMAP3, which was still the first Cortex-A8 SoC to market after all the time it took to release. TI did claim it&#39;d be sampling in 2010.</div></div><br />
<br />
Being able to buy it does not mean it&#39;s ready. The software needs to be mature too. I think it will take just as long as the OMAP3 has.
						
						<br />');
INSERT INTO posts VALUES(NULL,280,1,3,838304,'How About The 720Mhz Omap For The Second Batch?','2010-04-11 16:04:50','http://www.gp32x.com/board/index.php?/topic/52890-how-about-the-720mhz-omap-for-the-second-batch/page__view__findpost__p__838304','You really should not worry. The Pandora2 will almost certainly be an OMAP4 and judging by the OMAP3 time line that&#39;s not going to be ready until at least the end of 2011.<br />
<br />
So maybe you could see some dev units then and a push in mid 2012 for customers.<br />
<br />
In other words, it&#39;s 2 months away.
						
						<br />');
INSERT INTO posts VALUES(NULL,281,1,3,838303,'Pretty In Pink&#33;','2010-04-11 15:57:47','http://www.gp32x.com/board/index.php?/topic/52911-pretty-in-pink/page__view__findpost__p__838303','Michael is going to put the pink one on ebay when he gets it.
						
						<br />');
INSERT INTO posts VALUES(NULL,282,1,3,838294,'Fullspeed Amiga Emulation On Pandora&#33;','2010-04-11 15:38:25','http://www.gp32x.com/board/index.php?/topic/44100-fullspeed-amiga-emulation-on-pandora/page__view__findpost__p__838294','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837736''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Gurumeditation, on 09 April 2010 - 10:42 PM, said:</p><div class="blockquote"><div class=''quote''>Hi, some time ago i ask ED because of this theme.<br />
<br />
ED says that the touchscreen works very well but you can only control the cursor. But you cant clicking on the screen, that the cursor chance his position.<br />
So you must drag the courser. And I think ED says that doubleclicking is also not possible.<br />
<br />
But whit some optimization of the uae it will be possible.</div></div><br />
<br />
Double clicking is possible, but touch screen for the mouse will never be possible. You will either have to drag the Amiga mouse around or use the nubs.
						
						<br />');
INSERT INTO posts VALUES(NULL,283,1,3,838051,'Pandora Wi-Fi On 350kilobytes/s','2010-04-10 21:29:56','http://www.gp32x.com/board/index.php?/topic/52838-pandora-wi-fi-on-350kilobytess/page__view__findpost__p__838051','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838020''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>GunPei2X, on 10 April 2010 - 08:37 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838018''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mahousaru, on 10 April 2010 - 08:32 PM, said:</p><div class="blockquote"><div class=''quote''>I can still remember the 54k modem days.  Used to have to share it with 5 others too *shudder*</div></div><br />
<br />
I used to think my first 2400bps (i.e. 2.4k) modem was the dog&#39;s bollocks after using a friend&#39;s 1200 baud. Twice as fast - wow&#33; It couldn&#39;t possibly get much faster than that...</div></div><br />
<br />
2.4k? Wishful thinking, you mean (approx) 0.3k.<br />
<br />
I thought I was the &#39;man&#39; when, for my 13th birthday I got a 28.8k modem, imported from the USA. Shame no other bloody person in the UK had one and I had to use it at 14.4k for about a year&#33;
						
						<br />
						<p class=''edit''>
								This post has been edited by <b>craigix</b>: 10 April 2010 - 09:31 PM
								
							</p>');
INSERT INTO posts VALUES(NULL,284,1,3,837806,'New Picture','2010-04-10 01:16:27','http://www.gp32x.com/board/index.php?/topic/52894-new-picture/page__view__findpost__p__837806','It&#39;s all the parts apart from the cases.
						
						<br />');
INSERT INTO posts VALUES(NULL,285,1,3,837805,'How About The 720Mhz Omap For The Second Batch?','2010-04-10 01:15:54','http://www.gp32x.com/board/index.php?/topic/52890-how-about-the-720mhz-omap-for-the-second-batch/page__view__findpost__p__837805','We are not buying the 720 chip because it&#39;s significantly more expensive than the 600 - plus we think that the 600 will clock to 720 anyway.
						
						<br />');
INSERT INTO posts VALUES(NULL,286,1,4,837751,'How About The 720Mhz Omap For The Second Batch?','2010-04-09 22:37:14','http://www.gp32x.com/board/index.php?/topic/52890-how-about-the-720mhz-omap-for-the-second-batch/page__view__findpost__p__837751','My answer from TI on this about the 600/720 chips was:<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Wafers are probed for certain tests. Then they are packaged and fully tested. That is the point at which the binning is done. No SW is run on the devices. They are basically clocked and the timing is checked.<br />
<br />
All this means is that these devices are the fastest possible and will work over the full temp range.<br />
<br />
They test all the parts the same, it just means if the data is better in some areas, it goes into a different box.</div></div><br />
<br />
So as I think myself or someone has mentioned in the past, overclocking a 720 (or even just running at 720) will run cooler than a chip sold as a 600 at the same speed.  The speculation begins as to whether it means everyone can overclock the same as long as you stay in an temperature controlled environment like an office or house where 25C is attainable.  Further speculation based on the Motorola Droid, Palm Pre and Nokia N900 overclock tests suggests that the silicon can gate the data at overclocked speeds but these devices run considerably warmer when pushed so it is unknown if the extra heat will eventually mean their death.  <br />
<br />
If they have 600MHz chips inside, then it is likely they are running hotter than if they are sold with 720 chips.  I don&#39;t know how much hotter the difference is.  It could be as insignificant as 1 degree celcius or it could be 20 degrees (that sounds a bit extreme&#33;).  There&#39;s probably more breathing room in the Pandora case than these phones so that might also benefit overclocking.  Also, since the POP stack on the Pandora PCB is on the bottom side, during normal usage (not setting the unit upside down on your table) all 515 balls will pass the heat of the CPU up to the PCB and dissipate through the copper planes instead of getting trapped in the RAM chip and having to pass through it to the air.  I have no data to suggest this will provide any significant benefit but it seems better than overheating the RAM chip&#33;
						
						<br />');
INSERT INTO posts VALUES(NULL,287,3,2,'http://twitter.com/EvilDragon1717/statuses/12026669176','EvilDragon1717: Okay, enough Pandora-Hacking for today (it''s 5:30 am here...) Time to write a new blog post tomorrow and update the status page... ''night!','2010-04-12 03:27:59','http://twitter.com/EvilDragon1717/statuses/12026669176','EvilDragon1717: Okay, enough Pandora-Hacking for today (it''s 5:30 am here...) Time to write a new blog post tomorrow and update the status page... ''night!');
INSERT INTO posts VALUES(NULL,288,3,2,'http://twitter.com/EvilDragon1717/statuses/12025657456','EvilDragon1717: And another new script: A small user manager that lets you remove and add new users to the system.','2010-04-12 03:05:49','http://twitter.com/EvilDragon1717/statuses/12025657456','EvilDragon1717: And another new script: A small user manager that lets you remove and add new users to the system.');
INSERT INTO posts VALUES(NULL,289,3,2,'http://twitter.com/EvilDragon1717/statuses/12021575205','EvilDragon1717: Just created a new startup/shutdown-script that will save and restore the Gamma and Brightness-Settings of the LCD.','2010-04-12 01:39:50','http://twitter.com/EvilDragon1717/statuses/12021575205','EvilDragon1717: Just created a new startup/shutdown-script that will save and restore the Gamma and Brightness-Settings of the LCD.');
INSERT INTO posts VALUES(NULL,290,3,3,'http://twitter.com/EvilDragon1717/statuses/12026669176','EvilDragon1717: Okay, enough Pandora-Hacking for today (it''s 5:30 am here...) Time to write a new blog post tomorrow and update the status page... ''night!','2010-04-12 03:27:59','http://twitter.com/EvilDragon1717/statuses/12026669176','EvilDragon1717: Okay, enough Pandora-Hacking for today (it''s 5:30 am here...) Time to write a new blog post tomorrow and update the status page... ''night!');
INSERT INTO posts VALUES(NULL,291,3,3,'http://twitter.com/EvilDragon1717/statuses/12025657456','EvilDragon1717: And another new script: A small user manager that lets you remove and add new users to the system.','2010-04-12 03:05:49','http://twitter.com/EvilDragon1717/statuses/12025657456','EvilDragon1717: And another new script: A small user manager that lets you remove and add new users to the system.');
INSERT INTO posts VALUES(NULL,292,3,3,'http://twitter.com/EvilDragon1717/statuses/12021575205','EvilDragon1717: Just created a new startup/shutdown-script that will save and restore the Gamma and Brightness-Settings of the LCD.','2010-04-12 01:39:50','http://twitter.com/EvilDragon1717/statuses/12021575205','EvilDragon1717: Just created a new startup/shutdown-script that will save and restore the Gamma and Brightness-Settings of the LCD.');
INSERT INTO posts VALUES(NULL,293,3,3,'http://twitter.com/Craigix/statuses/11938164595','Craigix: @Ackieee if we ever did another colour they would, but for now it''s just black on black.','2010-04-10 14:05:19','http://twitter.com/Craigix/statuses/11938164595','Craigix: @Ackieee if we ever did another colour they would, but for now it''s just black on black.');
INSERT INTO posts VALUES(NULL,294,3,3,'http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ','2010-04-10 13:29:58','http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ');
INSERT INTO posts VALUES(NULL,295,3,3,'http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)','2010-04-09 23:26:47','http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)');
INSERT INTO posts VALUES(NULL,296,1,3,837959,'New Picture','2010-04-10 14:16:04','http://www.gp32x.com/board/index.php?/topic/52894-new-picture/page__view__findpost__p__837959','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837957''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mali, on 10 April 2010 - 03:08 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=837953''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>NightArck, on 10 April 2010 - 04:02 PM, said:</p><div class="blockquote"><div class=''quote''>Besides, an option for pink means there&#39;s a good chance for an option of any other colour.</div></div><br />
It&#39;s painted so I suppose there is a standard colour palette available to choose from :) </div></div><br />
<br />
We won&#39;t be doing anything but black for now, changing the paint colour means changing the plastic colour under it (chipping would be an issue if we didn&#39;t).<br />
<br />
But you can see in those photos how smooth the top part is, those marks on the non-painted version make it look as if it isn&#39;t.
						
						<br />');
INSERT INTO posts VALUES(NULL,297,1,2,838848,'Ed&#39;s Upcoming Blog Post','2010-04-13 00:41:30','http://www.gp32x.com/board/index.php?/topic/52928-eds-upcoming-blog-post/page__view__findpost__p__838848','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838839''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Vlynndar, on 13 April 2010 - 02:12 AM, said:</p><div class="blockquote"><div class=''quote''>While I do like blog posts, I hope EvilDragon won&#39;t be making one <em class=''bbc''>right now</em>. It&#39;s two in the morning where he lives.</div></div><br />
<br />
Naaah, still too early right now :) <br />
But it will come in a few hours ;) <br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Though he could make a good batman.</div></div><br />
<br />
Damn, how did you find out? :o 
						
						<br />');
INSERT INTO posts VALUES(NULL,298,1,2,838849,'Is There A Mouse Cursor/pointer Like Thing On The Pandora?','2010-04-13 00:42:58','http://www.gp32x.com/board/index.php?/topic/52929-is-there-a-mouse-cursorpointer-like-thing-on-the-pandora/page__view__findpost__p__838849','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838846''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>skeezix, on 13 April 2010 - 02:32 AM, said:</p><div class="blockquote"><div class=''quote''>You can toggle the nubs to act as mouse, though its not convenient in the UI to turn it on/off yet. Its pretty easy to add a menu item to toggle this mode, and it pops into my head on occasion :P Someone eill do it quick I&#39;m sure.<br />
jeff</div></div><br />
<br />
Yeah, if somebody tells me the userspace commands, I will ;) <br />
I&#39;ve been hacking up a bunch of nice helpful scripts for the UI lately ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,299,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=173%3Aup-in-the-air&catid=2%3Ablog&Itemid=2&lang=en','Up in the air!','2010-04-13 09:50:00','http://www.open-pandora.org/index.php?option=com_content&view=article&id=173%3Aup-in-the-air&catid=2%3Ablog&Itemid=2&lang=en','<p>Well, it looks like I have to revise my last blogpost, as Michael did know a lot more that WAS already happening than I did. And a lot of questions arosed which I also want to reply.<br /></p><p>So, here is a nice addition to my last blog entry:</p><p>1. As said, doing the mod in Turkey was just an <b>OPTION</b> to make things faster, it was <b>NOT set</b> yet (never said that). As it looks, the decision has already been made and the boards are already on their way to UK! (Yay!)</p><p>2. Another new thing I didn''t know yet is that the <b>board production for the rest of the 4000</b> has already been resumed. Makes sense, as the WiFi issue has been resolved.</p><p>3. The cases <b>are going to be shipped on April 17th</b> to UK if they WON''T be painted<b> or April 20th IF they will be painted.</b> After all, the paint is applied <b>AFTER the production</b>, so we can say either <b>DO IT or DON''T do it</b> - depending on how far things are setup in UK and how well everything does fit in the painted case.</p><p><br /></p><p>I hope that makes things a lot clearer - there were a lot of things I didn''t know yet. I did send an email to the team asking for the latest information yesterday, but it seems due to the timzeones it didn''t quite make it in time, so I could only post what I knew we were evaluating.</p><p><br /></p><p>Sorry for all the inconvenience... now, let''s get back to anticipate the Pandora!<br /></p>');
INSERT INTO posts VALUES(NULL,300,2,2,'http://www.open-pandora.org/index.php?option=com_content&view=article&id=172%3Apaint-it-black&catid=2%3Ablog&Itemid=2&lang=en','Paint it Black','2010-04-13 03:21:22','http://www.open-pandora.org/index.php?option=com_content&view=article&id=172%3Apaint-it-black&catid=2%3Ablog&Itemid=2&lang=en','<p>Here we go with the latest updates for the hungry masses!<br />First, 
my apologies for not updating the site a lot. That WiFi issue really did
 wear me out, I wasn''t able to do much during that time. We all were a 
bit demotivated, but now that WiFi''s working, we''ve recovered and are 
working fullspeed ahead!<br />Sorry for that, but after all, we''re only 
human beings, too... and after years of constant work on the Pandora and
 our normal jobs... well, things can get a bit hard.<br /><br /></p><p><br /></p><p><b>1.
 The hardware</b></p><p>Michael has finished working on WiFi and 
did manage to get it working quite well. Stable websurfing at about 500 
KB/s. He tried webbrowsing, streaming music, etc.<br />This put our minds 
on ease, we really were quite scared when we found out about WiFi.<br />We
 now got <b>FULLY WORKING HARDWARE</b>, as we got drivers for 
EVERY component!<br /><br />As can be seen on this picture, there''s a lot of
 boxes shipping to UK. Some might go to Turkey, as Fatih got hold of a 
company who usually does laptop repairs, and they might help to fix the 
WiFi on the already produced 700 boards to speed things up a bit.</p><p>{phocagallery
 view=category|categoryid=17|imageid=154}</p><p>This whole WiFi issue 
did throw as back a few weeks - but I hope you all do agree it''s better 
we took the two weeks finding out what the problem was. Otherwise, you 
would''ve been gotten Pandoras with broken WiFi... not a good idea, if 
you ask me.<br />This seemed to happen for a big, well-known company whose
 latest product has serious WiFi issues (and WiFi working much worse 
than ours...)<br />We rather ship you something working - even if it did 
delay things by two or three more weeks!<br /></p><p><br /></p><p><b>2.
 The cases</b></p><p>While Michael was working on WiFi, the Chinese
 were working on increasing the case quality.<br />And we really do think 
it was worth the extra time - especially the final one that has some 
paint added looks spot-on!<br />Way better than anything we''ve seen 
before!</p><p>{phocagallery view=category|categoryid=19|imageid=153}</p><p>Just
 compare that to an older version of the case...</p><p>{phocagallery 
view=category|categoryid=21|imageid=155}</p><p>Was it worth it? &nbsp;That''s 
up to decide for yourself. We sure do think so.<br /><br />Unfortunately, 
adding paint did lead to one thing that has to be done: As it makes the 
case a bit thicker, Michael needs to approve that case and therefore is 
waiting for a sample.<br />To speed production up, Fatih will visit the 
company in China if necessary to make sure they won''t mess around more 
but start shipping!<br />They still have a few days to ship, as applying 
the WiFi fix to the boards will take a while.</p><p>One thing that might
 interest you: You might have seen that they also painted a pink version
 of the Pandora... Michael will most probably put a Rev 4 board in and 
sell it on eBay soon!<br />Yep, that Prototype will probably be out 
shortly before we assemble and ship!<br /><br />{phocagallery 
view=category|categoryid=21|imageid=156}</p><p><b>So if you want to
 own this case, keep your eyes on our blog!</b></p><p>Oh, some 
might think Painting is cheating... well, not really.<br />A lot of 
companies actually do it that way - and it doesn''t wear off. Remember 
the old Nintendo DS? Not the DS Lite, but the old silvergrey one? I got 
one. Never had a carry case, it''s really scratched (even the LCD is 
scratched).<br />But only on one corner it can be seen it''s painted - and 
only because the base plastic color was white.<br />So black with black 
won''t wear off - don''t worry. It will simply LOOK better.<br /><br /><br /><b>3.
 The software</b></p><p>I''m currently doing a lot of neat scripts 
while DJWillis prepare the image for the NAND.<br />Today I did create an 
LCD Gamma Manager - a small tool where you can create, load and save 
various LCD Gamma settings. I also created one that looks like an old 
CRT TV. Really cool - emulation on a handheld has never looked better!<br /><b>To
 check out what''s happening on the OS, simply go to 
http://git.openpandora.org&nbsp;</b></p><p>As Midori was a bit unstable 
and FireFox eating up RAM, we changed browsers once again. Arora is now 
included in the OS. Fast, without any rendering issues and it didn''t 
crash yet for me.&nbsp;<br />The OS is getting more and more complete.</p><p><br /></p><p>That''s
 it for now - as soon as I know any more information (shipping dates for
 the cases, dates when we all meet in England, etc.), I''ll inform you!<br />And
 sorry to my German readers: I''ll translate the post tomorrow, it''s 5:50
 am now, I want to go to bed... :)</p>');
INSERT INTO posts VALUES(NULL,301,1,2,840712,'Fellow Pre-Orderers: Reveal Yourselves','2010-04-16 15:38:43','http://www.gp32x.com/board/index.php?/topic/52981-fellow-pre-orderers-reveal-yourselves/page__view__findpost__p__840712','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840682''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Nupfi, on 16 April 2010 - 04:22 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840647''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 16 April 2010 - 03:35 PM, said:</p><div class="blockquote"><div class=''quote''>BTW: Did you win the dice game? ;) </div></div><br />
<br />
This was actually a drinking game... and according to my memories from that night - I lost. ;) </div></div><br />
<br />
What happens if you lose? <br />
You never know with drinking games... :D <br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Oh and the Chrono Trigger proposal rules... :) <br />
Must seem very geeky to some people but I really like this one.<br />
Imagine all the time the guy must have spend to hack the game... thumbs up from me. :) </div></div><br />
<br />
... and the face of the girl when she just continues to play her RPG and eventually finds that spot :) <br />
<br />
I wonder if he did it AFTER she started playing or if he created it and let her play the game waiting for her to find that spot aftet 14+ hours of normal gameplay...
						
						<br />');
INSERT INTO posts VALUES(NULL,302,1,2,840647,'Fellow Pre-Orderers: Reveal Yourselves','2010-04-16 13:35:04','http://www.gp32x.com/board/index.php?/topic/52981-fellow-pre-orderers-reveal-yourselves/page__view__findpost__p__840647','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840612''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Nupfi, on 16 April 2010 - 02:05 PM, said:</p><div class="blockquote"><div class=''quote''>The fact that you all ordered a Pandora makes everyone super-hot. ;) <br />
Well, here is my pic:<br />
<br />
<img src=''http://img301.imageshack.us/img301/1848/16142101746773185039100.jpg'' alt=''Posted Image'' class=''bbc_img'' /></div></div><br />
<br />
You&#39;re a fake.<br />
I mean, a woman that loves geek toys AND looks good? Can&#39;t be. We all know that :D <br />
<br />
BTW: Did you win the dice game? ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,303,1,2,840642,'Sdio, .pnd Files, And The Dsp','2010-04-16 13:09:52','http://www.gp32x.com/board/index.php?/topic/52992-sdio-pnd-files-and-the-dsp/page__view__findpost__p__840642','All the PNDs I create are compressed :) <br />
Exaile is just 1,3MB big :D 
						
						<br />');
INSERT INTO posts VALUES(NULL,304,1,2,840580,'Qt 4.6+ Work On Pandora?','2010-04-16 09:56:49','http://www.gp32x.com/board/index.php?/topic/52993-qt-4-6-work-on-pandora/page__view__findpost__p__840580','Arora (our webbrowser on the Pandora) runs with QT ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,305,1,2,840577,'Sdio, .pnd Files, And The Dsp','2010-04-16 09:49:34','http://www.gp32x.com/board/index.php?/topic/52992-sdio-pnd-files-and-the-dsp/page__view__findpost__p__840577','PNDs can be compressed using SquashFS (which is cool, as the file is as big as it would be when you compress it as ZIP).<br />
It works fine with games like AlephOne (200MB size&#33;).<br />
<br />
Haven&#39;t tried if it actually is faster compressed or uncompressed, but I can try during the next days.<br />
It doesn&#39;t use the DSP to decompress and I doubt it could really be useful for that.
						
						<br />');
INSERT INTO posts VALUES(NULL,306,1,2,840421,'New Pictarss','2010-04-15 22:43:45','http://www.gp32x.com/board/index.php?/topic/52974-new-pictarss/page__view__findpost__p__840421','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840413''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Sphinxter, on 16 April 2010 - 12:24 AM, said:</p><div class="blockquote"><div class=''quote''>After recovery from being temporarily blinded by the finish I notice it appears in that bottom pic the lid and display are leaning back way too far, what is up with that, thought these only opened slightly less than flat.</div></div><br />
<br />
They probably didn&#39;t install the hinge.
						
						<br />');
INSERT INTO posts VALUES(NULL,307,1,2,840405,'Fellow Pre-Orderers: Reveal Yourselves','2010-04-15 22:15:23','http://www.gp32x.com/board/index.php?/topic/52981-fellow-pre-orderers-reveal-yourselves/page__view__findpost__p__840405','You asked for it :D <br />
<br />
<img src=''http://www.dragonbox.de/temp/DSCN5470.JPG'' alt=''Posted Image'' class=''bbc_img'' />
						
						<br />');
INSERT INTO posts VALUES(NULL,308,1,2,840274,'Selling A Preorder Slot On Ebay','2010-04-15 17:33:44','http://www.gp32x.com/board/index.php?/topic/52983-selling-a-preorder-slot-on-ebay/page__view__findpost__p__840274','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840269''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>mali, on 15 April 2010 - 06:29 PM, said:</p><div class="blockquote"><div class=''quote''>Hehe, ED should refuse to change the shipping address and refund instead :P It shouldn&#39;t be hard to find out who sold the spot after the auction ends ;) </div></div><br />
<br />
It&#39;s not hard for me since he included his order number at eBay ;) <br />
<br />
I will change the shipping adress but will eventually demand additional shipping costs (depending on who buys it).<br />
I will not change the invoice adress, as that would only happen if I refund and a new one gets it (and there is a waiting list, so it&#39;s kinda unfair to them doing this on eBay).
						
						<br />');
INSERT INTO posts VALUES(NULL,309,1,2,840268,'Selling A Preorder Slot On Ebay','2010-04-15 17:28:55','http://www.gp32x.com/board/index.php?/topic/52983-selling-a-preorder-slot-on-ebay/page__view__findpost__p__840268','Well, the seller can change the shipping adress, but all additional costs (i.e. higher shipping costs) need to be covered by him.<br />
The invoice adress won&#39;t change, since he is the one who made the contract with the distributor (which is me in that case), so the eBay buyer would receive the Pandora but get an invoice with the adress of the other guy.<br />
<br />
You can&#39;t sell any contracts. You can sell the device - and if you sell somebody a device, you usually get the invoice he got. For warranty, this is no big deal, but if the new buyer wants to use it for tax returns, etc., he simply can&#39;t.
						
						<br />');
INSERT INTO posts VALUES(NULL,310,1,2,840224,'Wiz After Pandora Release','2010-04-15 15:47:56','http://www.gp32x.com/board/index.php?/topic/52982-wiz-after-pandora-release/page__view__findpost__p__840224','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840216''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Zaephen, on 15 April 2010 - 04:29 PM, said:</p><div class="blockquote"><div class=''quote''><span style=''font-family: Book Antiqua''><span style=''font-size: 15px;''>I just got my Wiz last week so yeah, there&#39;s still a warm fuzzy &quot;new&quot; feeling to it and I don&#39;t ever plan to put it down ;) .  I expect when the Pandora is release there will be a huge surge in people using/developing for it.  My question is, will users/developers continue do support their Wiz?</span></span></div></div><br />
<br />
Yep. In my opinion it&#39;s a nice and cool device on-the-go :) <br />
I&#39;m also continuing my support for it, will probably meet up with GPH next month at a gaming expo in Korea and also talk about FunGP (as I might do the english customer support).<br />
<br />
The Pandora is a very cool device, but if you just want to play games up to SNES or stuff like ScummVM or nice little homebrew games, the WIZ is perfectly fine. Cheaper and smaller.<br />
If you want the big thing, go for the Pandora - but it also does cost twice as much.<br />
<br />
So far, the Pandora has done the WIZ good. A lot of press releases lead people to my website and with the Pandora gaining publicity, WIZ sales went up.
						
						<br />');
INSERT INTO posts VALUES(NULL,311,1,2,840222,'Ce Certification Now Invalid?','2010-04-15 15:44:14','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840222','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840215''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Creature XL, on 15 April 2010 - 04:29 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840205''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 15 April 2010 - 04:49 PM, said:</p><div class="blockquote"><div class=''quote''>We could also disable the WiFi module for the units we ship to USA and clearly state in the manual that you should not install any software that reenables it.</div></div><br />
<br />
I have another idea. spaceball gives his home address to all US customers and OpenPandora will move ALL US customers to the end of the list.<br />
This way we can make sure that US customers get FCC certified units.<br />
Please, US customers, don&#39;t beat ME up. That&#39;s why you get the address of spaceballs3000 ;) </div></div><br />
<br />
Don&#39;t blame him, he got valid points. It&#39;s just not that easy to do everything correct from the very beginning. We&#39;re trying to do that - the most important thing is that we need first final units though.
						
						<br />');
INSERT INTO posts VALUES(NULL,312,1,2,840205,'Ce Certification Now Invalid?','2010-04-15 14:49:50','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840205','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840183''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Javacat, on 15 April 2010 - 02:52 PM, said:</p><div class="blockquote"><div class=''quote''>psssst... Spaceballs: Don&#39;t forget to make sure they are following the RoHS and WEEE regulations</div></div><br />
<br />
 ;) We do :P <br />
<br />
Okay, I just made some phonecalls. I couldn&#39;t get any official authorities who take care that everything conforms the CE on the phone yet, but will probably tomorrow (they&#39;re out of office already).<br />
I reached some guys from testing labs though. They know that there was an application to expand the CE frequencies so that WiFi will also need CE. However, they were not sure when this expandation will become valid (it might even be valid). I sent an email to official authorities to send me more information about that.<br />
<br />
I also talked to a few lawyers: As long as we don&#39;t sell WITHIN US, we&#39;re not responsible for FCC. The one who buys from us and IMPORTS the Pandora is responsible. The buyer makes the contract with us in EU, therefore the laws of EU are valid and no FCC is needed here.<br />
<br />
Still we want to make the FCC certification so that you all can import it without any hazzles. But as that can only be done with a finished unit, we have to wait 1 - 2 weeks before we can do it.<br />
<br />
We could also disable the WiFi module for the units we ship to USA and clearly state in the manual that you should not install any software that reenables it.<br />
<br />
However, that&#39;s not what we want. We want a completely certified and approved Pandora, but that won&#39;t happen before we have some final units. But it&#39;s planned.
						
						<br />');
INSERT INTO posts VALUES(NULL,313,1,2,840176,'Ce Certification Now Invalid?','2010-04-15 13:39:29','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840176','Look, I told the certified (certified by the authorities in Germany&#33;) lab multiple times it has WiFi.<br />
And they confirmed me multiple times that CE doesn&#39;t care about WiFi.<br />
Nevertheless, the big FCC test is still coming and planned as soon as we get the first mass produced devices (I also mentioned that a few times back then).<br />
<br />
Unfortunately, for FCC, you have to wait for the first mass produced devices - which we will have in 1 - 2 weeks.<br />
That means that the big test which will get us ALL certifications needed will probably ake place while we&#39;re assembling.<br />
<br />
There are companies like TUEV Nord in Germany that are specialized on testing and getting all the certifications you need to sell it in whatever area you tell them.<br />
Those tests do cost a LOT of money (approx. 10-20k EUR), therefore, we planned that testing as soon as we get the first mass produced units.<br />
<br />
BTW: That resistor didn&#39;t change anything in the WiFi area. The WiFi chip was working well before, it reported a very good signal quality. And transmitting WiFi was ALWAYS working and didn&#39;t have anything to do with the resistor.<br />
The only thing the resistor did change was the steepness of the curve for the module to sync the WiFi RECEPTION. The module was receiving everything, but it wasn&#39;t in sync with the board and therefore we had packet loss.<br />
<br />
The WiFi RX / TX itself hasn&#39;t been changed by that resistor.
						
						<br />');
INSERT INTO posts VALUES(NULL,314,1,2,840134,'Ce Certification Now Invalid?','2010-04-15 11:34:05','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840134','The testing had been done at a certified CE testing lab (see some pictures <a href=''http://ec.europa.eu/enterprise/newapproach/nando/index.cfm?fuseaction=directive.nb&amp;refe_cd=EPOS_43408'' class=''bbc_url'' title=''External link'' rel=''nofollow''>here</a>).<br />
<br />
CE testing includes anything up to 1GHz, no WLAN testing is required for CE, I asked those questions at the laboratory multiple times to really confirm this.<br />
<br />
I can send you a full 50+ pages PDF document about the complete testing setup and the results if you want.
						
						<br />');
INSERT INTO posts VALUES(NULL,315,1,2,840127,'Ce Certification Now Invalid?','2010-04-15 11:15:00','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840127','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=840125''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>kingoddball, on 15 April 2010 - 01:13 PM, said:</p><div class="blockquote"><div class=''quote''>ED is grumpy.</div></div><br />
<br />
 ;) I am? :D <br />
<br />
Well, here is more information:<br />
<a href=''http://en.wikipedia.org/wiki/CE_mark'' class=''bbc_url'' title=''External link'' rel=''nofollow''>http://en.wikipedia.org/wiki/CE_mark</a><br />
<br />
It&#39;s called &quot;Self Declaration&quot;<br />
&quot;In order to use the CE mark on a product the manufacturer must draw up a Declaration of Conformity (DoC) in which the manufacturer attests conformity with all relevant New Approach Directives (NADs) and takes sole legal responsibility.&quot;
						
						<br />');
INSERT INTO posts VALUES(NULL,316,1,2,840119,'New Blog Post&#33;','2010-04-15 10:54:24','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__840119','I&#39;m not &quot;not posting&quot; anymore. Just in threads like these, where everything I say can theoretically be ripped apart.<br />
I keep posting at threads where I know the facts.
						
						<br />');
INSERT INTO posts VALUES(NULL,317,1,2,840113,'Ce Certification Now Invalid?','2010-04-15 10:29:01','http://www.gp32x.com/board/index.php?/topic/52970-ce-certification-now-invalid/page__view__findpost__p__840113','One more time: The CE Certification is a done by the company who produces / sells the device: In that case, us.<br />
If we certificate it, it&#39;s fine. WE are the ones responsible for assuring it does pass CE. There is NO ONE else who can do a certification for you.<br />
<br />
If you include a CE certification within your product, you are claiming you tested the device and made sure it is within all of the given CE specs.<br />
If it&#39;s not the case and a test or some problems do reveal this, you are responsible for it.<br />
The test basically is optional, but it would be madness selling a device telling it conforms the CE without testing it.<br />
<br />
There is no such thing invalid CE certification.<br />
<br />
No need to retest it, though, as the only critical thing that didn&#39;t pass EMV was the LCD cable, so it had to be shielded (very common problem with such devices).<br />
That resistor doesn&#39;t change anything there, so I can assure you it&#39;s still within the specs.<br />
<br />
As soon as we got enough money, we will go for a big test that includes ALL testing for everything needed worldwide, but that&#39;s VERY expensive.<br />
Until then, we did what he had to do to sell it legally - do CE, as we are sitting in Europe.
						
						<br />');
INSERT INTO posts VALUES(NULL,318,1,2,840110,'Unnecesary Keyboard','2010-04-15 10:16:46','http://www.gp32x.com/board/index.php?/topic/52933-unnecesary-keyboard/page__view__findpost__p__840110','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=838895''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>SefSermak, on 13 April 2010 - 04:44 AM, said:</p><div class="blockquote"><div class=''quote''>I really wouldn&#39;t want a laptop, but a very portable multimedia-gamming system fully customizable with tons of emulators and open source... and very small and cool. That would be nice, if I want a laptop I would purchase a netbook. Unfortunately, some cool portable devices like Ipod Touch can&#39;t run homebrews or emulators without jailbreaking or hacking or stuff like that, this is where pandora truly leave them behind.</div></div><br />
<br />
That device you&#39;re looking for is called the WIZ.<br />
<br />
Or maybe you want to get one of these:<br />
<object type="application/x-shockwave-flash" height="355" width="425" data="http://www.youtube.com/v/9BnLbv6QYcA"><param name="movie" value="http://www.youtube.com/v/9BnLbv6QYcA"><param name="allowScriptAccess" value="sameDomain"><param name="quality" value="best"><param name="bgcolor" value="#FFFFFF"><param name="scale" value="noScale"><param name="salign" value="TL"><param name="FlashVars" value="playerMode=embedded" /><param name="wmode" value="transparent"/></object>
						
						<br />');
INSERT INTO posts VALUES(NULL,319,1,2,839950,'Ed&#39;s Gamma Movie','2010-04-15 02:21:56','http://www.gp32x.com/board/index.php?/topic/52948-eds-gamma-movie/page__view__findpost__p__839950','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839685''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Pleng, on 14 April 2010 - 01:15 PM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839472''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 13 April 2010 - 10:43 PM, said:</p><div class="blockquote"><div class=''quote''>Well, the gamma values are simple parameters in the userspace, so each coder can change them from within the emulator - but then it HAS to be integrated into the emulator.</div></div><br />
<br />
Could it not be built into the pMenu and such? Select an icon which represents an application, access its properties, and select a gamma setting? The menu could then run the gamma correction script before launching the application.</div></div><br />
<br />
No need to call a script, the gamma can simply be changed by echoing values to /sys/devices/platform/omap2_mcspi.1/spi1.1/gamma<br />
Any app or tool can easily do that.
						
						<br />');
INSERT INTO posts VALUES(NULL,320,1,2,839698,'New Blog Post&#33;','2010-04-14 11:45:26','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__839698','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839695''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Sugar_Kane, on 14 April 2010 - 01:37 PM, said:</p><div class="blockquote"><div class=''quote''>That is sad news indeed. When a nice guy like Ed has to throw in the towel then I think that&#39;s a sign that passions are running a little too high.</div></div><br />
<br />
Okay, one more last post for now: I&#39;m not throwing the towel. But the lengthy replies I did make took a lot of time. Time I could use to polish the OS more. And as those posts did also lead to a few misunderstandings, I don&#39;t see any reason to make things even worse.<br />
<br />
You can be sure I read the boards, react to PMs, continue to moderate and administrate... I simply won&#39;t post for the time being.<br />
You won&#39;t get rid of me that easy ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,321,1,2,839688,'New Blog Post&#33;','2010-04-14 11:27:41','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__839688','I don&#39;t want to add much anymore, as everything I do write up seems to be understood by some completely different than it was meant.<br />
<br />
I never said I don&#39;t appreciate the fact that you all financed the Pandora. I know it wouldn&#39;t be possible without you and I&#39;m really happy that you all are still sticking with us. I really am thankful for that.<br />
<br />
What I didn&#39;t like about the post was that &quot;unauthorised&quot;.<br />
We did make clear that the Pandora has to be paid in advance because the actual costs are used for production and parts - and we surely couldn&#39;t have done it with that money.<br />
So that money was not unauthorised - as we didn&#39;t take that money away from anyone, it was the choice of each user to take the risk and pay us - or not.<br />
<br />
Also, no interest rate does help us. The parts have been delivered and paid in 2008 / 2009, we don&#39;t get a single cent out of interest.<br />
<br />
Some posts sound to me like we would be some big bad company intentionally delaying the Pandora... and that&#39;s what makes me sad.<br />
We&#39;re still just a bunch of humans, trying to do everything we can to deliver it as fast as we can. That&#39;s it.<br />
<br />
Well, this will be my last post for a while. Maybe until after assembly.<br />
A lot of things I do say seem to lead to complete misunderstandings - they seem to be read in a completely different way than what I meant.<br />
<br />
You can be sure we do know that we couldn&#39;t have pulled off the whole project without you guys. And we&#39;re trying to do the best we can to do so.<br />
But getting blamed because we FIX things is something hard to understand for me.<br />
<br />
Anyways, enjoy. I&#39;ll be back after release. Promise :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,322,1,2,839574,'New Blog Post&#33;','2010-04-14 02:34:32','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__839574','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839572''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>crade, on 14 April 2010 - 04:30 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839569''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>MarkoeZ, on 13 April 2010 - 07:24 PM, said:</p><div class="blockquote"><div class=''quote''>If you want perfection, buy Apple.</div></div><br />
Ugh..  If you call something that is intentionally crippled instead of accidentally crippled perfection.</div></div><br />
<br />
Intentionally crippled and unintentionally crippled it even more due to WiFi issues ;) 
						
						<br />');
INSERT INTO posts VALUES(NULL,323,1,2,839571,'New Blog Post&#33;','2010-04-14 02:30:40','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__839571','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839569''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>MarkoeZ, on 14 April 2010 - 04:24 AM, said:</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839565''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>DaveC, on 14 April 2010 - 04:10 AM, said:</p><div class="blockquote"><div class=''quote''>I guess the Pandora isn&#39;t for everyone.  If you want perfection, buy Apple.  It amazes me that people expect us to do the same thing as good and as fast as a multi-BILLION dollar mega corporation like Apple or Sony, Nintendo etc.  We try but you just can&#39;t beat reality and physics.</div></div><br />
<br />
Well it all comes down to what each persons definition of Perfection is. For me the Pandora is perfect (i expect) for it&#39;s function, not it&#39;s looks, or small details that can be fixed, but others may disagree. And that&#39;s fine by me.<br />
<br />
DaveC: Not attacking you, just extending on your post to make a point ;) <br />
<br />
Edit: clarifications</div></div><br />
<br />
It&#39;s definately also perfect for me. Fullspeed Amiga. Nice LCD Gamma control to make games look better. Perfect DPad and button setup.<br />
Full featured desktop in case I do not only want to play games... I&#39;ve got my prototype since December and love it.
						
						<br />');
INSERT INTO posts VALUES(NULL,324,1,2,839562,'New Blog Post&#33;','2010-04-14 01:52:21','http://www.gp32x.com/board/index.php?/topic/52935-new-blog-post/page__view__findpost__p__839562','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839484''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Monk, on 14 April 2010 - 12:36 AM, said:</p><div class="blockquote"><div class=''quote''>I don&#39;t have an iPad. I ordered a bit of kit from some tech savvy guys who were pouring scorn on GPH and saying how much better they would do it. They would make a better product, without the technical or design flaws, and without taking our money months before delivering the promised kit. I&#39;m dissapointed it&#39;ll have a repaired PCB and paint to cover up the quality of the plastic.</div></div><br />
<br />
Well, and that&#39;s what you get. Oh, and we NEVER said you have to pay when you get it. It was clear from the VERY BEGINNING that you have to pay in advance.<br />
Please never open up any of your devices, you&#39;ll find A LOT of modifications, especially on first release devices. And even if you don&#39;t find some - that doesn&#39;t mean it hasn&#39;t been done, as you cannot see that a resistor has been replaced if it was done properly.<br />
<br />
The PCB will not bee repaired, the PCB is fine. There is simply one resistor that needs to have another value and that one is being replaced. That&#39;s a common thing to do.<br />
<br />
The quality of the plastic is fine, it&#39;s sturdy, it doesn&#39;t break, there is no problem. But due to the nature of moulding, some things can be seen through the case.<br />
You think painting is covering up? Hell, I did check a few devices I own at home.<br />
My mobile phone is painted. My notebook is painted. My Nintendo DS is painted. Even my Logitech mouse does use paint. Just because you don&#39;t know there is no paint doesn&#39;t mean it is not there.<br />
<br />
Speaking of GPH:<br />
The GP2X First Edition did have a wrong resistor. However, those were delivered with the wrong resistor (leading to much too dark colors and flickering LCDs) and I had to change them all afterwards.<br />
We could&#39;ve done so with the WiFi resistor, however, we chose to fix it before delivery. Do you think that&#39;s wrong?<br />
<br />
And by design and technical flaws from GPH products, we were talking about stuff like...<br />
<br />
* Unusable stick for gaming (GP2X F100)<br />
* DPAD not that great either (GP2X F200)<br />
* Wrong type of LCD used (240x320 instead of 320x240, leading to tearing or workarounds)<br />
<br />
That&#39;s something the Pandora certainly doesn&#39;t suffer from.<br />
So yeah, you still get exactly the same what we announced you will get when you ordered.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839338''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 13 April 2010 - 04:50 PM, said:</p><div class="blockquote"><div class=''quote''>My last mobile phone crashes about twice a week until I updated the firmware, my Cable TV receiver did crash when I tried to move the channels around...</div></div><br />
You maybe make some bad decisions.<br />
<br />
You have convinced me. I&#39;ll tell the wife to cancel our Pandora order the moment she gets home.</div></div><br />
<br />
Yeah, Sony Ericsson (Phone) and Thomson (Cable Receiver) seems like a bad choice.<br />
<br />
While it is sad you cancel, I can&#39;t say anything against it, as you probably aren&#39;t the user the first batch was intended for.<br />
The first batch is mainly for fans of homebrew and opensource, geeks and similar folks who don&#39;t care if the software doesn&#39;t run 100% from the beginning.<br />
The hardware will be fine, we fixed everything up, so there&#39;s no problem anymore.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''><p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839338''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>EvilDragon, on 13 April 2010 - 04:50 PM, said:</p><div class="blockquote"><div class=''quote''>Electronics and software is becoming more and more complicated these days, it&#39;s impossible NOT doing anything wrong :) </div></div><br />
Well, with that attitude - certainly&#33;</div></div><br />
<br />
It&#39;s not about attitude - in fact, I think our attitude is fine here, as we ARE fixing up everything before we ship.<br />
<br />
Show me ONE recent device that didn&#39;t have problems with the first release edition... I can&#39;t find many (except for simple devices)<br />
<br />
iPad? Suffers WiFi problems (just check google)<br />
Sony PSP? Also had troubles (terrible LCD, buttons were squeaking, etc.)<br />
XBox360? Tons of them suffered the Red Ring of Death.<br />
<br />
Those are all devices from multi billion dollar companies.<br />
They couldn&#39;t do it right - even with A LOT more people working on it and A LOT more money to build such thing.<br />
<br />
Now here we are. A bunch of guys trying to create the best OpenSource handheld gaming device available. And I think we did well. Even the prototype case is sturdy and fine. The hardware is fast enough to run a full desktop without lagging.<br />
The gaming controls work perfectly, way better than on any other handheld I own.<br />
<br />
You were able to follow our steps, our trials, our problems. We did fix EVERYTHING there was, did try to do our best. In our sparetime. With very little money. If we were multi billion dollar companies, we could&#39;ve produced those cases outside of China. They would&#39;ve been finished long ago and probably would look perfect. I&#39;m really sorry I do not have a few million dollar lying around. I&#39;m sorry we&#39;re just some normal guys trying as hard as we can creating the Pandora. Maybe you did expect some gods. Well, we are no gods. And we never claimed we are.<br />
<br />
Still, looking at the market, I do think we did extremely well with the Pandora. Whereever I have a presentation with my prototype, it interests a lot of people and they would buy it instantly if I had some with me.<br />
We fixed everything BEFORE delivery, I honestly do think that&#39;s not something to be blamed for.<br />
<br />
If you do think so - well, I can&#39;t help it. I can&#39;t do miracles.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>My mobile phone cannot do WiFi. It&#39;s a mobile phone, not a handheld computer. I could maybe do a test on my netbook though, if you really want to see if 500KB/s is a reasonable expactation from a chipset that specifies what, 54 Mb/s? (your web site says it is 802.11b/g, which should be able to go faster, I propose, than 500KB/s).</div></div><br />
<br />
It should go faster and it can probably go faster, yes.<br />
A netbook is bigger, it has more power.<br />
I talked to some other guys regarding that issue, as similar sized devices also won&#39;t go faster:<br />
The reason they do 802.11g is that no other devices are slowed down.<br />
<br />
A normal router cannot do 802.11b and 802.11g at the same time. So if a device connects with 802.11b, it would slow down ALL traffic for ALL devices, as the router always switches to the connection of the slowest device.<br />
<br />
Most devices that do have our size won&#39;t go higher than 900KB/s.<br />
This can be due to various reasons: One reason would be to save power (as small devices don&#39;t have such big batteries as netbooks) and the other reason is the bus / cpu / RAM, etc.<br />
Just because the module can make a througput of maybe 5MB/s doesn&#39;t mean the CPU or bus system can&#39;t process all of it.<br />
You can&#39;t compare your netbook to a small ARM CPU. The OMAP is very powerful, yes, but still slower than an ARM is.<br />
One thing we know is that the CPU speed affects the WiFi speed on our unit. Increasing the CPU does increase the WiFi speed and vice versa.<br />
And in minimal mode, the WiFi speed is even faster, maybe because the CPU doesn&#39;t need to power an X Server.<br />
<br />
Even the WiFi stick I did use didn&#39;t go higher than 900KB/s - and that one supports 802.11n.<br />
<br />
So yes, you get what you paid for: 802.11b/g<br />
But that doesn&#39;t mean you can always automatically expect full speed with it.<br />
Most devices in that form factor can&#39;t provide much more.<br />
<br />
We can probably reach that 900KB/s by working more on the software - but I doubt we will ever squeeze much more out of it.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Please take an unauthorised loan from me for two years. Oh, wait... you did/ After promising that you wouldn&#39;t.</div></div><br />
<br />
You&#39;re trying to compare approx. 300 EUR to about 500.000 USD? Wow.<br />
<br />
And what unauthorised loan? You paid for the device, we clearly said that the money will be used to actually produce the Pandora and you could always cancel your order.<br />
There was nothing unauthorised.<br />
There were some people who did cancel their order and they got their money back.<br />
<br />
Complaining about stuff that has been said from the very beginning is dumb.<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>However, using the cheapest possible source for everything does not guarantee the highest possible quality result. Take the Chinese plastics factory you are using. How has that worked out for you? Or even the specific chinese PCB vendor you used? Have they worked as well as the USA company that you did the prototyping with? My issue isn&#39;t with you getting stuff made in China. My issue is with you sayign that you wouldn&#39;t get stuff made CHEAPLY in China, but made to high quality in America, and THEN going and getting stuff made CHEAPLY in China. You get what you pay for.</div></div><br />
<br />
Well, every moulding company outside of China did want at least 10x as much money for the job. Yes, we would&#39;ve loved to do that - however, if there is no money, you don&#39;t have that option.<br />
<br />
We did say that we WON&#39;T DO the main production in China, and yes, in fact, that&#39;s what we did. And we did say that we try to do as little as possible in China - and that&#39;s also what we did.<br />
We did source the prices for producing outside and it would&#39;ve meant that one Pandora would&#39;ve cost at least 600 - 700 EUR each.<br />
<br />
The production itself is still being done in Texas, as the population of the boards is the most critical part.<br />
BTW: That the production of the PCBs happens in China is not because we said so. We don&#39;t even know WHO produces the PCBs, as we did place our order for the PCBs and the population with the US company in Texas. They are working together with a Chinese partner company, and they produce the PCBs.  And yes, they have worked as well as the USA company we did the prototyping with. The quality of the PCBs is top-notch. The changed impedance of one trace is something we didn&#39;t specifically tell them it shouldn&#39;t change, so this could&#39;ve happened with any other company, too. And in the end it turned out the impedance doesn&#39;t do much - it was a resistor with a wrong value, and that&#39;s nothing anyone else except for us was responsible.<br />
<br />
<br />
<p class=''citation''>Quote</p><div class="blockquote"><div class=''quote''>Ah, the wife is home now. so I can type here and say to her at the same time - EvilDragon recommends that we get a full refund.</div></div><br />
<br />
I never recommended that you do so - I just told you the truth about our device and what I do think about the situation.<br />
<br />
If you have problems with devices which have some flaws at the beginning, you should NEVER be an early adopter. That&#39;s not specifically for the Pandora, that&#39;s the fact for EVERY device out there.<br />
I love to be an early adopter, I can live with flaws or even did fix quite a few myself by opening up and modding some devices. But if you 100% a fully flawless device regarding hardware and software, you should NEVER ever buy ANY new device that&#39;s just been released, be it from Apple, Sony, Microsoft or anyone else.<br />
<br />
<br />
<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839489''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>Monk, on 14 April 2010 - 12:48 AM, said:</p><div class="blockquote"><div class=''quote''>I remember being told that Pandora had AMPLE RAM to do anything you&#39;d want to with it - <span class=''bbc_underline''>before</span> the amount of RAM was doubled. Why is FireFox not the default browser? Because it uses too much RAM?????<br />
I barely even care about FireFox - except how it figures into what we&#39;re being told. The last I heard about browser OpenPandora were pleased as punch that the Pandora ran FireFox - and so well&#33; The next I notice FireFox has been replaced because it is too RAM hungry (after being told no-one would ever need more than 640KB) and its replacement is being replaced because it was too unstable. There seems to be no stability of vision to a product which is already a year and a half late.<br />
A year and a half ago it would have shipped with FireFox. So... that would have been a bad decision, yes?</div></div><br />
<br />
It does run very well for a mobile device. It&#39;s definately fast enough to be usable by anyone. But why use a bloated sluggish browser if there are FASTER ones?<br />
FireFox NEVER was the default or only browser on the system. Midori was there from the very beginning, and we just scrapped FireFox because...<br />
<br />
1. it&#39;s slower than other, faster browsers and needs more RAM than others<br />
2. it needs a lot of space on the NAND, and we want the user to decide what to do with the space<br />
3. it can be reinstalled with a single command if one specifically wants it<br />
<br />
Except for some extensions, I cannot find a single reason why people would want to use FireFox over any other faster working browser on the Pandora.<br />
For me, FireFox is too slow on my fast desktop PC (Intel T7500). I use Opera and / or Midori.<br />
<br />
So, could you please tell a single reason (me now that I explained this to you) why FireFox should stay on the system a default browser?<br />
<br />
Arora is faster, needs less RAM, does display all websites flawlessly (same rendering engine as FireFox), has an Adblocker, can also do tabbed browsing, has a private mode.<br />
The only thing it CAN&#39;T do is use extensions or special scripts. Unless you seriously need them, there&#39;s no need to use FireFox.
						
						<br />');
INSERT INTO posts VALUES(NULL,325,1,2,839474,'Ed&#39;s Gamma Movie','2010-04-13 21:47:26','http://www.gp32x.com/board/index.php?/topic/52948-eds-gamma-movie/page__view__findpost__p__839474','<p class=''citation''><a class=''snapback'' rel=''citation'' href=''http://www.gp32x.com/board/index.php?app=forums&amp;module=forums&amp;section=findpost&amp;pid=839469''><img src=''http://www.gp32x.com/board/public/style_images/master/snapback.png'' alt=''View Post'' /></a>paddy, on 13 April 2010 - 11:25 PM, said:</p><div class="blockquote"><div class=''quote''>It&#39;s a shame as this is the right place to ask but i don&#39;t suppose we will get something like this ,but say there was a default Pandora gui that all emulator creators could use for any type of emulator and there was default options/strings that would call functions to the Pandora already writen in the gui ,then devs could also add to this menu if so wish with tailored options for the actual emulator.<br />
<br />
Example .. Pandora Emugui<br />
<br />
default options included/hooked to the Pandora self functions<br />
-------------------------------------------------------------<br />
Other Media - lets you play radio/music in the background<br />
display - filters - screen size - gama/brightness - backlight<br />
controls - anologs ,core buttons - keys/maping<br />
power settings - overclock/underclock<br />
savestates - game saves<br />
<br />
there could be more default options specific to the Pandora and that would make a menu gui like this even more of a great idea on the Pandora.</div></div><br />
<br />
Well, a BASIC GUI for all emulators shouldn&#39;t be so hard, as most of them do support command lines.<br />
So showing roms from various directories and runnning them using an emulator is easy. The rest (mapping, etc.) depends on the emulator.<br />
<br />
Power settings (overclocking / underclocking) can already be done with the included PXML file :) 
						
						<br />');
INSERT INTO posts VALUES(NULL,326,1,3,840751,'Fellow Pre-Orderers: Reveal Yourselves','2010-04-16 17:27:01','http://www.gp32x.com/board/index.php?/topic/52981-fellow-pre-orderers-reveal-yourselves/page__view__findpost__p__840751','I found this and think it should win the compo<br />
<br />
<img src=''http://gbax.com/upupontheroof.jpg'' alt=''Posted Image'' class=''bbc_img'' />
						
						<br />');
INSERT INTO posts VALUES(NULL,327,3,2,'http://twitter.com/EvilDragon1717/statuses/12227075932','EvilDragon1717: 50% of the case parts of the Pandora are produced already. :) So of some parts already exists 1000 pcs and the rest is in production. Woot!','2010-04-15 14:51:51','http://twitter.com/EvilDragon1717/statuses/12227075932','EvilDragon1717: 50% of the case parts of the Pandora are produced already. :) So of some parts already exists 1000 pcs and the rest is in production. Woot!');
INSERT INTO posts VALUES(NULL,328,3,2,'http://twitter.com/EvilDragon1717/statuses/12199815571','EvilDragon1717: Moved our scripts into an internal PND file, so that all GUs (minimenu and pmenu so far) can also make use of them.','2010-04-15 02:39:12','http://twitter.com/EvilDragon1717/statuses/12199815571','EvilDragon1717: Moved our scripts into an internal PND file, so that all GUs (minimenu and pmenu so far) can also make use of them.');
INSERT INTO posts VALUES(NULL,329,3,2,'http://twitter.com/EvilDragon1717/statuses/12159327412','EvilDragon1717: The chinese company confirmed us the paint is lead free. We''re still deciding whether to paint or not though. But it''s good to know :)','2010-04-14 12:03:53','http://twitter.com/EvilDragon1717/statuses/12159327412','EvilDragon1717: The chinese company confirmed us the paint is lead free. We''re still deciding whether to paint or not though. But it''s good to know :)');
INSERT INTO posts VALUES(NULL,330,3,2,'http://twitter.com/EvilDragon1717/statuses/12133245092','EvilDragon1717: Aaaand here is another script for the OS: You can now change the different modes for the nub and use them as mouse, for scrolling, etc.','2010-04-14 00:24:32','http://twitter.com/EvilDragon1717/statuses/12133245092','EvilDragon1717: Aaaand here is another script for the OS: You can now change the different modes for the nub and use them as mouse, for scrolling, etc.');
INSERT INTO posts VALUES(NULL,331,3,2,'http://twitter.com/EvilDragon1717/statuses/12104552873','EvilDragon1717: Just some tiny unneccessary info: The package with the LCDs and tons of boards on the way from Texas to UK does way about 1 ton!','2010-04-13 13:50:18','http://twitter.com/EvilDragon1717/statuses/12104552873','EvilDragon1717: Just some tiny unneccessary info: The package with the LCDs and tons of boards on the way from Texas to UK does way about 1 ton!');
INSERT INTO posts VALUES(NULL,332,3,2,'http://twitter.com/EvilDragon1717/statuses/12100927555','EvilDragon1717: I uploaded a YouTube video -- Pandora: The LCD Gamma Manager http://youtu.be/71hehqmv5_c?a','2010-04-13 12:25:49','http://twitter.com/EvilDragon1717/statuses/12100927555','EvilDragon1717: I uploaded a YouTube video -- Pandora: The LCD Gamma Manager http://youtu.be/71hehqmv5_c?a');
INSERT INTO posts VALUES(NULL,333,3,2,'http://twitter.com/EvilDragon1717/statuses/12082060332','EvilDragon1717: Created another script: A LCD Gamma-Manager. You can create, save and load gamma profiles. Sonic looks cool with TV CRT simulation settings!','2010-04-13 02:51:30','http://twitter.com/EvilDragon1717/statuses/12082060332','EvilDragon1717: Created another script: A LCD Gamma-Manager. You can create, save and load gamma profiles. Sonic looks cool with TV CRT simulation settings!');
INSERT INTO posts VALUES(NULL,334,3,3,'http://twitter.com/EvilDragon1717/statuses/12227075932','EvilDragon1717: 50% of the case parts of the Pandora are produced already. :) So of some parts already exists 1000 pcs and the rest is in production. Woot!','2010-04-15 14:51:51','http://twitter.com/EvilDragon1717/statuses/12227075932','EvilDragon1717: 50% of the case parts of the Pandora are produced already. :) So of some parts already exists 1000 pcs and the rest is in production. Woot!');
INSERT INTO posts VALUES(NULL,335,3,3,'http://twitter.com/EvilDragon1717/statuses/12199815571','EvilDragon1717: Moved our scripts into an internal PND file, so that all GUs (minimenu and pmenu so far) can also make use of them.','2010-04-15 02:39:12','http://twitter.com/EvilDragon1717/statuses/12199815571','EvilDragon1717: Moved our scripts into an internal PND file, so that all GUs (minimenu and pmenu so far) can also make use of them.');
INSERT INTO posts VALUES(NULL,336,3,3,'http://twitter.com/EvilDragon1717/statuses/12159327412','EvilDragon1717: The chinese company confirmed us the paint is lead free. We''re still deciding whether to paint or not though. But it''s good to know :)','2010-04-14 12:03:53','http://twitter.com/EvilDragon1717/statuses/12159327412','EvilDragon1717: The chinese company confirmed us the paint is lead free. We''re still deciding whether to paint or not though. But it''s good to know :)');
INSERT INTO posts VALUES(NULL,337,3,3,'http://twitter.com/EvilDragon1717/statuses/12133245092','EvilDragon1717: Aaaand here is another script for the OS: You can now change the different modes for the nub and use them as mouse, for scrolling, etc.','2010-04-14 00:24:32','http://twitter.com/EvilDragon1717/statuses/12133245092','EvilDragon1717: Aaaand here is another script for the OS: You can now change the different modes for the nub and use them as mouse, for scrolling, etc.');
INSERT INTO posts VALUES(NULL,338,3,3,'http://twitter.com/EvilDragon1717/statuses/12104552873','EvilDragon1717: Just some tiny unneccessary info: The package with the LCDs and tons of boards on the way from Texas to UK does way about 1 ton!','2010-04-13 13:50:18','http://twitter.com/EvilDragon1717/statuses/12104552873','EvilDragon1717: Just some tiny unneccessary info: The package with the LCDs and tons of boards on the way from Texas to UK does way about 1 ton!');
INSERT INTO posts VALUES(NULL,339,3,3,'http://twitter.com/EvilDragon1717/statuses/12100927555','EvilDragon1717: I uploaded a YouTube video -- Pandora: The LCD Gamma Manager http://youtu.be/71hehqmv5_c?a','2010-04-13 12:25:49','http://twitter.com/EvilDragon1717/statuses/12100927555','EvilDragon1717: I uploaded a YouTube video -- Pandora: The LCD Gamma Manager http://youtu.be/71hehqmv5_c?a');
INSERT INTO posts VALUES(NULL,340,3,3,'http://twitter.com/EvilDragon1717/statuses/12082060332','EvilDragon1717: Created another script: A LCD Gamma-Manager. You can create, save and load gamma profiles. Sonic looks cool with TV CRT simulation settings!','2010-04-13 02:51:30','http://twitter.com/EvilDragon1717/statuses/12082060332','EvilDragon1717: Created another script: A LCD Gamma-Manager. You can create, save and load gamma profiles. Sonic looks cool with TV CRT simulation settings!');
INSERT INTO posts VALUES(NULL,341,4,2,'http://gdata.youtube.com/feeds/base/videos/71hehqmv5_c','Pandora: The LCD Gamma Manager','2010-04-13 11:56:56','http://www.youtube.com/watch?v=71hehqmv5_c&feature=youtube_gdata','<div style="color: #000000;font-family: Arial, Helvetica, sans-serif;     font-size:12px; font-size: 12px; width: 555px;">
<table cellspacing="0" cellpadding="0" border="0"><tbody><tr><td width="140" valign="top" rowspan="2"><div style="border: 1px solid #999999; margin: 0px 10px 5px 0px;"><a href="http://www.youtube.com/watch?v=71hehqmv5_c&amp;feature=youtube_gdata"><img alt="" src="http://i.ytimg.com/vi/71hehqmv5_c/2.jpg"></a></div></td>
<td width="256" valign="top"><div style="font-size: 12px; font-weight: bold;"><a style="font-size: 15px; font-weight: bold;                  font-decoration: none;" href="http://www.youtube.com/watch?v=71hehqmv5_c&amp;feature=youtube_gdata">Pandora: The LCD Gamma Manager</a>
<br></div>
<div style="font-size: 12px; margin: 3px 0px;"><span>The LCD Gamma Manager lets you create, save and load various gamma settings to enhance the LCD picture depending on the app you want to run (i.e. TV Gamma for emulated games)</span></div></td>
<td style="font-size: 11px; line-height: 1.4em; padding-left: 20px;             padding-top: 1px;" width="146" valign="top"><div><span style="color: #666666; font-size: 11px;">From:</span>
<a href="http://www.youtube.com/profile?user=EvilDragon1717">EvilDragon1717</a></div>
<div><span style="color: #666666; font-size: 11px;">Views:</span>
2892</div>
<div style="white-space: nowrap;text-align: left"><img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"> <img style="border: 0px none; margin: 0px; padding: 0px;                    vertical-align: middle; font-size: 11px;" align="top" alt="" src="http://gdata.youtube.com/static/images/icn_star_full_11x11.gif"></div>
<div style="font-size: 11px;">20
<span style="color: #666666; font-size: 11px;">ratings</span></div></td></tr>
<tr><td><span style="color: #666666; font-size: 11px;">Time:</span>
<span style="color: #000000; font-size: 11px; font-weight: bold;">02:48</span></td>
<td style="font-size: 11px; padding-left: 20px;"><span style="color: #666666; font-size: 11px;">More in</span>
<a href="http://www.youtube.com/categories_portal?c=28">Science &amp; Technology</a></td></tr></tbody></table></div>');
INSERT INTO posts VALUES(NULL,342,5,5,'http://pandorapress.net/?p=3695','Painted samples are shown, one unexpected.','2010-04-16 22:22:25','http://pandorapress.net/2010/04/16/painted-sample-cases-have-arrived-one-unexpected/','Posted by: BackAssward

MWeston has favored us with some new pics of the Sample Cases, assembled.  The pics show the regular unpainted case, one painted black, and surprisingly one painted a dark shade of grey.  Sure it&#8217;s no pink, but you can&#8217;t make everyone happy.
(Click for larger version, but they are big so be [...]');
INSERT INTO posts VALUES(NULL,343,5,5,'http://pandorapress.net/?p=3688','All dressed up and everywhere to go [updated]','2010-04-15 13:44:15','http://pandorapress.net/2010/04/15/all-dressed-up-and-everywhere-to-go/','Posted by: gruso
Behold, a painted and assembled Pandora. Click to zoom and enhance, and be warned, they&#8217;re large. As outlined in Tuesday&#8217;s festival of edits, the only verification needed on these painted cases was that they would fit together nicely. The factory has had a set of Pandora internals on hand for some time, so [...]');
INSERT INTO posts VALUES(NULL,344,5,5,'http://pandorapress.net/?p=3684','Video: The LCD Gamma Manager','2010-04-14 13:13:37','http://pandorapress.net/2010/04/14/video-the-lcd-gamma-manager/','Posted by: gruso

EvilDragon&#8217;s been scriptin&#8217;. In the last few days his Twitter account has announced new scripts for mouse control (hello nubs), user management, and as seen in the above video, LCD gamma settings. (For the unsure among you, these scripts are rolled into the OS and appear to the user as extra options to [...]');
INSERT INTO posts VALUES(NULL,345,5,5,'http://pandorapress.net/?p=3675','Official blog: Paint it Black [updated]','2010-04-13 06:45:24','http://pandorapress.net/2010/04/13/official-blog-paint-it-black/','Posted by: gruso
Here&#8217;s the post. [update] It seems this blog post contained some suggestions that could be misread as facts. Scroll to the bottom for a lengthy (and somewhat pleasing) elaboration from MWeston. Oh, and let&#8217;s not tear ED apart for imperfect 5.30am blog posts. The man works a month every week.
Here we go with [...]');
INSERT INTO posts VALUES(NULL,346,5,5,'http://pandorapress.net/?p=3641','Packed on palettes, pretty in… pink?!','2010-04-10 14:38:31','http://pandorapress.net/2010/04/10/packed-on-palettes-pretty-in-pink/','Posted by: BackAssward / gruso
Bums have been on the edge of seats today as we awaited news from the PCB and case factories, both of which had agreed to ship their stuff by the weekend. And while you may wish to keep one buttock on the threshold of your pew, some scraps of photographic reassurance [...]');
INSERT INTO posts VALUES(NULL,347,5,5,'http://pandorapress.net/?p=3621','Dev boards getting their wifi on','2010-04-08 00:20:22','http://pandorapress.net/2010/04/07/dev-boards-getting-their-wifi-on/','Posted by: gruso

With the wifi issue blown wide open, unseen forces no longer impede our progress. Notaz and Pickle have signed up for the resistance. Soon, we will join them.
Just had some hard time attempting to mod my board. That resistor is really small, see for yourself (my index finger and small screwdriver for comparison)
(Notaz)

First [...]');
INSERT INTO posts VALUES(NULL,348,5,5,'http://pandorapress.net/?p=3612','Official Blog: Back on Track!','2010-04-06 13:31:08','http://pandorapress.net/2010/04/06/official-blog-back-on-track/','Posted by: gruso
Finally &#8211; a new blog post. Wait, that&#8217;s ED&#8217;s line.
Finally &#8211; a new blog post. Did take a real long time, since there was so much we needed to figure out first.
Okay, here is what happened:
1. The WiFi issue &#8211; finally resolved
A lot of guys have probably already followed this on the boards: [...]');
INSERT INTO posts VALUES(NULL,349,5,5,'http://pandorapress.net/?p=3606','Fixed','2010-04-05 18:18:05','http://pandorapress.net/2010/04/05/fixed-2/','Posted by: atomicthumbs

The Pandora team has found the problem with the internal Wi-fi module. Turns out a resistor had an incorrect value.
It was a resistor.
CraigIX
Good news: The modification is minimal and can be done within a few minutes. We told the company to send the boards already produced and tested to UK ASAP and Michael [...]');
INSERT INTO posts VALUES(NULL,350,5,5,'http://pandorapress.net/?p=3602','Wifi video, case & board report','2010-04-02 23:17:21','http://pandorapress.net/2010/04/02/wifi-video-case-board-report/','Posted by: gruso

In this video, EvilDragon gets up to some networking &#8216;nanigans using the USB wifi stick that is set to accompany the first 1,000 Pandoras. For the benefit of the tubeless, he covers web browsing and forum posting with Midori, internet radio via the Exaile media player, downloading and installing a .PND from the [...]');
INSERT INTO posts VALUES(NULL,351,5,5,'http://pandorapress.net/?p=3595','Boards shipping, wifi dongling, pac manning','2010-04-02 00:53:38','http://pandorapress.net/2010/04/01/boards-shipping-wifi-dongling-pac-manning/','Posted by: gruso
We don&#8217;t have any word on the results of MWeston&#8217;s wifi tests, but you could probably make an intelligent guess based on the wheels that are now in motion. The first lot of boards are being packed up for shipping to the UK:
Arranging the Boards (etc.) shipping, wow, almost a metric ton.
(craigix via [...]');
INSERT INTO posts VALUES(NULL,352,5,5,'http://pandorapress.net/?p=3589','Wifi: what we’re waiting on','2010-04-01 10:33:34','http://pandorapress.net/2010/04/01/wifi-what-were-waiting-on/','Posted by: gruso
In a nutshell: there aren&#8217;t any answers to the wifi question just yet. MWeston is now running some hardware tests.
We had a long night yesterday in IRC where we thought about all possible issues how to find out what could cause the slow speed.
Michael is going to modify a board to be able [...]');
INSERT INTO posts VALUES(NULL,353,5,5,'http://pandorapress.net/2010/03/31/fixed/','Blog fixed.','2010-03-31 17:17:09','http://pandorapress.net/2010/03/31/fixed/','Apparently upgrading my blog host software removed RewriteEngine On from my .htaccess, disabling everything. If there&#8217;s any issues with RSS or anything let me know.
');
INSERT INTO posts VALUES(NULL,354,5,5,'http://pandorapress.net/?p=3581','Blog problem.','2010-03-31 07:24:27','http://pandorapress.net/2010/03/31/blog-problem/','Posted by: atomicthumbs
Blog posts started 404ing. Something wrong with mod_rewrite and permalinks. Changed permalink structure temporarily; RSS feed may be down too. Will fix as soon as possible. Sorry for the inconvenience.
');
INSERT INTO posts VALUES(NULL,355,5,5,'http://pandorapress.net/?p=3576','New pics from Fatih','2010-03-31 04:45:34','http://pandorapress.net/2010/03/30/new-pics-from-fatih/','Posted by: gruso

Fatih has received a couple of new photos from China, showing the inside and outside of the upper half of the lower section of the Pandora. Yes, this is one of those situations where you&#8217;re far better off just looking at the pictures. For those who like clues with their news, these pictures [...]');
INSERT INTO posts VALUES(NULL,356,5,5,'http://pandorapress.net/?p=3569','More forumers get a test drive','2010-03-31 01:29:55','http://pandorapress.net/2010/03/30/more-forumers-get-a-test-drive/','Posted by: gruso

Last week Skeezix extended an invite to any Toronto dwelling Pandorians, to join him at a pub for some grub and a hands-on with his Pandora prototype. WizardStan and Tempel took him up on the offer, skipping out on an office commitment or two and rather appropriately packing their own obscure gadgets. Here&#8217;s [...]');
INSERT INTO posts VALUES(NULL,358,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02372.jpg','Assembled test cases','2010-04-16 21:14:07','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02372.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02372.jpg&sort=ascending" title="DSC02372.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02372.jpg" alt="DSC02372.jpg" /></a><br>Assembled test cases - DSC02372.jpg</p><p>Unpainted         Black painted
            Grey painted</p>');
INSERT INTO posts VALUES(NULL,359,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02367.jpg','New case samples','2010-04-16 20:24:16','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02367.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02367.jpg&sort=ascending" title="DSC02367.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02367.jpg" alt="DSC02367.jpg" /></a><br>New case samples - DSC02367.jpg</p><p>Unpainted/Grey/Black

Interesting choices.  Grey is actually like a black/silver looking thing but not at all as nasty as real silver would be.  I like it.  The final color is still black though.

This picture was taken outside in the sunlight.</p>');
INSERT INTO posts VALUES(NULL,360,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/batt_levels.jpg','Battery monitor analysis','2010-03-06 02:12:30','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_levels.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_levels.jpg&sort=ascending" title="batt_levels.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_batt_levels.jpg" alt="batt_levels.jpg" /></a><br>Battery monitor analysis - batt_levels.jpg</p><p>A picture for Notaz in the interest of figuring out how the battery app calculates time left.

The top screenshot is with the LCD at low brightness, perhaps around 25%.  The bottom screenshot is 100% brightness.  The clock is 500MHz and nothing is running but the terminal.</p>');
INSERT INTO posts VALUES(NULL,361,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/rev5.jpg','Rev5 PCB','2010-02-17 16:09:31','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=rev5.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=rev5.jpg&sort=ascending" title="rev5.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_rev5.jpg" alt="rev5.jpg" /></a><br>Rev5 PCB - rev5.jpg</p><p>Now with more hacker points to void your warranty even faster. ;)</p>');
INSERT INTO posts VALUES(NULL,362,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02133.jpg','rev3 case sample','2010-02-06 18:11:53','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02133.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02133.jpg&sort=ascending" title="DSC02133.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02133.jpg" alt="DSC02133.jpg" /></a><br>rev3 case sample - DSC02133.jpg</p>');
INSERT INTO posts VALUES(NULL,363,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/keymat_final.jpg','Final keymat','2010-02-05 22:54:19','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat_final.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat_final.jpg&sort=ascending" title="keymat_final.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_keymat_final.jpg" alt="keymat_final.jpg" /></a><br>Final keymat - keymat_final.jpg</p><p>Just some silkscreen modifications and better quality control on button coating was needed.</p>');
INSERT INTO posts VALUES(NULL,364,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/cable_connector.png','Pinout of A/V connector (plug side)','2010-01-14 15:02:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=cable_connector.png&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=cable_connector.png&sort=ascending" title="cable_connector.png"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_cable_connector.png" alt="cable_connector.png" /></a><br>Pinout of A/V connector (plug side) - cable_connector.png</p><p>male plug view</p>');
INSERT INTO posts VALUES(NULL,365,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/finish_difference.jpg','Finish comparison','2010-01-02 03:54:05','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=finish_difference.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=finish_difference.jpg&sort=ascending" title="finish_difference.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_finish_difference.jpg" alt="finish_difference.jpg" /></a><br>Finish comparison - finish_difference.jpg</p><p>There is a definite improvement in the finish of the plastic.  Also, holes are better and have fewer jagged edges but some discoloration and uneven cooling marks remain.  Again, these parts are an intermediate test that fixed numerous problems to the structure, but are not final.</p>');
INSERT INTO posts VALUES(NULL,366,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/silk_screen.jpg','Silkscreen test','2010-01-02 03:54:01','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=silk_screen.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=silk_screen.jpg&sort=ascending" title="silk_screen.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_silk_screen.jpg" alt="silk_screen.jpg" /></a><br>Silkscreen test - silk_screen.jpg</p><p>Needs improvement on alignment and ink deposition.  This proves that they can print the labels where we need them and I think that was the point of sending these parts early.  I hope the next ones are better.

Also, they used the wrong file as we can use the official BT logo since registrations was free.</p>');
INSERT INTO posts VALUES(NULL,367,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/wiz_cable.jpg','Wiz connector','2009-12-26 19:33:34','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=wiz_cable.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=wiz_cable.jpg&sort=ascending" title="wiz_cable.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_wiz_cable.jpg" alt="wiz_cable.jpg" /></a><br>Wiz connector - wiz_cable.jpg</p><p>This is what my cable looks like for those having charging issues.</p>');
INSERT INTO posts VALUES(NULL,368,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01785.jpg','Hinge rotation comparison with NDS lite','2009-12-11 00:34:33','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01785.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01785.jpg&sort=ascending" title="DSC01785.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01785.jpg" alt="DSC01785.jpg" /></a><br>Hinge rotation comparison with NDS lite - DSC01785.jpg</p><p>Pandora''s hinge locks into place somewhere in between the two positions the DS has.  The DS is in the first lock position in this picture.  You can push the Pandora lid further back but it will spring back to this point and stay locked.</p>');
INSERT INTO posts VALUES(NULL,369,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01790.jpg','NDS lite comparison, front face','2009-12-11 00:34:30','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01790.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01790.jpg&sort=ascending" title="DSC01790.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01790.jpg" alt="DSC01790.jpg" /></a><br>NDS lite comparison, front face - DSC01790.jpg</p>');
INSERT INTO posts VALUES(NULL,370,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01715.jpg','DSC01715.jpg','2009-12-09 03:06:13','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01715.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01715.jpg&sort=ascending" title="DSC01715.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01715.jpg" alt="DSC01715.jpg" /></a><br>DSC01715.jpg</p>');
INSERT INTO posts VALUES(NULL,371,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01663.jpg','Lid assembled','2009-12-08 23:17:18','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01663.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01663.jpg&sort=ascending" title="DSC01663.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01663.jpg" alt="DSC01663.jpg" /></a><br>Lid assembled - DSC01663.jpg</p>');
INSERT INTO posts VALUES(NULL,372,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/batt_case.jpg','Battery case','2009-12-08 22:51:48','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_case.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_case.jpg&sort=ascending" title="batt_case.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_batt_case.jpg" alt="batt_case.jpg" /></a><br>Battery case - batt_case.jpg</p>');
INSERT INTO posts VALUES(NULL,373,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01642.jpg','First test: hinge mechanism','2009-12-08 22:00:51','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01642.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01642.jpg&sort=ascending" title="DSC01642.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01642.jpg" alt="DSC01642.jpg" /></a><br>First test: hinge mechanism - DSC01642.jpg</p>');
INSERT INTO posts VALUES(NULL,374,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/different_lights.jpg','Trying out different LEDs','2009-11-30 23:30:53','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=different_lights.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=different_lights.jpg&sort=ascending" title="different_lights.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_different_lights.jpg" alt="different_lights.jpg" /></a><br>Trying out different LEDs - different_lights.jpg</p><p>Blue tends to wash out or blend too much with nearby colors, even with the current set ridiculously low</p>');
INSERT INTO posts VALUES(NULL,375,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/Pandora_assembly.jpg','First run of production boards (not all shown here)','2009-11-17 19:14:17','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=Pandora_assembly.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=Pandora_assembly.jpg&sort=ascending" title="Pandora_assembly.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_Pandora_assembly.jpg" alt="Pandora_assembly.jpg" /></a><br>First run of production boards (not all shown here) - Pandora_assembly.jpg</p>');
INSERT INTO posts VALUES(NULL,376,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01605.jpg','DSC01605.jpg','2009-11-13 22:49:17','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01605.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01605.jpg&sort=ascending" title="DSC01605.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01605.jpg" alt="DSC01605.jpg" /></a><br>DSC01605.jpg</p>');
INSERT INTO posts VALUES(NULL,377,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01612.jpg','DSC01612.jpg','2009-11-13 22:46:31','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01612.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01612.jpg&sort=ascending" title="DSC01612.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01612.jpg" alt="DSC01612.jpg" /></a><br>DSC01612.jpg</p>');
INSERT INTO posts VALUES(NULL,378,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/keymat.jpg','keymat.jpg','2009-09-20 03:14:20','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat.jpg&sort=ascending" title="keymat.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_keymat.jpg" alt="keymat.jpg" /></a><br>keymat.jpg</p>');
INSERT INTO posts VALUES(NULL,379,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01447.jpg','Packaged cables and how they will ship to customers','2009-09-11 23:25:25','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01447.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01447.jpg&sort=ascending" title="DSC01447.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01447.jpg" alt="DSC01447.jpg" /></a><br>Packaged cables and how they will ship to customers - DSC01447.jpg</p>');
INSERT INTO posts VALUES(NULL,380,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01450.jpg','Buckle near end of cable that fans individual plugs out','2009-09-11 23:25:19','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01450.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01450.jpg&sort=ascending" title="DSC01450.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01450.jpg" alt="DSC01450.jpg" /></a><br>Buckle near end of cable that fans individual plugs out - DSC01450.jpg</p>');
INSERT INTO posts VALUES(NULL,381,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01455.jpg','Plug end that connects to Pandora','2009-09-11 23:25:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01455.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01455.jpg&sort=ascending" title="DSC01455.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01455.jpg" alt="DSC01455.jpg" /></a><br>Plug end that connects to Pandora - DSC01455.jpg</p>');
INSERT INTO posts VALUES(NULL,382,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01459.jpg','The 6 analog inputs/outputs','2009-09-11 23:25:07','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01459.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01459.jpg&sort=ascending" title="DSC01459.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01459.jpg" alt="DSC01459.jpg" /></a><br>The 6 analog inputs/outputs - DSC01459.jpg</p><p>-Line in left/right
-Line out left/right
-Composite out (not at same time as S-Video)
-S-Video out (not at same time as composite)</p>');
INSERT INTO posts VALUES(NULL,383,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01464.jpg','Everything plugged into back','2009-09-11 23:25:02','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01464.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01464.jpg&sort=ascending" title="DSC01464.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01464.jpg" alt="DSC01464.jpg" /></a><br>Everything plugged into back - DSC01464.jpg</p><p>it fits!</p>');
INSERT INTO posts VALUES(NULL,384,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora_rev4.jpg','Rev4 production samples','2009-09-10 22:26:23','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_rev4.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_rev4.jpg&sort=ascending" title="pandora_rev4.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora_rev4.jpg" alt="pandora_rev4.jpg" /></a><br>Rev4 production samples - pandora_rev4.jpg</p><p>I finally got some production samples that passed testing.  These are the best looking boards of all the revisions ever made.  The guy in charge of assembly for the Pandora project  does such an amazing job!</p>');
INSERT INTO posts VALUES(NULL,385,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01409.jpg','Testing the final nub firmware to be loaded into 8000 chips!','2009-08-05 04:40:57','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01409.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01409.jpg&sort=ascending" title="DSC01409.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01409.jpg" alt="DSC01409.jpg" /></a><br>Testing the final nub firmware to be loaded into 8000 chips! - DSC01409.jpg</p><p>I thought it worked well before, but now it is jitter free.</p>');
INSERT INTO posts VALUES(NULL,386,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01191.jpg','Almost see through','2009-05-21 07:31:45','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01191.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01191.jpg&sort=ascending" title="DSC01191.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01191.jpg" alt="DSC01191.jpg" /></a><br>Almost see through - DSC01191.jpg</p>');
INSERT INTO posts VALUES(NULL,387,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01200.jpg','Ebony...Ivory...Livin in perfect harmony','2009-05-21 07:31:37','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01200.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01200.jpg&sort=ascending" title="DSC01200.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01200.jpg" alt="DSC01200.jpg" /></a><br>Ebony...Ivory...Livin in perfect harmony - DSC01200.jpg</p>');
INSERT INTO posts VALUES(NULL,388,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01177.jpg','Pandora Generations','2009-05-20 21:53:02','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01177.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01177.jpg&sort=ascending" title="DSC01177.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01177.jpg" alt="DSC01177.jpg" /></a><br>Pandora Generations - DSC01177.jpg</p>');
INSERT INTO posts VALUES(NULL,389,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01163.jpg','DSC01163.jpg','2009-05-12 19:58:21','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01163.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01163.jpg&sort=ascending" title="DSC01163.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01163.jpg" alt="DSC01163.jpg" /></a><br>DSC01163.jpg</p>');
INSERT INTO posts VALUES(NULL,390,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/production_battery.jpg','Production battery','2009-04-22 08:05:48','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=production_battery.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=production_battery.jpg&sort=ascending" title="production_battery.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_production_battery.jpg" alt="production_battery.jpg" /></a><br>Production battery - production_battery.jpg</p>');
INSERT INTO posts VALUES(NULL,391,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora_space.png','Internal spacing','2009-04-01 22:05:33','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_space.png&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_space.png&sort=ascending" title="pandora_space.png"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora_space.png" alt="pandora_space.png" /></a><br>Internal spacing - pandora_space.png</p><p>or lack thereof...</p>');
INSERT INTO posts VALUES(NULL,392,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora.jpg','pandora.jpg','2008-01-19 06:16:27','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora.jpg&sort=ascending" title="pandora.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora.jpg" alt="pandora.jpg" /></a><br>pandora.jpg</p>');
INSERT INTO posts VALUES(NULL,393,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/proto.jpg','Framebuffer Attempt #1','2007-09-14 20:41:47','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=proto.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=proto.jpg&sort=ascending" title="proto.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_proto.jpg" alt="proto.jpg" /></a><br>Framebuffer Attempt #1 - proto.jpg</p><p>Trying to set up registers for this LCD did not go well right away  (as seen here).  It is now set up properly, but a new picture wasn''t taken.</p>');
INSERT INTO posts VALUES(NULL,394,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00244.jpg','Front Face','2007-08-10 00:06:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00244.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00244.jpg&sort=ascending" title="DSC00244.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00244.jpg" alt="DSC00244.jpg" /></a><br>Front Face - DSC00244.jpg</p>');
INSERT INTO posts VALUES(NULL,395,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00243.jpg','Bottom Edge','2007-08-10 00:06:10','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00243.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00243.jpg&sort=ascending" title="DSC00243.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00243.jpg" alt="DSC00243.jpg" /></a><br>Bottom Edge - DSC00243.jpg</p>');
INSERT INTO posts VALUES(NULL,396,4,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00242.jpg','Top Edge','2007-08-10 00:06:08','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00242.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00242.jpg&sort=ascending" title="DSC00242.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00242.jpg" alt="DSC00242.jpg" /></a><br>Top Edge - DSC00242.jpg</p>');
INSERT INTO posts VALUES(NULL,397,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/all_cases.jpg','Open cases side by side','2010-04-16 21:33:03','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=all_cases.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=all_cases.jpg&sort=ascending" title="all_cases.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_all_cases.jpg" alt="all_cases.jpg" /></a><br>Open cases side by side - all_cases.jpg</p><p>Black/grey/unpainted</p>');
INSERT INTO posts VALUES(NULL,398,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02372.jpg','Assembled test cases','2010-04-16 21:14:07','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02372.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02372.jpg&sort=ascending" title="DSC02372.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02372.jpg" alt="DSC02372.jpg" /></a><br>Assembled test cases - DSC02372.jpg</p><p>Unpainted         Black painted
            Grey painted</p>');
INSERT INTO posts VALUES(NULL,399,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02367.jpg','New case samples','2010-04-16 20:24:16','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02367.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02367.jpg&sort=ascending" title="DSC02367.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02367.jpg" alt="DSC02367.jpg" /></a><br>New case samples - DSC02367.jpg</p><p>Unpainted/Grey/Black

Interesting choices.  Grey is actually like a black/silver looking thing but not at all as nasty as real silver would be.  I like it.  The final color is still black though.

This picture was taken outside in the sunlight.</p>');
INSERT INTO posts VALUES(NULL,400,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/batt_levels.jpg','Battery monitor analysis','2010-03-06 02:12:30','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_levels.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_levels.jpg&sort=ascending" title="batt_levels.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_batt_levels.jpg" alt="batt_levels.jpg" /></a><br>Battery monitor analysis - batt_levels.jpg</p><p>A picture for Notaz in the interest of figuring out how the battery app calculates time left.

The top screenshot is with the LCD at low brightness, perhaps around 25%.  The bottom screenshot is 100% brightness.  The clock is 500MHz and nothing is running but the terminal.</p>');
INSERT INTO posts VALUES(NULL,401,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/rev5.jpg','Rev5 PCB','2010-02-17 16:09:31','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=rev5.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=rev5.jpg&sort=ascending" title="rev5.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_rev5.jpg" alt="rev5.jpg" /></a><br>Rev5 PCB - rev5.jpg</p><p>Now with more hacker points to void your warranty even faster. ;)</p>');
INSERT INTO posts VALUES(NULL,402,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC02133.jpg','rev3 case sample','2010-02-06 18:11:53','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02133.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC02133.jpg&sort=ascending" title="DSC02133.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC02133.jpg" alt="DSC02133.jpg" /></a><br>rev3 case sample - DSC02133.jpg</p>');
INSERT INTO posts VALUES(NULL,403,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/keymat_final.jpg','Final keymat','2010-02-05 22:54:19','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat_final.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat_final.jpg&sort=ascending" title="keymat_final.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_keymat_final.jpg" alt="keymat_final.jpg" /></a><br>Final keymat - keymat_final.jpg</p><p>Just some silkscreen modifications and better quality control on button coating was needed.</p>');
INSERT INTO posts VALUES(NULL,404,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/cable_connector.png','Pinout of A/V connector (plug side)','2010-01-14 15:02:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=cable_connector.png&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=cable_connector.png&sort=ascending" title="cable_connector.png"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_cable_connector.png" alt="cable_connector.png" /></a><br>Pinout of A/V connector (plug side) - cable_connector.png</p><p>male plug view</p>');
INSERT INTO posts VALUES(NULL,405,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/finish_difference.jpg','Finish comparison','2010-01-02 03:54:05','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=finish_difference.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=finish_difference.jpg&sort=ascending" title="finish_difference.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_finish_difference.jpg" alt="finish_difference.jpg" /></a><br>Finish comparison - finish_difference.jpg</p><p>There is a definite improvement in the finish of the plastic.  Also, holes are better and have fewer jagged edges but some discoloration and uneven cooling marks remain.  Again, these parts are an intermediate test that fixed numerous problems to the structure, but are not final.</p>');
INSERT INTO posts VALUES(NULL,406,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/silk_screen.jpg','Silkscreen test','2010-01-02 03:54:01','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=silk_screen.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=silk_screen.jpg&sort=ascending" title="silk_screen.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_silk_screen.jpg" alt="silk_screen.jpg" /></a><br>Silkscreen test - silk_screen.jpg</p><p>Needs improvement on alignment and ink deposition.  This proves that they can print the labels where we need them and I think that was the point of sending these parts early.  I hope the next ones are better.

Also, they used the wrong file as we can use the official BT logo since registrations was free.</p>');
INSERT INTO posts VALUES(NULL,407,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/wiz_cable.jpg','Wiz connector','2009-12-26 19:33:34','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=wiz_cable.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=wiz_cable.jpg&sort=ascending" title="wiz_cable.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_wiz_cable.jpg" alt="wiz_cable.jpg" /></a><br>Wiz connector - wiz_cable.jpg</p><p>This is what my cable looks like for those having charging issues.</p>');
INSERT INTO posts VALUES(NULL,408,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01785.jpg','Hinge rotation comparison with NDS lite','2009-12-11 00:34:33','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01785.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01785.jpg&sort=ascending" title="DSC01785.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01785.jpg" alt="DSC01785.jpg" /></a><br>Hinge rotation comparison with NDS lite - DSC01785.jpg</p><p>Pandora''s hinge locks into place somewhere in between the two positions the DS has.  The DS is in the first lock position in this picture.  You can push the Pandora lid further back but it will spring back to this point and stay locked.</p>');
INSERT INTO posts VALUES(NULL,409,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01790.jpg','NDS lite comparison, front face','2009-12-11 00:34:30','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01790.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01790.jpg&sort=ascending" title="DSC01790.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01790.jpg" alt="DSC01790.jpg" /></a><br>NDS lite comparison, front face - DSC01790.jpg</p>');
INSERT INTO posts VALUES(NULL,410,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01715.jpg','DSC01715.jpg','2009-12-09 03:06:13','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01715.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01715.jpg&sort=ascending" title="DSC01715.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01715.jpg" alt="DSC01715.jpg" /></a><br>DSC01715.jpg</p>');
INSERT INTO posts VALUES(NULL,411,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01663.jpg','Lid assembled','2009-12-08 23:17:18','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01663.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01663.jpg&sort=ascending" title="DSC01663.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01663.jpg" alt="DSC01663.jpg" /></a><br>Lid assembled - DSC01663.jpg</p>');
INSERT INTO posts VALUES(NULL,412,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/batt_case.jpg','Battery case','2009-12-08 22:51:48','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_case.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=batt_case.jpg&sort=ascending" title="batt_case.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_batt_case.jpg" alt="batt_case.jpg" /></a><br>Battery case - batt_case.jpg</p>');
INSERT INTO posts VALUES(NULL,413,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01642.jpg','First test: hinge mechanism','2009-12-08 22:00:51','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01642.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01642.jpg&sort=ascending" title="DSC01642.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01642.jpg" alt="DSC01642.jpg" /></a><br>First test: hinge mechanism - DSC01642.jpg</p>');
INSERT INTO posts VALUES(NULL,414,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/different_lights.jpg','Trying out different LEDs','2009-11-30 23:30:53','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=different_lights.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=different_lights.jpg&sort=ascending" title="different_lights.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_different_lights.jpg" alt="different_lights.jpg" /></a><br>Trying out different LEDs - different_lights.jpg</p><p>Blue tends to wash out or blend too much with nearby colors, even with the current set ridiculously low</p>');
INSERT INTO posts VALUES(NULL,415,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/Pandora_assembly.jpg','First run of production boards (not all shown here)','2009-11-17 19:14:17','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=Pandora_assembly.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=Pandora_assembly.jpg&sort=ascending" title="Pandora_assembly.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_Pandora_assembly.jpg" alt="Pandora_assembly.jpg" /></a><br>First run of production boards (not all shown here) - Pandora_assembly.jpg</p>');
INSERT INTO posts VALUES(NULL,416,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01605.jpg','DSC01605.jpg','2009-11-13 22:49:17','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01605.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01605.jpg&sort=ascending" title="DSC01605.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01605.jpg" alt="DSC01605.jpg" /></a><br>DSC01605.jpg</p>');
INSERT INTO posts VALUES(NULL,417,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01612.jpg','DSC01612.jpg','2009-11-13 22:46:31','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01612.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01612.jpg&sort=ascending" title="DSC01612.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01612.jpg" alt="DSC01612.jpg" /></a><br>DSC01612.jpg</p>');
INSERT INTO posts VALUES(NULL,418,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/keymat.jpg','keymat.jpg','2009-09-20 03:14:20','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=keymat.jpg&sort=ascending" title="keymat.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_keymat.jpg" alt="keymat.jpg" /></a><br>keymat.jpg</p>');
INSERT INTO posts VALUES(NULL,419,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01447.jpg','Packaged cables and how they will ship to customers','2009-09-11 23:25:25','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01447.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01447.jpg&sort=ascending" title="DSC01447.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01447.jpg" alt="DSC01447.jpg" /></a><br>Packaged cables and how they will ship to customers - DSC01447.jpg</p>');
INSERT INTO posts VALUES(NULL,420,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01450.jpg','Buckle near end of cable that fans individual plugs out','2009-09-11 23:25:19','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01450.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01450.jpg&sort=ascending" title="DSC01450.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01450.jpg" alt="DSC01450.jpg" /></a><br>Buckle near end of cable that fans individual plugs out - DSC01450.jpg</p>');
INSERT INTO posts VALUES(NULL,421,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01455.jpg','Plug end that connects to Pandora','2009-09-11 23:25:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01455.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01455.jpg&sort=ascending" title="DSC01455.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01455.jpg" alt="DSC01455.jpg" /></a><br>Plug end that connects to Pandora - DSC01455.jpg</p>');
INSERT INTO posts VALUES(NULL,422,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01459.jpg','The 6 analog inputs/outputs','2009-09-11 23:25:07','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01459.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01459.jpg&sort=ascending" title="DSC01459.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01459.jpg" alt="DSC01459.jpg" /></a><br>The 6 analog inputs/outputs - DSC01459.jpg</p><p>-Line in left/right
-Line out left/right
-Composite out (not at same time as S-Video)
-S-Video out (not at same time as composite)</p>');
INSERT INTO posts VALUES(NULL,423,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01464.jpg','Everything plugged into back','2009-09-11 23:25:02','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01464.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01464.jpg&sort=ascending" title="DSC01464.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01464.jpg" alt="DSC01464.jpg" /></a><br>Everything plugged into back - DSC01464.jpg</p><p>it fits!</p>');
INSERT INTO posts VALUES(NULL,424,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora_rev4.jpg','Rev4 production samples','2009-09-10 22:26:23','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_rev4.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_rev4.jpg&sort=ascending" title="pandora_rev4.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora_rev4.jpg" alt="pandora_rev4.jpg" /></a><br>Rev4 production samples - pandora_rev4.jpg</p><p>I finally got some production samples that passed testing.  These are the best looking boards of all the revisions ever made.  The guy in charge of assembly for the Pandora project  does such an amazing job!</p>');
INSERT INTO posts VALUES(NULL,425,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01409.jpg','Testing the final nub firmware to be loaded into 8000 chips!','2009-08-05 04:40:57','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01409.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01409.jpg&sort=ascending" title="DSC01409.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01409.jpg" alt="DSC01409.jpg" /></a><br>Testing the final nub firmware to be loaded into 8000 chips! - DSC01409.jpg</p><p>I thought it worked well before, but now it is jitter free.</p>');
INSERT INTO posts VALUES(NULL,426,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01191.jpg','Almost see through','2009-05-21 07:31:45','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01191.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01191.jpg&sort=ascending" title="DSC01191.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01191.jpg" alt="DSC01191.jpg" /></a><br>Almost see through - DSC01191.jpg</p>');
INSERT INTO posts VALUES(NULL,427,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01200.jpg','Ebony...Ivory...Livin in perfect harmony','2009-05-21 07:31:37','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01200.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01200.jpg&sort=ascending" title="DSC01200.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01200.jpg" alt="DSC01200.jpg" /></a><br>Ebony...Ivory...Livin in perfect harmony - DSC01200.jpg</p>');
INSERT INTO posts VALUES(NULL,428,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01177.jpg','Pandora Generations','2009-05-20 21:53:02','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01177.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01177.jpg&sort=ascending" title="DSC01177.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01177.jpg" alt="DSC01177.jpg" /></a><br>Pandora Generations - DSC01177.jpg</p>');
INSERT INTO posts VALUES(NULL,429,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC01163.jpg','DSC01163.jpg','2009-05-12 19:58:21','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01163.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC01163.jpg&sort=ascending" title="DSC01163.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC01163.jpg" alt="DSC01163.jpg" /></a><br>DSC01163.jpg</p>');
INSERT INTO posts VALUES(NULL,430,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/production_battery.jpg','Production battery','2009-04-22 08:05:48','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=production_battery.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=production_battery.jpg&sort=ascending" title="production_battery.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_production_battery.jpg" alt="production_battery.jpg" /></a><br>Production battery - production_battery.jpg</p>');
INSERT INTO posts VALUES(NULL,431,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora_space.png','Internal spacing','2009-04-01 22:05:33','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_space.png&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora_space.png&sort=ascending" title="pandora_space.png"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora_space.png" alt="pandora_space.png" /></a><br>Internal spacing - pandora_space.png</p><p>or lack thereof...</p>');
INSERT INTO posts VALUES(NULL,432,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/pandora.jpg','pandora.jpg','2008-01-19 06:16:27','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=pandora.jpg&sort=ascending" title="pandora.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_pandora.jpg" alt="pandora.jpg" /></a><br>pandora.jpg</p>');
INSERT INTO posts VALUES(NULL,433,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/proto.jpg','Framebuffer Attempt #1','2007-09-14 20:41:47','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=proto.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=proto.jpg&sort=ascending" title="proto.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_proto.jpg" alt="proto.jpg" /></a><br>Framebuffer Attempt #1 - proto.jpg</p><p>Trying to set up registers for this LCD did not go well right away  (as seen here).  It is now set up properly, but a new picture wasn''t taken.</p>');
INSERT INTO posts VALUES(NULL,434,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00244.jpg','Front Face','2007-08-10 00:06:12','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00244.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00244.jpg&sort=ascending" title="DSC00244.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00244.jpg" alt="DSC00244.jpg" /></a><br>Front Face - DSC00244.jpg</p>');
INSERT INTO posts VALUES(NULL,435,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00243.jpg','Bottom Edge','2007-08-10 00:06:10','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00243.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00243.jpg&sort=ascending" title="DSC00243.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00243.jpg" alt="DSC00243.jpg" /></a><br>Bottom Edge - DSC00243.jpg</p>');
INSERT INTO posts VALUES(NULL,437,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/DSC00242.jpg','Top Edge','2007-08-10 00:06:08','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00242.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=DSC00242.jpg&sort=ascending" title="DSC00242.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_DSC00242.jpg" alt="DSC00242.jpg" /></a><br>Top Edge - DSC00242.jpg</p>');
INSERT INTO posts VALUES(NULL,438,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/black_grey_flash.jpg','Fully assembled production samples','2010-04-17 05:39:43','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=black_grey_flash.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=black_grey_flash.jpg&sort=ascending" title="black_grey_flash.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_black_grey_flash.jpg" alt="black_grey_flash.jpg" /></a><br>Fully assembled production samples - black_grey_flash.jpg</p><p>Flash on camera

(plastic cover on  LCD face)</p>');
INSERT INTO posts VALUES(NULL,439,6,4,'http://i198.photobucket.com/albums/aa99/MWeston_2007/black_grey_noflash.jpg','Fully assembled production samples','2010-04-17 05:39:39','http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=black_grey_noflash.jpg&sort=ascending','<p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/">MWeston_2007</a> posted a photo</a></p><p><a href="http://s198.photobucket.com/albums/aa99/MWeston_2007/?action=view&current=black_grey_noflash.jpg&sort=ascending" title="black_grey_noflash.jpg"><img src="http://i198.photobucket.com/albums/aa99/MWeston_2007/th_black_grey_noflash.jpg" alt="black_grey_noflash.jpg" /></a><br>Fully assembled production samples - black_grey_noflash.jpg</p><p>No camera flash

(plastic cover on  LCD face)</p>');
INSERT INTO posts VALUES(NULL,440,3,1,'http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink','2010-04-15 06:59:21','http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink');
INSERT INTO posts VALUES(NULL,441,3,1,'http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink','2010-04-10 12:14:34','http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink');
INSERT INTO posts VALUES(NULL,442,3,1,'http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png','2010-04-08 11:28:39','http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png');
INSERT INTO posts VALUES(NULL,443,3,1,'http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...','2010-04-08 06:55:28','http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...');
INSERT INTO posts VALUES(NULL,444,3,1,'http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink','2010-03-25 09:54:00','http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink');
INSERT INTO posts VALUES(NULL,445,3,1,'http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one','2010-03-19 09:43:14','http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one');
INSERT INTO posts VALUES(NULL,446,3,1,'http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!','2010-03-12 13:06:49','http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!');
INSERT INTO posts VALUES(NULL,447,3,1,'http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?','2010-02-23 14:41:52','http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?');
INSERT INTO posts VALUES(NULL,448,3,2,'http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink','2010-04-15 06:59:21','http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink');
INSERT INTO posts VALUES(NULL,449,3,2,'http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink','2010-04-10 12:14:34','http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink');
INSERT INTO posts VALUES(NULL,450,3,2,'http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png','2010-04-08 11:28:39','http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png');
INSERT INTO posts VALUES(NULL,451,3,2,'http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...','2010-04-08 06:55:28','http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...');
INSERT INTO posts VALUES(NULL,452,3,2,'http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink','2010-03-25 09:54:00','http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink');
INSERT INTO posts VALUES(NULL,453,3,2,'http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one','2010-03-19 09:43:14','http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one');
INSERT INTO posts VALUES(NULL,454,3,2,'http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!','2010-03-12 13:06:49','http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!');
INSERT INTO posts VALUES(NULL,455,3,2,'http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?','2010-02-23 14:41:52','http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?');
INSERT INTO posts VALUES(NULL,456,3,3,'http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink','2010-04-15 06:59:21','http://twitter.com/_mfk/statuses/12209698708','_mfk: Black is back... http://picasaweb.google.com/mfk.pandora/BlackPandora?feat=directlink');
INSERT INTO posts VALUES(NULL,457,3,3,'http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink','2010-04-10 12:14:34','http://twitter.com/_mfk/statuses/11934148999','_mfk: Good things will come... http://picasaweb.google.com/mfk.pandora/LifeInColor?feat=directlink');
INSERT INTO posts VALUES(NULL,458,3,3,'http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png','2010-04-08 11:28:39','http://twitter.com/_mfk/statuses/11818489183','_mfk: Glance won the BP2010 C64 Demo compo... I''m sooooo proud of them. :) http://i40.tinypic.com/202sev.png');
INSERT INTO posts VALUES(NULL,459,3,3,'http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...','2010-04-08 06:55:28','http://twitter.com/_mfk/statuses/11810982787','_mfk: Twitting from Pandora...');
INSERT INTO posts VALUES(NULL,460,3,3,'http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink','2010-03-25 09:54:00','http://twitter.com/_mfk/statuses/11026806040','_mfk: Made in China! - http://picasaweb.google.com.tr/mfk.pandora/MassProductionSample1?feat=directlink');
INSERT INTO posts VALUES(NULL,461,3,3,'http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one','2010-03-19 09:43:14','http://twitter.com/_mfk/statuses/10715186237','_mfk: :D.... [11:40:56 AM] David: yes.  no shringe, no water mark...   like japanese one');
INSERT INTO posts VALUES(NULL,462,3,3,'http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!','2010-03-12 13:06:49','http://twitter.com/_mfk/statuses/10370779639','_mfk: Mass production of plastic parts started!');
INSERT INTO posts VALUES(NULL,463,3,3,'http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?','2010-02-23 14:41:52','http://twitter.com/_mfk/statuses/9528123654','_mfk: do you have a Pandora?');
INSERT INTO posts VALUES(NULL,464,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,6,43','Exaile','2010-04-09 00:42:53','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,6,43','Exaile is a music manager and player for GTK+ written in Python. It incorporates automatic fetching of album art, lyrics fetching, Last.fm scrobbling, support for many portable media players, internet radio such as shoutcast, and tabbed playlists.');
INSERT INTO posts VALUES(NULL,465,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,49','Pandora SDcard Images Vol.1+2 repacked','2010-03-30 23:59:15','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,49','Pandora SD Card Images Volumes 1+2 (BMP+PSD, separated/contact sheet for easy print).
Same as 1st three posts, but joined and repacked with 7-Zip archiver (6+MB vs 11+MB).
Linux, OS X, Amiga, Dos...:
Use it as regular 7-Zip archive (*.7z)');
INSERT INTO posts VALUES(NULL,466,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,25,48','BattleJewels','2010-03-29 15:32:36','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,25,48','BattleJewels is a Puzzle-Action-RPG.

Plays like popular jewel games, but is played head to head against a never-ending sequence of enemies. Experience points are gained towards levelling up, and gear may be purchased, and skills and spells may be learned.

Multiplayer is coming!');
INSERT INTO posts VALUES(NULL,467,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,72,47','CBM: Vice (Misc Machines)','2010-03-25 04:30:54','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,72,47','Emulators for CBM2, C128, PET, Plus4 and the VIC.');
INSERT INTO posts VALUES(NULL,468,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,72,46','C64: Vice','2010-03-25 04:28:52','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,72,46','A C64 Emulator for your Pandora');
INSERT INTO posts VALUES(NULL,469,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,45','Pandora Theme screensaver','2010-03-23 16:56:04','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,45','Screen saver with 4 Pandora Theme wallpapers.
I took 4 (all) wallpapers from official page.
Made with IrfanView.');
INSERT INTO posts VALUES(NULL,470,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,40','Subtitles for EvilDragon''s CeBit speech','2010-03-21 20:08:13','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,23,40','As the Name says. Finally i am done with all six parts.
To play, download the youtube videos using your preferred method, play it with your favorite media player and load subtitles.
You can also use your favorite text editor to read them without video.');
INSERT INTO posts VALUES(NULL,471,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,29,44','Free Heroes 2','2010-03-17 03:52:32','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,29,44','The Free Heroes II project (FHeroes 2) aim to create a free implementation of Heroes of Might and Magic II engine using SDL.

You need to own the original game to play it.');
INSERT INTO posts VALUES(NULL,472,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,30,42','C-Dogs','2010-03-17 03:47:30','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,30,42','C-Dogs is an arcade shoot-em-up which lets players work alone and cooperatively during missions or fight against each other in the dogfight deathmatch mode. The original DOS version of C-Dogs came with several built in missions and dogfight maps. This version does too.

The author of the DOS version of C-Dogs was Ronny Wester.');
INSERT INTO posts VALUES(NULL,473,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,25,41','Angry, Drunken Dwarfs','2010-03-17 03:45:41','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,25,41','In Angry, Drunken Dwarves, you are an angry, drunken dwarf. Why are you so angry? Who knows. But you''ve decided to take your aggression out on other dwarves, by dropping gems on their heads. Lots of gems. ADD is a member of the classic "falling blocks" puzzle game family, similar to the Capcom game Puzzle Fighter. The goal of the game is to build large gems by matching up colors, then break them, raining more gems down onto your opponent. The first person whose field fills up, loses.
');
INSERT INTO posts VALUES(NULL,474,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,39','Code::Blocks Student Manual PDF (7z archive)','2010-03-10 00:31:41','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,39','A guide to help you setup and use Code::Blocks. (64 pages, 1mb 7zipped, 3mb unarchived)
links:
www.codeblocks.org
www.7-zip.org');
INSERT INTO posts VALUES(NULL,475,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,38','Code::Blocks User manual v1.0 (7-Zip archive)','2010-03-10 00:00:56','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,38','(There is also ZIP version, 2.1 mb) www.7-zip.org
Description from original site:
This is a community-driven on-going project...
The documentation is provided in English & German languages, in PDF format
(There are original CHM versions - 9mb each, and HTML which are broken).');
INSERT INTO posts VALUES(NULL,476,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,37','Code::Blocks User manual v1.0 (Open Source C/C++ IDE)','2010-03-09 23:26:59','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,37','(There is also 7z archive version, 1.2 mb only)
Description from original site:
This is a community-driven project and contributions/criticism/suggestions are welcomed.

The documentation is provided in English and German languages, in PDF format
(There are original CHM versions - 9mb each, and HTML which are broken).
===================
Instruction manual for Code::Blocks by the
Dept. of Computer and Information Science of Brooklyn College of CUNY:
http://www.sci.brooklyn.cuny.edu/~goetz/codeblocks/');
INSERT INTO posts VALUES(NULL,477,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,14,36','PXML file validator','2009-11-28 13:37:40','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,14,36','A tool that validates PXML files. You will need Java to run the application.

It can run in 3 modes:
- "syntax": checks the XML syntax of the file
- "permissive": checks the most important aspects of the PXML format
- "strict": goes through the PXML file, highlighting every little issue it can find.

Use "pxml-validator --help" (On Windows: "java -jar pxml.validator.jar --help") for more information .');
INSERT INTO posts VALUES(NULL,478,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,35','PXML specification','2009-11-27 23:33:50','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,45,35','The updated PXML specification.');
INSERT INTO posts VALUES(NULL,479,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,34','SDL Hello World Teil 2','2009-10-27 19:18:20','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,34','Quellcode zum SDL Tutorial des deutschen Pandora Wikis

Source Code for the SDL tutorial of the German Pandora Wiki');
INSERT INTO posts VALUES(NULL,480,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,33','SDL Hello World Teil 1','2009-10-25 12:14:33','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,33','Quellcode zum SDL Tutorial des deutschen Pandora Wikis

Source Code for the SDL tutorial of the German Pandora Wiki');
INSERT INTO posts VALUES(NULL,481,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,32','GLBasic Objekte & Kollisionsabfrage Source Code','2009-10-24 22:03:56','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,32','Quellcode zum GLBasic Tutorials des deutschen Pandora Wikis

Source Code for a GLBasic tutorial of the German Pandora Wiki');
INSERT INTO posts VALUES(NULL,482,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,31','GLBasic Powerups & Sound Source Code','2009-10-24 22:02:28','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,31','Quellcode zum GLBasic Tutorials des deutschen Pandora Wikis

Source Code for a GLBasic tutorial of the German Pandora Wiki');
INSERT INTO posts VALUES(NULL,483,7,6,'http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,30','GLBasic Gegner & Objekte Source Code','2009-10-24 21:27:12','http://dl.openhandhelds.org/cgi-bin/pandora.cgi?0,0,0,0,46,30','Quellcode zum GLBasic Tutorials des deutschen Pandora Wikis

Source Code for a GLBasic tutorial of the German Pandora Wiki');
INSERT INTO posts VALUES(NULL,485,3,2,'http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ','2010-04-10 13:29:58','http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ');
INSERT INTO posts VALUES(NULL,486,3,2,'http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)','2010-04-09 23:26:47','http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)');
INSERT INTO posts VALUES(NULL,487,3,2,'http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.','2010-04-07 17:31:17','http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.');
INSERT INTO posts VALUES(NULL,488,3,2,'http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.','2010-04-06 13:10:38','http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.');
INSERT INTO posts VALUES(NULL,489,3,2,'http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.','2010-04-06 13:02:42','http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.');
INSERT INTO posts VALUES(NULL,490,3,2,'http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.','2010-04-05 12:30:43','http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.');
INSERT INTO posts VALUES(NULL,491,3,2,'http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.','2010-04-05 12:21:52','http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.');
INSERT INTO posts VALUES(NULL,492,3,2,'http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.','2010-04-05 11:49:37','http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.');
INSERT INTO posts VALUES(NULL,493,3,2,'http://twitter.com/Craigix/statuses/11558365599','Craigix: Spent all day reading up on patent law in the USA and Europe, not going to post our video until we get advice from our IP lawyer.','2010-04-03 23:34:42','http://twitter.com/Craigix/statuses/11558365599','Craigix: Spent all day reading up on patent law in the USA and Europe, not going to post our video until we get advice from our IP lawyer.');
INSERT INTO posts VALUES(NULL,494,3,2,'http://twitter.com/Craigix/statuses/11512117536','Craigix: Tomorrow I''ll post a public video on Youtube speaking directly to Apple.','2010-04-03 02:05:09','http://twitter.com/Craigix/statuses/11512117536','Craigix: Tomorrow I''ll post a public video on Youtube speaking directly to Apple.');
INSERT INTO posts VALUES(NULL,495,3,2,'http://twitter.com/Craigix/statuses/11507116603','Craigix: Thank you to everyone who is getting this story out there, the power of twitter is quite fantastic.','2010-04-03 00:03:39','http://twitter.com/Craigix/statuses/11507116603','Craigix: Thank you to everyone who is getting this story out there, the power of twitter is quite fantastic.');
INSERT INTO posts VALUES(NULL,496,3,2,'http://twitter.com/Craigix/statuses/11505924276','Craigix: Slashdot have posted the story too! http://bit.ly/cE2Y4J wow!','2010-04-02 23:32:30','http://twitter.com/Craigix/statuses/11505924276','Craigix: Slashdot have posted the story too! http://bit.ly/cE2Y4J wow!');
INSERT INTO posts VALUES(NULL,497,3,2,'http://twitter.com/Craigix/statuses/11497021349','Craigix: @iphonehellas Thanks, will link from site in next update.','2010-04-02 19:33:00','http://twitter.com/Craigix/statuses/11497021349','Craigix: @iphonehellas Thanks, will link from site in next update.');
INSERT INTO posts VALUES(NULL,498,3,2,'http://twitter.com/Craigix/statuses/11494519153','Craigix: PocketGamer are the first site to cover the story: http://www.pocketgamer.co.uk/r/iPhone/iControlpad/news.asp?c=19637','2010-04-02 18:31:42','http://twitter.com/Craigix/statuses/11494519153','Craigix: PocketGamer are the first site to cover the story: http://www.pocketgamer.co.uk/r/iPhone/iControlpad/news.asp?c=19637');
INSERT INTO posts VALUES(NULL,499,3,2,'http://twitter.com/Craigix/statuses/11492243262','Craigix: @TheBisquick  We have the IP on the design.','2010-04-02 17:40:12','http://twitter.com/Craigix/statuses/11492243262','Craigix: @TheBisquick  We have the IP on the design.');
INSERT INTO posts VALUES(NULL,500,3,2,'http://twitter.com/Craigix/statuses/11490428930','Craigix: Just got confirmation - apple really have patented our iControlPad design. We need to make this as public as possible. icontrolpad.com','2010-04-02 17:01:46','http://twitter.com/Craigix/statuses/11490428930','Craigix: Just got confirmation - apple really have patented our iControlPad design. We need to make this as public as possible. icontrolpad.com');
INSERT INTO posts VALUES(NULL,501,3,2,'http://twitter.com/Craigix/statuses/11488681616','Craigix: @CymonsGames They won''t be cutting us off. We have the IP on the design as well as prior art.','2010-04-02 16:26:05','http://twitter.com/Craigix/statuses/11488681616','Craigix: @CymonsGames They won''t be cutting us off. We have the IP on the design as well as prior art.');
INSERT INTO posts VALUES(NULL,502,3,2,'http://twitter.com/Craigix/statuses/11487585421','Craigix: @mycon I have no doubt that apple are going to come after us now, I''ve already emailed my IP attorney in the UK. I''ll keep you updated.','2010-04-02 16:04:06','http://twitter.com/Craigix/statuses/11487585421','Craigix: @mycon I have no doubt that apple are going to come after us now, I''ve already emailed my IP attorney in the UK. I''ll keep you updated.');
INSERT INTO posts VALUES(NULL,503,3,2,'http://twitter.com/Craigix/statuses/11487058530','Craigix: I find this, filed 6 months after we revealed the exact same design, to be highly sinister: http://bit.ly/broJyv - shame it isn''t april 1st.','2010-04-02 15:53:42','http://twitter.com/Craigix/statuses/11487058530','Craigix: I find this, filed 6 months after we revealed the exact same design, to be highly sinister: http://bit.ly/broJyv - shame it isn''t april 1st.');
INSERT INTO posts VALUES(NULL,504,3,1,'http://twitter.com/Craigix/statuses/11938164595','Craigix: @Ackieee if we ever did another colour they would, but for now it''s just black on black.','2010-04-10 14:05:19','http://twitter.com/Craigix/statuses/11938164595','Craigix: @Ackieee if we ever did another colour they would, but for now it''s just black on black.');
INSERT INTO posts VALUES(NULL,505,3,1,'http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ','2010-04-10 13:29:58','http://twitter.com/Craigix/statuses/11936741249','Craigix: The plastics factory did a paint finish on some cases for us, see what you think: http://bit.ly/dy30iZ');
INSERT INTO posts VALUES(NULL,506,3,1,'http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)','2010-04-09 23:26:47','http://twitter.com/Craigix/statuses/11907180395','Craigix: http://twitpic.com/1ee7h3 - :)');
INSERT INTO posts VALUES(NULL,507,3,1,'http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.','2010-04-07 17:31:17','http://twitter.com/Craigix/statuses/11767306407','Craigix: Looks like the Pandora parts will be arriving next week for sure.');
INSERT INTO posts VALUES(NULL,508,3,1,'http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.','2010-04-06 13:10:38','http://twitter.com/Craigix/statuses/11697309445','Craigix: The Pandora wifi hit 606KB last night. Looks like it was just the resistor. Full speed ahead.');
INSERT INTO posts VALUES(NULL,509,3,1,'http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.','2010-04-06 13:02:42','http://twitter.com/Craigix/statuses/11696958961','Craigix: Getting absolutely loads of advice and tips on the ICP issue, thank you to everyone who is helping out, it''s really kind.');
INSERT INTO posts VALUES(NULL,510,3,1,'http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.','2010-04-05 12:30:43','http://twitter.com/Craigix/statuses/11638860142','Craigix: @cobrajs the internal one.');
INSERT INTO posts VALUES(NULL,511,3,1,'http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.','2010-04-05 12:21:52','http://twitter.com/Craigix/statuses/11638530931','Craigix: @QBJECT Depends on what people will accept as a minimal speed I guess, we will keep working on it.');
INSERT INTO posts VALUES(NULL,512,3,1,'http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.','2010-04-05 11:49:37','http://twitter.com/Craigix/statuses/11637394239','Craigix: Some good news, Pandora wifi now hitting 350KB/s.');
CREATE TABLE source_properties (id INTEGER PRIMARY KEY, source_id INTEGER, author_id INTEGER, key VARCHAR(50), value VARCHAR(1000));
INSERT INTO source_properties VALUES(1,1,-1,'scraper','Gp2xScraper');
INSERT INTO source_properties VALUES(2,1,1,'author_key',6611);
INSERT INTO source_properties VALUES(3,1,2,'author_key',205);
INSERT INTO source_properties VALUES(4,1,3,'author_key',116);
INSERT INTO source_properties VALUES(5,1,4,'author_key',9395);
INSERT INTO source_properties VALUES(6,2,-1,'scraper','DevBlogScraper');
INSERT INTO source_properties VALUES(7,2,2,'author_key',205);
INSERT INTO source_properties VALUES(8,3,-1,'scraper','TwitterScraper');
INSERT INTO source_properties VALUES(9,3,3,'author_key','statuses/user_timeline/19534812.rss');
INSERT INTO source_properties VALUES(10,3,2,'author_key','statuses/user_timeline/108433145.rss');
INSERT INTO source_properties VALUES(11,4,-1,'scraper','YoutubeScraper');
INSERT INTO source_properties VALUES(12,4,2,'author_key','http://gdata.youtube.com/feeds/base/users/EvilDragon1717/uploads?alt=rss&amp;v=2&amp;orderby=published&amp;client=ytapi-youtube-profile');
INSERT INTO source_properties VALUES(13,5,-1,'scraper','PandoraPress');
INSERT INTO source_properties VALUES(14,6,-1,'scraper','MWPhotobucket');
INSERT INTO source_properties VALUES(15,3,1,'author_key','statuses/user_timeline/116770959.rss');
INSERT INTO source_properties VALUES(16,7,-1,'scraper','FileArchive');
CREATE TABLE sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source VARCHAR(50));
INSERT INTO sources VALUES(1,'GP2X');
INSERT INTO sources VALUES(2,'Dev Blog');
INSERT INTO sources VALUES(3,'Twitter');
INSERT INTO sources VALUES(4,'Youtube');
INSERT INTO sources VALUES(5,'Unofficial Blog');
INSERT INTO sources VALUES(6,'Photobucket');
INSERT INTO sources VALUES(7,'OP File Archive');
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO sqlite_sequence VALUES('sources',7);
INSERT INTO sqlite_sequence VALUES('authors',6);
INSERT INTO sqlite_sequence VALUES('feeds',1);
INSERT INTO sqlite_sequence VALUES('feed_sources',6);
CREATE INDEX authors_name_idx ON authors (name);
CREATE INDEX feed_sources_idx ON feed_sources (source_id, feed_id);
CREATE INDEX sources_source_idx ON sources (source);

