-- Mysql Backup of n2n7_demo
-- Date 2018-12-20T11:05:17+01:00
-- Backup by 

DROP TABLE IF EXISTS `ci_article`;
CREATE TABLE `ci_article` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`title` VARCHAR(128) NULL, 
	`description_html` TEXT NOT NULL, 
	`file_image` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_article` (`id`, `title`, `description_html`, `file_image`) 
VALUES ( '4',  'Ich bin ein Artikel',  '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n',  'ciarticle/test_bild_11.jpg'),
( '56', 'I\'m an article', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n', 'ciarticle/test_bild_18.jpg');

DROP TABLE IF EXISTS `ci_attachment`;
CREATE TABLE `ci_attachment` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(64) NULL, 
	`description` VARCHAR(255) NULL, 
	`file` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_attachment` (`id`, `name`, `description`, `file`) 
VALUES ( '5',  'Das ist ein Attachment',  'Mit einer Beschreibung dazu',  'ciattachment/test_bild.jpg'),
( '57', 'This is an attachment', 'with a description', 'ciattachment/test_bild_19.jpg');

DROP TABLE IF EXISTS `ci_image`;
CREATE TABLE `ci_image` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`caption` VARCHAR(128) NULL, 
	`file_image` VARCHAR(255) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_image` (`id`, `caption`, `file_image`) 
VALUES ( '3',  'Ein Bild, das ich mag',  'ciimage/test_bild.jpg'),
( '12', 'Bild des Projektes', 'ciimage/test_bild_2.jpg'),
( '17', 'Image of the project', 'ciimage/test_bild_22.jpg'),
( '18', NULL, 'ciimage/test_bild_42.jpg'),
( '20', NULL, 'ciimage/test_bild_4.jpg'),
( '22', NULL, 'ciimage/test_bild_52.jpg'),
( '24', NULL, 'ciimage/test_bild_5.jpg'),
( '26', NULL, 'ciimage/test_bild_62.jpg'),
( '28', NULL, 'ciimage/test_bild_6.jpg'),
( '30', NULL, 'ciimage/test_bild_72.jpg'),
( '32', NULL, 'ciimage/test_bild_7.jpg'),
( '39', NULL, 'ciimage/test_bild_13.jpg'),
( '43', NULL, 'ciimage/test_bild_10.jpg'),
( '47', NULL, 'ciimage/test_bild_12.jpg'),
( '52', NULL, 'ciimage/test_bild_11.jpg'),
( '55', 'Look at this photograph', 'ciimage/test_bild_15.jpg');

DROP TABLE IF EXISTS `ci_wysiwyg`;
CREATE TABLE `ci_wysiwyg` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`content_html` TEXT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `ci_wysiwyg` (`id`, `content_html`) 
VALUES ( '1',  '<p>Ich bin ein Freitext</p>\r\n'),
( '2', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n'),
( '6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In auctor, sapien vel posuere malesuada, ipsum neque sagittis massa, eu laoreet odio tellus nec ligula. Etiam iaculis velit faucibus quam convallis pretium. In eu enim vitae neque tempor sagittis vitae in nisl. Vivamus fermentum turpis nec enim aliquam venenatis. Cras convallis fermentum condimentum. Morbi vitae tortor a tellus posuere scelerisque. Sed non leo et ante laoreet rutrum ut et risus. Nam mattis rhoncus lectus sit amet porta.</p>\r\n\r\n<p>In molestie vel metus et interdum. Suspendisse nec nulla purus. Aenean vel accumsan purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In facilisis porttitor odio, a condimentum magna. Praesent vitae nisi suscipit, vehicula sapien sit amet, consequat eros. Integer ultrices nisl eu felis elementum ornare. Vestibulum eu elit ut magna blandit sagittis a sed neque. Phasellus nec eros semper, bibendum erat quis, sagittis diam. Donec in diam tortor. Morbi sed elit urna. Mauris sapien ipsum, sodales ut quam at, porta posuere ipsum.</p>\r\n\r\n<p>Praesent iaculis, ante ut auctor consequat, leo massa fringilla ante, eleifend vehicula nisl ipsum sit amet odio. Proin a pellentesque metus, vel semper neque. Pellentesque accumsan gravida odio, eu finibus nibh dapibus ut. Sed ullamcorper sit amet quam eu pulvinar. Suspendisse ac felis purus. Cras ut odio iaculis ipsum vehicula condimentum nec a sapien. Duis non mauris suscipit, semper magna id, tristique augue. Morbi sit amet ex a risus volutpat facilisis. Nunc posuere ante ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra, magna non cursus congue, ante nisl rhoncus turpis, ac tincidunt leo nunc vitae libero. Ut sit amet turpis aliquet, porta lectus at, rutrum nunc. Sed lobortis quam tempus dolor varius gravida. Phasellus vitae velit erat.</p>\r\n\r\n<p>Suspendisse posuere neque a risus ornare semper. Maecenas elementum justo quis ante condimentum, porttitor consequat urna volutpat. Aliquam eget elit sit amet lectus pulvinar fermentum et vel tortor. Nulla ultrices id nunc eu sodales. Pellentesque et convallis nibh, vitae condimentum erat. Sed tristique, nibh non vestibulum pretium, tellus diam porta nisl, eget pretium ipsum ipsum in sem. Vestibulum tempor volutpat metus vitae rutrum. Suspendisse tempus porta erat. Duis quis consequat dolor. Proin sed vehicula metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n'),
( '7', '<h2>Hofmänner New Media</h2>\r\n\r\n<p>Stadthausstrasse 65<br />\r\n8400 Winterthur</p>\r\n\r\n<p><a href=\"mailto:info@hnm.ch\">info@hnm.ch</a></p>\r\n'),
( '8', '<p style=\"text-align:left\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n\r\n<p style=\"text-align:left\">Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a,</p>\r\n'),
( '9', '<p>dfgdfgdfgdfg</p>\r\n'),
( '15', '<p>Welcome to the English Site!</p>\r\n'),
( '16', '<p style=\"text-align:left\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>\r\n\r\n<p style=\"text-align:left\">Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a,</p>\r\n'),
( '19', '<p style=\"text-align:left\">Weit hinten, hinter den Wortbergen, fern der Länder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen sie in Buchstabhausen an der Küste des Semantik, eines großen Sprachozeans.</p>\r\n\r\n<p style=\"text-align:left\">Ein kleines Bächlein namens Duden fließt durch ihren Ort und versorgt sie mit den nötigen Regelialien. Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen.</p>\r\n\r\n<p style=\"text-align:left\">Nicht einmal von der allmächtigen Interpunktion werden die Blindtexte beherrscht – ein geradezu unorthographisches Leben. Eines Tages aber beschloß eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite Grammatik. Der große Oxmox riet ihr davon ab, da</p>\r\n'),
( '21', '<p style=\"text-align:left\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n<p style=\"text-align:left\">Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>\r\n\r\n<p style=\"text-align:left\">It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to</p>\r\n'),
( '23', '<p>Eine wunderbare Heiterkeit hat meine ganze Seele eingenommen, gleich den süßen Frühlingsmorgen, die ich mit ganzem Herzen genieße.</p>\r\n\r\n<p>Ich bin allein und freue mich meines Lebens in dieser Gegend, die für solche Seelen geschaffen ist wie die meine. Ich bin so glücklich, mein Bester, so ganz in dem Gefühle von ruhigem Dasein versunken, daß meine Kunst darunter leidet.</p>\r\n\r\n<p>Ich könnte jetzt nicht zeichnen, nicht einen Strich, und bin nie ein größerer Maler gewesen als in diesen Augenblicken. Wenn das liebe Tal um mich dampft, und die hohe Sonne an der Oberfläche der undurchdringlichen Finsternis meines Waldes ruht, und nur einzelne</p>\r\n'),
( '25', '<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>\r\n\r\n<p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</p>\r\n\r\n<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with</p>\r\n'),
( '27', '<p style=\"text-align:left\">Jemand musste Josef K. verleumdet haben, denn ohne dass er etwas Böses getan hätte, wurde er eines Morgens verhaftet. »Wie ein Hund! « sagte er, es war, als sollte die Scham ihn überleben.</p>\r\n\r\n<p style=\"text-align:left\">Als Gregor Samsa eines Morgens aus unruhigen Träumen erwachte, fand er sich in seinem Bett zu einem ungeheueren Ungeziefer verwandelt. Und es war ihnen wie eine Bestätigung ihrer neuen Träume und guten Absichten, als am Ziele ihrer Fahrt die Tochter als erste sich erhob und ihren jungen Körper dehnte. »Es ist ein eigentümlicher Apparat«, sagte der Offizier zu dem Forschungsreisenden und überblickte mit einem gewissermaßen bewundernden Blick den</p>\r\n'),
( '29', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.</p>\r\n\r\n<p>The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me? \" he thought. It wasn\'t a dream. His room, a proper human</p>\r\n'),
( '31', '<p>Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern.</p>\r\n\r\n<p>Zwölf Boxkämpfer jagen Viktor quer über den großen Sylter Deich. Vogel Quax zwickt Johnys Pferd Bim. Sylvia wagt quick den Jux bei Pforzheim.</p>\r\n\r\n<p>Polyfon zwitschernd aßen Mäxchens Vögel Rüben, Joghurt und Quark. \"Fix, Schwyz! \" quäkt Jürgen blöd vom Paß.</p>\r\n\r\n<p>Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich. Falsches Üben von Xylophonmusik quält jeden größeren Zwerg. Heizölrückstoßabdämpfung. Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer durch Bayern.</p>\r\n'),
( '33', '<p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps.</p>\r\n\r\n<p>Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz.</p>\r\n\r\n<p>Brick quiz whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim.</p>\r\n\r\n<p>Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack! \" my brave</p>\r\n'),
( '34', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In auctor, sapien vel posuere malesuada, ipsum neque sagittis massa, eu laoreet odio tellus nec ligula. Etiam iaculis velit faucibus quam convallis pretium. In eu enim vitae neque tempor sagittis vitae in nisl. Vivamus fermentum turpis nec enim aliquam venenatis. Cras convallis fermentum condimentum. Morbi vitae tortor a tellus posuere scelerisque. Sed non leo et ante laoreet rutrum ut et risus. Nam mattis rhoncus lectus sit amet porta.</p>\r\n\r\n<p>In molestie vel metus et interdum. Suspendisse nec nulla purus. Aenean vel accumsan purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In facilisis porttitor odio, a condimentum magna. Praesent vitae nisi suscipit, vehicula sapien sit amet, consequat eros. Integer ultrices nisl eu felis elementum ornare. Vestibulum eu elit ut magna blandit sagittis a sed neque. Phasellus nec eros semper, bibendum erat quis, sagittis diam. Donec in diam tortor. Morbi sed elit urna. Mauris sapien ipsum, sodales ut quam at, porta posuere ipsum.</p>\r\n\r\n<p>Praesent iaculis, ante ut auctor consequat, leo massa fringilla ante, eleifend vehicula nisl ipsum sit amet odio. Proin a pellentesque metus, vel semper neque. Pellentesque accumsan gravida odio, eu finibus nibh dapibus ut. Sed ullamcorper sit amet quam eu pulvinar. Suspendisse ac felis purus. Cras ut odio iaculis ipsum vehicula condimentum nec a sapien. Duis non mauris suscipit, semper magna id, tristique augue. Morbi sit amet ex a risus volutpat facilisis. Nunc posuere ante ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra, magna non cursus congue, ante nisl rhoncus turpis, ac tincidunt leo nunc vitae libero. Ut sit amet turpis aliquet, porta lectus at, rutrum nunc. Sed lobortis quam tempus dolor varius gravida. Phasellus vitae velit erat.</p>\r\n\r\n<p>Suspendisse posuere neque a risus ornare semper. Maecenas elementum justo quis ante condimentum, porttitor consequat urna volutpat. Aliquam eget elit sit amet lectus pulvinar fermentum et vel tortor. Nulla ultrices id nunc eu sodales. Pellentesque et convallis nibh, vitae condimentum erat. Sed tristique, nibh non vestibulum pretium, tellus diam porta nisl, eget pretium ipsum ipsum in sem. Vestibulum tempor volutpat metus vitae rutrum. Suspendisse tempus porta erat. Duis quis consequat dolor. Proin sed vehicula metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n'),
( '35', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>\r\n\r\n<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>\r\n\r\n<p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\r\n'),
( '37', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>\r\n\r\n<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>\r\n\r\n<p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>\r\n'),
( '38', '<p style=\"text-align:left\">Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen?</p>\r\n\r\n<p style=\"text-align:left\">Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können.</p>\r\n'),
( '40', '<p>Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur</p>\r\n'),
( '41', '<p>Er hörte leise Schritte hinter sich. Das bedeutete nichts Gutes. Wer würde ihm schon folgen, spät in der Nacht und dazu noch in dieser engen Gasse mitten im übel beleumundeten Hafenviertel? Gerade jetzt, wo er das Ding seines Lebens gedreht hatte und mit der Beute verschwinden wollte!</p>\r\n\r\n<p>Hatte einer seiner zahllosen Kollegen dieselbe Idee gehabt, ihn beobachtet und abgewartet, um ihn nun um die Früchte seiner Arbeit zu erleichtern? Oder gehörten die Schritte hinter ihm zu einem der unzähligen Gesetzeshüter dieser Stadt, und die stählerne Acht um seine Handgelenke würde gleich zuschnappen? Er konnte die Aufforderung stehen zu bleiben schon hören.</p>\r\n\r\n<p>Gehetzt sah er sich um. Plötzlich erblickte er den schmalen Durchgang. Blitzartig drehte er sich nach rechts und verschwand zwischen den beiden Gebäuden. Beinahe wäre er dabei über den umgestürzten Mülleimer gefallen, der mitten im Weg lag. Er versuchte, sich in der Dunkelheit seinen Weg zu ertasten und erstarrte: Anscheinend gab es keinen anderen Ausweg aus diesem kleinen Hof als den Durchgang, durch den er gekommen war. Die Schritte wurden lauter und lauter, er sah eine dunkle Gestalt um die Ecke biegen. Fieberhaft irrten seine Augen durch die nächtliche Dunkelheit und suchten einen Ausweg. War jetzt wirklich alles vorbei,</p>\r\n'),
( '42', '<p style=\"text-align:left\">Überall dieselbe alte Leier. Das Layout ist fertig, der Text lässt auf sich warten. Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext. Genau zu diesem Zwecke erschaffen, immer im Schatten meines großen Bruders »Lorem Ipsum«, freue ich mich jedes Mal, wenn Sie ein paar Zeilen lesen.</p>\r\n\r\n<p style=\"text-align:left\">Denn esse est percipi - Sein ist wahrgenommen werden. Und weil Sie nun schon die Güte haben, mich ein paar weitere Sätze lang zu begleiten, möchte ich diese Gelegenheit nutzen, Ihnen nicht nur als Lückenfüller zu dienen, sondern auf etwas hinzuweisen, das es ebenso verdient wahrgenommen zu werden: Webstandards nämlich. Sehen Sie, Webstandards sind das Regelwerk, auf dem Webseiten aufbauen.</p>\r\n'),
( '44', '<p>So gibt es Regeln für HTML, CSS, JavaScript oder auch XML; Worte, die Sie vielleicht schon einmal von Ihrem Entwickler gehört haben. Diese Standards sorgen dafür, dass alle Beteiligten aus einer Webseite den größten Nutzen ziehen.</p>\r\n\r\n<p style=\"text-align:left\">Im Gegensatz zu früheren Webseiten müssen wir zum Beispiel nicht mehr zwei verschiedene Webseiten für den Internet Explorer und einen anderen Browser programmieren. Es reicht eine Seite, die - richtig angelegt - sowohl auf verschiedenen Browsern im Netz funktioniert, aber ebenso gut für den Ausdruck oder die Darstellung auf einem Handy geeignet ist. Wohlgemerkt: Eine Seite für alle Formate. Was für eine Erleichterung. Standards sparen Zeit bei den Entwicklungskosten und sorgen dafür, dass sich Webseiten später leichter pflegen lassen.</p>\r\n\r\n<p>Natürlich nur dann, wenn sich alle an diese Standards halten. Das gilt für Browser wie Firefox, Opera, Safari und den Internet Explorer ebenso wie für die Darstellung in Handys. Und was können Sie für Standards tun? Fordern Sie von Ihren Designern und Programmieren einfach standardkonforme Webseiten. Ihr Budget wird es Ihnen auf Dauer danken. Ebenso möchte ich Ihnen dafür danken, dass Sie mich bin zum Ende gelesen haben. Meine Mission ist erfüllt. Ich werde hier noch die Stellung halten, bis der geplante Text eintrifft. Ich wünsche Ihnen noch einen schönen Tag. Und arbeiten Sie nicht zuviel! Überall dieselbe alte Leier. Das Layout ist fertig, der Text lässt auf sich warten. Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext. Genau zu diesem Zwecke erschaffen, immer im Schatten meines großen Bruders »Lorem Ipsum«, freue ich mich jedes Mal, wenn Sie ein paar Zeilen lesen. Denn esse est percipi - Sein ist wahrgenommen werden.</p>\r\n'),
( '45', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>\r\n\r\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\r\n\r\n<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee</p>\r\n'),
( '46', '<p style=\"text-align:left\">The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators.</p>\r\n\r\n<p style=\"text-align:left\">To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.</p>\r\n\r\n<p style=\"text-align:left\">To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators.</p>\r\n'),
( '48', '<p style=\"text-align:left\">To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.</p>\r\n\r\n<p style=\"text-align:left\">To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is. The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as</p>\r\n'),
( '49', '<p>\"All the same,\" said the Scarecrow, \"she needs a heart as much as the Tin Woodman.\"</p>\r\n\r\n<p>On the next morning the soldier with the green whiskers came to the Tin Woodman and said:</p>\r\n\r\n<p>\"Oz has sent for you.&nbsp; Follow me.\"</p>\r\n\r\n<p>So the Tin Woodman followed him and came to the great Throne Room.&nbsp; He did not know whether he would find Oz a lovely Lady or a Head, but he hoped it would be the lovely Lady.&nbsp; \"For,\" he said to himself, \"if it is the head, I am sure I shall not be given a heart, since a head has no heart of its own and therefore cannot feel for me.&nbsp; But if it is the lovely Lady I shall beg hard for a heart, for all ladies are themselves said to be kindly hearted.\"</p>\r\n\r\n<p>But when the Woodman entered the great Throne Room he saw neither the Head nor the Lady, for Oz had taken the shape of a most terrible Beast. It was nearly as big as an elephant, and the green throne seemed hardly strong enough to hold its weight.&nbsp; The Beast had a head like that of a rhinoceros, only there were five eyes in its face.&nbsp; There were five long arms growing out of its body, and it also had five long, slim legs.&nbsp; Thick, woolly hair covered every part of it, and a more dreadful-looking monster could not be imagined.&nbsp; It was fortunate the Tin Woodman had no heart at that moment, for it would have beat loud and fast from terror.&nbsp; But being only tin, the Woodman was not at all afraid, although he was much disappointed.</p>\r\n'),
( '50', '<p>One after another they peered in, for nothing but their own eyes could persuade such ignorance as theirs, and one after another they slunk away.</p>\r\n\r\n<p>In his fiery eyes of scorn and triumph, you then saw Ahab in all his fatal pride.</p>\r\n\r\n<p>While now the fated Pequod had been so long afloat this voyage, the log and line had but very seldom been in use. Owing to a confident reliance upon other means of determining the vessel\'s place, some merchantmen, and many whalemen, especially when cruising, wholly neglect to heave the log; though at the same time, and frequently more for form\'s sake than anything else, regularly putting down upon the customary slate the course steered by the ship, as well as the presumed average rate of progression every hour. It had been thus with the Pequod. The wooden reel and angular log attached hung, long untouched, just beneath the railing of the after bulwarks. Rains and spray had damped it; sun and wind had warped it; all the elements had combined to rot a thing that hung so idly. But heedless of all this, his mood seized Ahab, as he happened to glance upon the reel, not many hours after the magnet scene, and he remembered how his quadrant was no more, and recalled his frantic oath about the level log and line. The ship was sailing plungingly; astern the billows rolled in riots.</p>\r\n\r\n<p>\"Forward, there! Heave the log!\"</p>\r\n\r\n<p>Two seamen came. The golden-hued Tahitian and the grizzly Manxman. \"Take the reel, one of ye, I\'ll heave.\"</p>\r\n'),
( '51', '<h2>Hofmänner New Media</h2>\r\n\r\n<p>Stadthausstrasse 65<br />\r\n8400 Winterthur</p>\r\n\r\n<p><a href=\"mailto:info@hnm.ch\">info@hnm.ch</a></p>\r\n'),
( '53', '<p>Welcome to the English website</p>\r\n'),
( '54', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p>\r\n');

DROP TABLE IF EXISTS `contact_page_controller`;
CREATE TABLE `contact_page_controller` ( 
	`id` INT NOT NULL, 
	`recipient` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `contact_page_controller` (`id`, `recipient`) 
VALUES ( '5',  NULL);

DROP TABLE IF EXISTS `news_article`;
CREATE TABLE `news_article` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`title` VARCHAR(255) NULL, 
	`lead` TEXT NULL, 
	`image` VARCHAR(255) NULL, 
	`published` DATETIME NULL, 
	`n2n_locale` VARCHAR(12) NULL, 
	`online` TINYINT UNSIGNED NULL, 
	`author_id` INT UNSIGNED NULL, 
	`url_part` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `news_article` ADD INDEX `news_article_index_1` (`author_id`);

INSERT INTO `news_article` (`id`, `title`, `lead`, `image`, `published`, `n2n_locale`, `online`, `author_id`, `url_part`) 
VALUES ( '3',  'Lorem ipsum',  'Lorem ipsum dolor sit amet',  NULL,  '2017-03-02 00:00:00',  'en',  '1',  '1',  'lorem-ipsum'),
( '4', 'Lorem ipsum', 'Lorem ipsum dolor sit amet', NULL, '2017-03-02 00:00:00', 'de_CH', '1', '1', 'lorem-ipsum-2'),
( '5', 'Lorem ipsum', 'Lorem ipsum auf Deutsch', 'newsarticle/test_bild_8.jpg', '2017-03-03 00:00:00', 'de_CH', '1', '1', 'lorem-ipsum-3'),
( '6', 'Er hörte leise', 'Er hörte leise Schritte hinter sich. Das bedeutete nichts Gutes.', 'newsarticle/test_bild_21.jpg', '2017-03-06 00:00:00', 'de_CH', '1', '2', 'er-hoerte-leise'),
( '7', 'Webstandards', 'Überall dieselbe alte Leier. Das Layout ist fertig, der Text lässt auf sich warten. Damit das Layout nun nicht nackt im Raume steht und sich klein und leer vorkommt, springe ich ein: der Blindtext.', NULL, '2017-03-07 00:00:00', 'de_CH', '1', '2', 'webstandards'),
( '8', 'Cicero', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born.', 'newsarticle/test_bild_19.jpg', '2017-03-03 00:00:00', 'en', '1', '2', 'cicero'),
( '9', 'The European languages', 'The European languages are members of the same family. Their separate existence is a myth.', NULL, '2017-03-07 00:00:00', 'en', '1', '1', 'the-european-languages'),
( '10', 'The Wizard of Oz', '\"All the same,\" said the Scarecrow', 'newsarticle/test_bild_17.jpg', '2017-03-08 00:00:00', 'en', '1', '1', 'the-wizard-of-oz'),
( '11', 'Moby Dick', 'One after another they peered in, for nothing but their own eyes could persuade such ignorance as theirs, and one after another they slunk away.', 'newsarticle/test_bild_14.jpg', '2017-03-09 00:00:00', 'en', '1', '2', 'moby-dick');

DROP TABLE IF EXISTS `news_article_content_items`;
CREATE TABLE `news_article_content_items` ( 
	`news_article_id` INT UNSIGNED NOT NULL, 
	`content_item_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`news_article_id`, `content_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `news_article_content_items` (`news_article_id`, `content_item_id`) 
VALUES ( '3',  '35'),
( '4', '37'),
( '5', '38'),
( '5', '39'),
( '5', '40'),
( '6', '41'),
( '7', '42'),
( '7', '43'),
( '7', '44'),
( '8', '45'),
( '9', '46'),
( '9', '47'),
( '9', '48'),
( '10', '49'),
( '11', '50');

DROP TABLE IF EXISTS `news_article_news_categories`;
CREATE TABLE `news_article_news_categories` ( 
	`news_article_id` INT UNSIGNED NOT NULL, 
	`news_category_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`news_article_id`, `news_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `news_article_news_categories` (`news_article_id`, `news_category_id`) 
VALUES ( '3',  '1'),
( '4', '1'),
( '5', '1'),
( '5', '2'),
( '8', '2'),
( '9', '1'),
( '9', '2'),
( '11', '1');

DROP TABLE IF EXISTS `news_article_news_comments`;
CREATE TABLE `news_article_news_comments` ( 
	`news_article_id` INT UNSIGNED NOT NULL, 
	`news_comment_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`news_article_id`, `news_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `news_category` (`id`) 
VALUES ( '1'),
( '2');

DROP TABLE IF EXISTS `news_category_t`;
CREATE TABLE `news_category_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(255) NULL, 
	`n2n_locale` VARCHAR(12) NULL, 
	`news_category_id` INT UNSIGNED NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `news_category_t` ADD INDEX `news_category_t_index_1` (`news_category_id`);

INSERT INTO `news_category_t` (`id`, `name`, `n2n_locale`, `news_category_id`) 
VALUES ( '1',  'Kategorie Name',  'de_CH',  '1'),
( '2', 'Category name', 'en', '1'),
( '3', 'Weltraum', 'de_CH', '2'),
( '4', 'Space', 'en', '2');

DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`sender` VARCHAR(255) NULL, 
	`content` VARCHAR(255) NULL, 
	`date` DATETIME NULL, 
	`news_article_id` INT UNSIGNED NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `news_comment` ADD INDEX `news_comment_index_1` (`news_article_id`);

INSERT INTO `news_comment` (`id`, `sender`, `content`, `date`, `news_article_id`) 
VALUES ( '3',  'Friedrich Schiller',  'Sehr informativer Beitrag, errinert mich an die Zeiten des Sturm und Drangs zurück. ',  '2017-03-08 16:56:35',  '7'),
( '4', 'Adam Opel', 'Ich finde diesen Nachrichtenartikel zu wenig technisch fokussiert, ansonsten sehr gut. ', '2017-03-09 14:36:09', '7'),
( '5', 'Stefan Raab', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2017-03-09 15:15:31', '7'),
( '6', 'Friedrich Schiller', 'Ja recht, das war\'s, worüber ich dich vernehmen wollte – Maximilian ist schlafen gegangen in der Väter Gruft. Ich bin Herr. Aber ich möchte es vollends ganz sein, Amalia.', '2017-03-07 11:24:26', '6'),
( '7', 'Steve Jobs', 'One more thing...', '2017-03-10 09:00:44', '11'),
( '8', 'John Lennon', 'Imagine there\'s no heaven, it\'s easy if you try. No hell below us, above us only sky. ', '2017-03-10 10:25:53', '11'),
( '9', 'Bruce Springsteen', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', '2017-03-12 15:26:43', '11'),
( '10', 'Bruce Springsteen', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.', '2017-03-09 10:18:54', '10'),
( '11', 'sdfdsfdsf', 'dsfdsf', '2018-12-20 10:21:14', '7');

DROP TABLE IF EXISTS `news_page_controller`;
CREATE TABLE `news_page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `news_page_controller` (`id`) 
VALUES ( '8');

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`internal_page_id` INT UNSIGNED NULL, 
	`external_url` VARCHAR(255) NULL, 
	`page_content_id` INT UNSIGNED NULL, 
	`subsystem_name` VARCHAR(255) NULL, 
	`online` TINYINT UNSIGNED NOT NULL DEFAULT '1', 
	`in_path` TINYINT NOT NULL DEFAULT '1', 
	`hook_key` VARCHAR(255) NULL, 
	`in_navigation` TINYINT NOT NULL DEFAULT '1', 
	`nav_target_new_window` TINYINT NOT NULL DEFAULT '0', 
	`lft` INT UNSIGNED NOT NULL, 
	`rgt` INT UNSIGNED NOT NULL, 
	`last_mod` DATETIME NULL, 
	`last_mod_by` INT UNSIGNED NULL, 
	`indexable` TINYINT UNSIGNED NOT NULL DEFAULT '1'
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page` (`id`, `internal_page_id`, `external_url`, `page_content_id`, `subsystem_name`, `online`, `in_path`, `hook_key`, `in_navigation`, `nav_target_new_window`, `lft`, `rgt`, `last_mod`, `last_mod_by`, `indexable`) 
VALUES ( '89',  NULL,  NULL,  '1',  NULL,  '1',  '1',  NULL,  '1',  '0',  '1',  '12',  '2017-03-09 17:01:01',  NULL,  '1'),
( '90', NULL, NULL, '6', NULL, '1', '1', NULL, '1', '0', '2', '3', '2017-03-02 09:11:04', NULL, '1'),
( '91', NULL, NULL, '3', NULL, '1', '1', NULL, '1', '0', '10', '11', '2017-03-07 16:49:51', NULL, '1'),
( '92', NULL, NULL, '2', NULL, '1', '1', NULL, '1', '0', '4', '5', '2017-03-02 16:25:20', NULL, '1'),
( '93', NULL, NULL, '4', NULL, '1', '1', NULL, '1', '0', '6', '7', '2017-03-02 16:25:20', NULL, '1'),
( '94', NULL, NULL, '5', NULL, '1', '1', NULL, '1', '0', '8', '9', '2017-03-02 16:25:34', NULL, '1');

DROP TABLE IF EXISTS `page_content`;
CREATE TABLE `page_content` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`subsystem_name` VARCHAR(255) NULL, 
	`page_controller_id` INT UNSIGNED NOT NULL, 
	`page_id` INT UNSIGNED NULL, 
	`ssl` TINYINT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_content` (`id`, `subsystem_name`, `page_controller_id`, `page_id`, `ssl`) 
VALUES ( '1',  NULL,  '2',  NULL,  '0'),
( '2', NULL, '3', NULL, '0'),
( '3', NULL, '5', NULL, '0'),
( '4', NULL, '6', NULL, '0'),
( '5', NULL, '7', NULL, '0'),
( '6', NULL, '8', NULL, '0');

DROP TABLE IF EXISTS `page_content_t`;
CREATE TABLE `page_content_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(5) NOT NULL, 
	`se_title` VARCHAR(255) NULL, 
	`se_description` VARCHAR(500) NULL, 
	`se_keywords` VARCHAR(255) NULL, 
	`page_content_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `page_controller`;
CREATE TABLE `page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`method_name` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller` (`id`, `method_name`) 
VALUES ( '2',  'startPage'),
( '3', 'standardPage'),
( '5', 'contact'),
( '6', 'team'),
( '7', 'portfolios'),
( '8', 'news');

DROP TABLE IF EXISTS `page_controller_t`;
CREATE TABLE `page_controller_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(16) NOT NULL, 
	`page_controller_id` VARCHAR(128) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller_t` (`id`, `n2n_locale`, `page_controller_id`) 
VALUES ( '1',  'de_CH',  '2'),
( '2', 'de_CH', '3'),
( '3', 'de_CH', '5'),
( '4', 'en', '2'),
( '5', 'en', '3'),
( '6', 'en', '5');

DROP TABLE IF EXISTS `page_controller_t_content_items`;
CREATE TABLE `page_controller_t_content_items` ( 
	`page_controller_t_id` INT UNSIGNED NOT NULL, 
	`content_item_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`page_controller_t_id`, `content_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `page_controller_t_content_items` (`page_controller_t_id`, `content_item_id`) 
VALUES ( '1',  '1'),
( '1', '2'),
( '1', '3'),
( '1', '4'),
( '1', '5'),
( '2', '6'),
( '3', '7'),
( '4', '53'),
( '4', '54'),
( '4', '55'),
( '4', '56'),
( '4', '57'),
( '5', '34'),
( '6', '51');

DROP TABLE IF EXISTS `page_link`;
CREATE TABLE `page_link` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`type` VARCHAR(255) NULL, 
	`linked_page_id` INT UNSIGNED NULL, 
	`url` VARCHAR(255) NULL, 
	`label` VARCHAR(255) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `page_link` ADD INDEX `page_link_index_1` (`linked_page_id`);


DROP TABLE IF EXISTS `page_t`;
CREATE TABLE `page_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`n2n_locale` VARCHAR(12) NULL, 
	`name` VARCHAR(255) NULL, 
	`title` VARCHAR(255) NULL, 
	`path_part` VARCHAR(255) NULL, 
	`page_id` INT UNSIGNED NULL, 
	`active` TINYINT UNSIGNED NOT NULL DEFAULT '1'
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `page_t` ADD INDEX `path_part` (`path_part`);
ALTER TABLE `page_t` ADD INDEX `page_leaf_t_index_1` (`page_id`);

INSERT INTO `page_t` (`id`, `n2n_locale`, `name`, `title`, `path_part`, `page_id`, `active`) 
VALUES ( '91',  'de_CH',  'Home',  NULL,  NULL,  '89',  '1'),
( '92', 'de_CH', 'News', NULL, 'news', '90', '1'),
( '93', 'de_CH', 'Kontakt', NULL, 'kontakt', '91', '1'),
( '94', 'de_CH', 'Über uns', NULL, 'ueber-uns', '92', '1'),
( '95', 'de_CH', 'Team', NULL, 'team', '93', '1'),
( '96', 'de_CH', 'Portfolio', NULL, 'portfolio', '94', '1'),
( '98', 'en', 'Portfolio', NULL, 'portfolio', '94', '1'),
( '99', 'en', 'Home', NULL, NULL, '89', '1'),
( '100', 'en', 'Contact', NULL, 'contact', '91', '1'),
( '101', 'en', 'Team', NULL, 'team', '93', '1'),
( '102', 'en', 'About', NULL, 'about', '92', '1'),
( '103', 'en', 'News', NULL, 'news', '90', '1');

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE `portfolio` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`file_image` VARCHAR(255) NOT NULL, 
	`published` DATETIME NOT NULL, 
	`online` TINYINT UNSIGNED NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `portfolio` (`id`, `file_image`, `published`, `online`) 
VALUES ( '1',  'portfolio/test_bild.jpg',  '2017-02-18 15:52:00',  '1'),
( '2', 'portfolio/test_bild_4.jpg', '2017-03-01 14:37:00', '1'),
( '3', 'portfolio/test_bild_5.jpg', '2017-03-01 15:37:00', '1'),
( '4', 'portfolio/test_bild_6.jpg', '2017-03-01 15:50:00', '1'),
( '5', 'portfolio/test_bild_7.jpg', '2017-03-01 17:01:00', '1');

DROP TABLE IF EXISTS `portfolio_page_controller`;
CREATE TABLE `portfolio_page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `portfolio_page_controller` (`id`) 
VALUES ( '7');

DROP TABLE IF EXISTS `portfolio_t`;
CREATE TABLE `portfolio_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(64) NOT NULL, 
	`path_part` VARCHAR(128) NOT NULL, 
	`portfolio_id` INT UNSIGNED NOT NULL, 
	`n2n_locale` VARCHAR(12) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `portfolio_t` ADD INDEX `portfolio_t_index_1` (`portfolio_id`);

INSERT INTO `portfolio_t` (`id`, `name`, `path_part`, `portfolio_id`, `n2n_locale`) 
VALUES ( '1',  'Lorem ipsum',  'lorem-ipsum',  '1',  'de_CH'),
( '2', 'Lorem ipsum', 'lorem-ipsum', '1', 'en'),
( '3', 'Hinter den Wortbergen', 'hinter-den-wortbergen', '2', 'de_CH'),
( '4', 'Far far away', 'far-far-away', '2', 'en'),
( '5', 'Werther', 'werther', '3', 'de_CH'),
( '6', 'Werther', 'werther', '3', 'en'),
( '7', 'Kafka', 'kafka', '4', 'de_CH'),
( '8', 'Kafka', 'kafka', '4', 'en'),
( '9', 'Pangramm', 'pangramm', '5', 'de_CH'),
( '10', 'Pangram', 'pangram', '5', 'en');

DROP TABLE IF EXISTS `portfolio_t_description`;
CREATE TABLE `portfolio_t_description` ( 
	`portfolio_t_id` INT UNSIGNED NOT NULL, 
	`content_item_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`portfolio_t_id`, `content_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `portfolio_t_description` (`portfolio_t_id`, `content_item_id`) 
VALUES ( '1',  '8'),
( '1', '12'),
( '2', '16'),
( '2', '17'),
( '3', '18'),
( '3', '19'),
( '4', '20'),
( '4', '21'),
( '5', '22'),
( '5', '23'),
( '6', '24'),
( '6', '25'),
( '7', '26'),
( '7', '27'),
( '8', '28'),
( '8', '29'),
( '9', '30'),
( '9', '31'),
( '10', '32'),
( '10', '33');

DROP TABLE IF EXISTS `rocket_content_item`;
CREATE TABLE `rocket_content_item` ( 
	`id` INT NOT NULL AUTO_INCREMENT, 
	`panel` VARCHAR(32) NOT NULL, 
	`order_index` INT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci ;

INSERT INTO `rocket_content_item` (`id`, `panel`, `order_index`) 
VALUES ( '1',  'hero',  '20'),
( '2', 'main', '20'),
( '3', 'main', '30'),
( '4', 'main', '40'),
( '5', 'main', '50'),
( '6', 'main', '20'),
( '7', 'aside', '20'),
( '8', 'main', '20'),
( '9', 'main', '30'),
( '12', 'main', '30'),
( '15', 'hero', '20'),
( '16', 'main', '20'),
( '17', 'main', '30'),
( '18', 'main', '20'),
( '19', 'main', '30'),
( '20', 'main', '20'),
( '21', 'main', '30'),
( '22', 'main', '20'),
( '23', 'main', '30'),
( '24', 'main', '20'),
( '25', 'main', '30'),
( '26', 'main', '20'),
( '27', 'main', '30'),
( '28', 'main', '20'),
( '29', 'main', '30'),
( '30', 'main', '20'),
( '31', 'main', '30'),
( '32', 'main', '20'),
( '33', 'main', '30'),
( '34', 'main', '20'),
( '35', 'main', '20'),
( '37', 'main', '20'),
( '38', 'main', '20'),
( '39', 'main', '30'),
( '40', 'main', '40'),
( '41', 'main', '20'),
( '42', 'main', '20'),
( '43', 'main', '30'),
( '44', 'main', '40'),
( '45', 'main', '20'),
( '46', 'main', '20'),
( '47', 'main', '30'),
( '48', 'main', '40'),
( '49', 'main', '20'),
( '50', 'main', '20'),
( '51', 'aside', '20'),
( '52', 'hero', '20'),
( '53', 'hero', '20'),
( '54', 'main', '20'),
( '55', 'main', '30'),
( '56', 'main', '40'),
( '57', 'main', '50');

DROP TABLE IF EXISTS `rocket_critmod_save`;
CREATE TABLE `rocket_critmod_save` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_type_path` VARCHAR(255) NOT NULL, 
	`name` VARCHAR(255) NOT NULL, 
	`filter_data_json` TEXT NOT NULL, 
	`sort_data_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_critmod_save` ADD UNIQUE INDEX `name` (`name`);
ALTER TABLE `rocket_critmod_save` ADD INDEX `ei_spec_id` (`ei_type_path`);


DROP TABLE IF EXISTS `rocket_custom_grant`;
CREATE TABLE `rocket_custom_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`custom_spec_id` VARCHAR(255) NOT NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL, 
	`full` TINYINT UNSIGNED NOT NULL DEFAULT '1', 
	`access_json` TEXT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_custom_grant` ADD UNIQUE INDEX `script_id_user_group_id` (`custom_spec_id`, `rocket_user_group_id`);


DROP TABLE IF EXISTS `rocket_ei_grant`;
CREATE TABLE `rocket_ei_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_spec_id` VARCHAR(255) NOT NULL, 
	`ei_mask_id` VARCHAR(255) NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL, 
	`full` TINYINT UNSIGNED NOT NULL DEFAULT '1'
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_ei_grant` ADD UNIQUE INDEX `script_id_user_group_id` (`rocket_user_group_id`, `ei_spec_id`, `ei_mask_id`);


DROP TABLE IF EXISTS `rocket_login`;
CREATE TABLE `rocket_login` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`nick` VARCHAR(16) NULL, 
	`wrong_password` VARCHAR(32) NULL, 
	`power` ENUM('superadmin','admin','none') NULL, 
	`successfull` TINYINT UNSIGNED NOT NULL, 
	`ip` VARCHAR(15) NOT NULL DEFAULT '', 
	`date_time` DATETIME NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `rocket_login` (`id`, `nick`, `wrong_password`, `power`, `successfull`, `ip`, `date_time`) 
VALUES ( '64',  'super',  NULL,  'superadmin',  '1',  '127.0.0.1',  '2016-12-23 10:29:59'),
( '65', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-10 15:28:56'),
( '66', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-17 17:15:09'),
( '67', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-17 21:37:03'),
( '68', 'super', NULL, 'superadmin', '1', '127.0.0.1', '2017-02-18 10:52:38'),
( '69', 'super', NULL, 'superadmin', '1', '::1', '2017-02-20 12:15:20'),
( '70', 'super', NULL, 'superadmin', '1', '::1', '2017-02-21 09:41:20'),
( '71', 'super', NULL, 'superadmin', '1', '::1', '2017-02-22 08:24:01'),
( '72', 'super', NULL, 'superadmin', '1', '::1', '2017-02-22 10:45:26'),
( '73', 'super', NULL, 'superadmin', '1', '::1', '2017-02-23 10:47:51'),
( '74', 'super', NULL, 'superadmin', '1', '::1', '2017-02-27 11:36:02'),
( '75', 'super', NULL, 'superadmin', '1', '::1', '2017-02-28 10:33:08'),
( '76', 'super', NULL, 'superadmin', '1', '::1', '2017-03-01 10:09:29'),
( '77', 'super', NULL, 'superadmin', '1', '::1', '2017-03-01 14:05:22'),
( '78', 'super', NULL, 'superadmin', '1', '::1', '2017-03-02 09:03:48'),
( '79', 'super', NULL, 'superadmin', '1', '::1', '2017-03-07 10:28:32'),
( '80', 'super', NULL, 'superadmin', '1', '::1', '2017-03-08 10:42:14'),
( '81', 'super', NULL, 'superadmin', '1', '::1', '2017-03-09 14:11:21');

DROP TABLE IF EXISTS `rocket_user`;
CREATE TABLE `rocket_user` ( 
	`id` INT NOT NULL AUTO_INCREMENT, 
	`nick` VARCHAR(128) NOT NULL, 
	`firstname` VARCHAR(32) NULL, 
	`lastname` VARCHAR(32) NULL, 
	`email` VARCHAR(128) NULL, 
	`power` ENUM('superadmin','admin','none') NOT NULL DEFAULT 'none', 
	`password` VARCHAR(128) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_user` ADD UNIQUE INDEX `nick` (`nick`);

INSERT INTO `rocket_user` (`id`, `nick`, `firstname`, `lastname`, `email`, `power`, `password`) 
VALUES ( '1',  'super',  'Testerich',  'von Testen',  'testerich@von-testen.com',  'superadmin',  '$2a$07$holeradioundholeradioe5FD29ANtu4PChE8W4mZDg.D1eKkBnwq');

DROP TABLE IF EXISTS `rocket_user_access_grant`;
CREATE TABLE `rocket_user_access_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`script_id` VARCHAR(255) NOT NULL, 
	`restricted` TINYINT NOT NULL, 
	`privileges_json` TEXT NOT NULL, 
	`access_json` TEXT NOT NULL, 
	`restriction_json` TEXT NOT NULL, 
	`user_group_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `rocket_user_access_grant` ADD INDEX `user_group_id` (`user_group_id`);


DROP TABLE IF EXISTS `rocket_user_group`;
CREATE TABLE `rocket_user_group` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(64) NOT NULL, 
	`nav_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `rocket_user_privileges_grant`;
CREATE TABLE `rocket_user_privileges_grant` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`ei_grant_id` INT UNSIGNED NOT NULL, 
	`ei_command_privilege_json` TEXT NULL, 
	`ei_field_privilege_json` TEXT NULL, 
	`restricted` TINYINT NOT NULL DEFAULT '0', 
	`restriction_group_json` TEXT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `rocket_user_rocket_user_groups`;
CREATE TABLE `rocket_user_rocket_user_groups` ( 
	`rocket_user_id` INT UNSIGNED NOT NULL, 
	`rocket_user_group_id` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`rocket_user_id`, `rocket_user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;


DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`order_index` INT UNSIGNED NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `team` (`id`, `order_index`) 
VALUES ( '1',  '10'),
( '2', '20');

DROP TABLE IF EXISTS `team_member`;
CREATE TABLE `team_member` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`firstname` VARCHAR(32) NOT NULL, 
	`lastname` VARCHAR(32) NOT NULL, 
	`phone` VARCHAR(32) NULL, 
	`email` VARCHAR(128) NULL, 
	`foto` VARCHAR(255) NULL, 
	`order_index` INT UNSIGNED NOT NULL, 
	`team_id` INT NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `team_member` (`id`, `firstname`, `lastname`, `phone`, `email`, `foto`, `order_index`, `team_id`) 
VALUES ( '1',  'Chuck',  'Norris',  NULL,  'chuck@n2n.rocks',  'teammember/test_bild_3.jpg',  '10',  '1'),
( '2', 'Bruce', 'Lee', NULL, 'bruce@n2n.rocks', 'teammember/test_bild_20.jpg', '20', '2'),
( '3', 'Jackie', 'Chan', NULL, 'jackie@n2n.rocks', 'teammember/test_bild_22.jpg', '30', '2'),
( '4', 'Samuel', 'L. Jackson', NULL, 'samuel@n2n.rocks', 'teammember/test_bild_23.jpg', '40', '2');

DROP TABLE IF EXISTS `team_member_t`;
CREATE TABLE `team_member_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`function` VARCHAR(255) NULL, 
	`team_member_id` INT UNSIGNED NULL, 
	`n2n_locale` VARCHAR(12) NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `team_member_t` ADD INDEX `team_member_t_index_1` (`team_member_id`);

INSERT INTO `team_member_t` (`id`, `function`, `team_member_id`, `n2n_locale`) 
VALUES ( '1',  'Grosser Chef',  '1',  'de_CH'),
( '2', 'Big Boss', '1', 'en'),
( '3', 'Kampfkünstler', '2', 'de_CH'),
( '4', 'Martial artist', '2', 'en'),
( '5', 'Verschiedenes', '3', 'de_CH'),
( '6', 'Various', '3', 'en'),
( '7', 'Improvisations­talent', '4', 'de_CH'),
( '8', 'Improvisation talent', '4', 'en');

DROP TABLE IF EXISTS `team_page_controller`;
CREATE TABLE `team_page_controller` ( 
	`id` INT NOT NULL, 
	`team_id` INT UNSIGNED NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;
ALTER TABLE `team_page_controller` ADD INDEX `team_page_controller_index_1` (`team_id`);

INSERT INTO `team_page_controller` (`id`, `team_id`) 
VALUES ( '6',  NULL);

DROP TABLE IF EXISTS `team_t`;
CREATE TABLE `team_t` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	`name` VARCHAR(32) NOT NULL, 
	`team_id` INT UNSIGNED NOT NULL, 
	`n2n_locale` VARCHAR(8) NOT NULL
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `team_t` (`id`, `name`, `team_id`, `n2n_locale`) 
VALUES ( '1',  'Geschäftsleitung',  '1',  'de_CH'),
( '2', 'Mitarbeiter', '2', 'de_CH'),
( '3', 'Management', '1', 'en'),
( '4', 'Staff', '2', 'en');

DROP TABLE IF EXISTS `tmpl_page_controller`;
CREATE TABLE `tmpl_page_controller` ( 
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT
	, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_general_ci ;

INSERT INTO `tmpl_page_controller` (`id`) 
VALUES ( '2'),
( '3');

