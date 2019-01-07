-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2019 at 09:57 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(6) NOT NULL,
  `quote` text NOT NULL COMMENT 'Famous Quote',
  `movie` varchar(255) NOT NULL COMMENT 'Famous Movie',
  `movie_year` varchar(255) NOT NULL COMMENT 'Year the movie was released',
  `url` varchar(255) NOT NULL COMMENT 'Link to quote/movie',
  `extra` mediumtext NOT NULL COMMENT 'Any extra information'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `quote`, `movie`, `movie_year`, `url`, `extra`) VALUES
(1, 'Frankly, my dear, I don\'t give a damn.', 'Gone With the Wind', '1939', 'https://www.imdb.com/title/tt0031381/?ref_=fn_al_tt_1', 'A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods. '),
(2, 'I\'m going to make him an offer he can\'t refuse.', 'The Godfather', '1972', 'https://www.imdb.com/title/tt0068646/?ref_=fn_al_tt_1', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son. '),
(3, 'You don\'t understand! I coulda had class. I coulda been a contender. I could\'ve been somebody, instead of a bum, which is what I am.', 'On the Waterfront', '1954', 'https://www.imdb.com/title/tt0047296/?ref_=fn_al_tt_1', 'An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.'),
(4, 'Love means never having to say you\'re sorry.', 'Love Story', '1970', 'https://www.imdb.com/title/tt0066011/?ref_=fn_al_tt_1', 'One of the most parodied movie lines in cinema — even Ryan O’Neal himself poked fun at it in Peter Bogdanovich\'s screwball comedy What\'s Up, Doc?. When Barbra Streisand quotes it, he retorts, \"That\'s the dumbest thing I have ever heard.\"'),
(5, 'They may take our lives, but they\'ll never take our freedom!', 'Braveheart', '1995', 'https://www.imdb.com/title/tt0112573/?ref_=fn_al_tt_1', 'The only way Paramount pictures would fund Mel Gibson\'s passion project about the 13th century Scottish noble was if he agreed to star in it as well as direct.'),
(6, 'They call me Mister Tibbs!', 'In the Heat of the Night', '1967', 'https://www.imdb.com/title/tt0094484/?ref_=nv_sr_1', 'The cases and adventures of the police forces in and around Sparta, Mississippi. '),
(7, 'When you realize you want to spend the rest of your life with somebody, you want the rest of your life to start as soon as possible.', 'When Harry Met Sally', '1989', 'https://www.imdb.com/title/tt0098635/?ref_=fn_al_tt_1', 'Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship. '),
(8, 'If you let my daughter go now, that\'ll be the end of it. I will not look for you, I will not pursue you. But if you don\'t, I will look for you, I will find you, and I will kill you.', 'Taken', '2008', 'https://www.imdb.com/title/tt0936501/?ref_=fn_al_tt_1', 'True to his word, Liam Neeson kills 35 men in 93 minutes in the first film, scores more in the second and third, and who knows how many in the planned TV prequel.'),
(9, 'You complete me', 'Jerry Maguire', '1996', 'https://www.imdb.com/title/tt0116695/?ref_=fn_al_tt_1', 'When a sports agent has a moral epiphany and is fired for expressing it, he decides to put his new philosophy to the test as an independent agent with the only athlete who stays with him and his former secretary. '),
(10, 'My name is Maximus Decimus Meridius, commander of the Armies of the North, General of the Felix Legions and loyal servant to the true emperor, Marcus Aurelius. Father to a murdered son, husband to a murdered wife. And I will have my vengeance, in this life or the next.', 'Gladiator', '2000', 'https://www.imdb.com/title/tt0172495/?ref_=fn_al_tt_1', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery. '),
(12, 'I drink your milkshake!', 'There Will Be Blood', '2007', 'https://www.imdb.com/title/tt0469494/?ref_=fn_al_tt_1', 'A variation of the line was uttered by Sen. Albert Fall of New Mexico during congressional hearings in 1924 on the Teapot Dome scandal, which also involved oil tycoon Edward Doheny, who was the basis for Daniel Day-Lewis’ character: \"Sir, if you have a milkshake and I have a milkshake, and my straw reaches across the room, I’ll end up drinking your milkshake.\"'),
(13, 'Get your stinking paws off me, you damned dirty ape!', 'Planet of the Apes', '1968', 'https://www.imdb.com/title/tt7399626/?ref_=fn_al_tt_1', 'The secret behind Charlton Heston’s hoarse, gravelly delivery? Great acting, sure, but also Heston had the flu through much of the production.'),
(14, 'You make me want to be a better man.', 'As Good as It Gets', '1997', 'https://www.imdb.com/title/tt0119822/?ref_=fn_al_tt_1', 'Though Jack Nicholson worried that his character was so unlikeable people would flee theaters, he ended up winning an Oscar for it, along with co-star Helen Hunt.'),
(15, 'As if!', 'Clueless', '1995', 'https://www.imdb.com/title/tt0112697/?ref_=nv_sr_1', '\"I am always compiling slang words,\" says Clueless writer-director Amy Heckerling about the line’s origins. “In the early to mid-\'90s \'as if\' was floating around in the gay community, and I heard it and thought it was a multipurpose phrase. Some of the people I knew were already beyond \'as if\' and they were just going, \'zif!\'\"'),
(16, 'Chewie, we\'re home.', 'Star Wars Episode VII: The Force Awakens', '2015', 'https://www.imdb.com/title/tt2488496/?ref_=fn_al_tt_6', 'Harrison Ford considers director J.J. Abrams a \"communications genius\" for his decision to use the line in the movie\'s trailer. \"\'Chewie, we\'re home\' was kind of the key in the door. Familiarity was unlocked at that moment,\" said Ford.'),
(17, 'Forget it, Jake. It\'s Chinatown.', 'Chinatown', '1974', 'https://www.imdb.com/title/tt0071315/?ref_=fn_al_tt_1', 'Even though Nicholson and director Roman Polanski fought endlessly during the making of the movie, when the actor saw the rough cut he told producer Robert Evans, \"We got a hot one. Get those checks ready — we’re on our way!\"'),
(18, 'These go to eleven.', 'This Is Spinal Tap', '1984', 'https://www.imdb.com/title/tt0088258/?ref_=nv_sr_1', 'Amp maker Marshall liked the publicity surrounding this line so much, they made Christopher Guest a special set of speakers whose highest setting is infinity.'),
(19, 'I\'m walking here! I\'m walking here!', 'Midnight Cowboy', '1969', 'https://www.imdb.com/title/tt0064665/?ref_=nv_sr_1', 'Dustin Hoffman’s line was ad-libbed, and the scene was shot guerilla style because they didn’t have enough money to shut down a New York street. The cab \"almost hit us,\" Hoffman once recalled. \"I guess the brain works so quickly, I said, in a split of a second, \'Don’t go out of character …\' So I said, \'I\'m walking here.\' Director John Schlesinger started laughing. He clapped his hands and said, \'We must have that, we must have that,\' and redid it two or three times, because he loved it.\"'),
(20, 'It was Beauty killed the Beast.', 'King Kong', '1933', 'https://www.imdb.com/title/tt0024216/?ref_=nv_sr_3', 'When producer Merian C. Cooper pitched the role to Fay Wray, he told her, \"You’ll have the tallest, darkest leading man in Hollywood.\" Wray was sure she’d be acting with Cary Grant.'),
(21, 'I\'m just one stomach flu away from my goal weight.', 'The Devil Wears Prada', '2006', 'https://www.imdb.com/title/tt0458352/?ref_=fn_al_tt_1', 'The National Science Teachers Association encourages biology and life sciences teachers to use this line to start a conversation about body image, nutrition and digestion among teenagers.'),
(22, 'They call it a Royale with cheese.', 'Pulp Fiction', '1994', 'https://www.imdb.com/title/tt0110912/?ref_=nv_sr_1', 'If John Travolta’s character had been hiding out in Italy rather than France, the line would have been \"They call it a McRoyal DeLuxe.\" If he’d been in Japan, he might have skipped the beef and tried the \"Filet-O-Shrimp Burger.\"'),
(23, 'They\'re here!', 'Poltergeist', '1982', 'https://www.imdb.com/title/tt0084516/?ref_=nv_sr_1', 'Actress Heather O’Rourke, who was just 6 when she made Poltergeist, tragically died at age 12, in 1988, from complications of a bowel obstruction.'),
(24, 'Magic Mirror on the wall, who is the fairest one of all?', 'Snow White and the Seven Dwarves', '1937', 'https://www.imdb.com/title/tt0029583/?ref_=fn_al_tt_1', 'Snow White was the only major character then-18-year-old Adriana Caselotti ever voiced. \"Walt Disney thought it would spoil the illusion if you knew who the people were who provided the voices in the film,\" she revealed in a 1987 interview, about the strict contract that kept her from other parts. (She died in 1997 at age 80.)'),
(25, 'Just when I thought I was out, they pull me back in.', 'The Godfather: Part III', '1990', 'https://www.imdb.com/title/tt0099674/?ref_=fn_al_tt_1', 'Mario Puzo’s literary estate, which contained 20 different versions of the Godfather III script written between 1978 and 1989, recently sold at auction to a private collector for $625,000.'),
(26, 'Yo, Adrian!', 'Rocky', '1976', 'https://www.imdb.com/title/tt0075148/?ref_=nv_sr_1', 'Sylvester Stallone utters this line too many times to count in the first five Rocky films (six in the original alone) but the only time anyone ever remembers is at the end of Rocky II, when he holds the championship belt he has just won from Apollo Creed.'),
(27, 'Wax on, wax off.', 'The Karate Kid', '1984', 'https://www.imdb.com/title/tt0087538/?ref_=nv_sr_1', '\"I never imagined the \'wax on, wax off\' would amount to anything,\" says screenwriter Robert Mark Kamen. \"The crane at the end was the one. I wanted that to be the big moment. If I thought anyone remembered anything they\'d remember that.\"'),
(29, 'Elementary, my dear Watson.', 'The Adventures of Sherlock Holmes', '1939', 'https://www.imdb.com/title/tt0031022/?ref_=nv_sr_4', 'Sherlock Holmes never utters this line in any of Sir Arthur Conan Doyle’s stories. It was invented entirely for the movies.'),
(30, 'That\'ll do, pig. That\'ll do.', 'Babe', '1995', 'https://www.imdb.com/title/tt0112431/?ref_=nv_sr_1', 'Although James Cromwell would get more screen time in George Miller\'s talking pig tale than in any of his previous films, he had only 171 words of dialogue. These are his best five.'),
(31, 'Good morning, Vietnam', 'Good Morning, Vietnam', '1987', 'https://www.imdb.com/title/tt0093105/?ref_=nv_sr_1', 'The real-life Adrian Cronauer says he came up with the drawn out \"goooood moooorning\" sign-on because he was often shuffling papers to start the show and needed to stall for time.'),
(32, 'My precious.', 'The Lord of the Rings: The Two Towers', '2002', 'https://www.imdb.com/title/tt0167261/?ref_=nv_sr_3', 'Want your own? You don\'t have to battle orcs and dragons — you just have to shop online. A platinum version, complete with Elvish script, retails for $3,100.'),
(33, 'Argo f@#$ yourself.', 'Argo', '2012', 'https://www.imdb.com/title/tt1024648/?ref_=nv_sr_1', 'Screenwriter Chris Terrio actually found this memorable piece of dialogue in the real, declassified CIA report that agent Tony Melendez (played by Ben Affleck) wrote about the Iran Hostage Crisis rescue mission.'),
(34, 'It\'s alive! It\'s alive!', 'Frankenstein', '1931', 'https://www.imdb.com/title/tt0021884/?ref_=nv_sr_6', 'Censors cut Dr. Frankenstein’s original line — \"It\'s alive! It\'s alive! In the name of God! Now I know what it\'s like to be God!\"'),
(35, 'Go ahead, make my day.', 'Sudden Impact', '1983', 'https://www.imdb.com/title/tt0086383/?ref_=nv_sr_1', 'In Kenya the mispronunciation of \"make my day\" is \"makmende,\" which is slang for someone who tries to be a hero and was the name creators chose for the country’s first locally created superhero, described by CNN as \"one part Shaft, one part Superman.\"'),
(36, 'After all, tomorrow is another day!', 'Gone With the Wind', '1939', 'https://www.imdb.com/title/tt0031381/?ref_=nv_sr_1', 'Though the screenplay, which went through numerous revisions, has four credited writers, this line is lifted directly from the book, where it is the closing line of the novel.  '),
(37, 'Pay no attention to that man behind the curtain!', 'The Wizard of Oz', '1939', 'https://www.imdb.com/title/tt0032138/?ref_=nv_sr_1', 'L. Frank Baum, the author of the novel on which the film is based, reportedly thought up the name \"Oz\" when looking at his filing cabinets, which were organized from A to N and O to Z.'),
(38, 'I\'m also just a girl, standing in front of a boy, asking him to love her.', 'Notting Hill', '1999', 'https://www.imdb.com/title/tt0125439/?ref_=nv_sr_1', 'No surprise that one of the ultimate rom-com lines of all time also had the biggest disparity between male and female voters. Women had it at No. 28. Men just No. 100.'),
(39, 'Hasta la vista, baby.', 'Terminator 2: Judgment Day', '1991', 'https://www.imdb.com/title/tt0103064/?ref_=nv_sr_1', '\"Sayonara, baby\" was used in the Spanish-language version of the film since hasta la vista wouldn’t have been funny to Spanish-speaking audiences.'),
(41, 'Play it, Sam. Play \'As Time Goes By.', 'Casablanca', '1942', 'https://www.imdb.com/title/tt0034583/?ref_=nv_sr_1', 'Blame Woody Allen and his 1972 comedy, Play it Again, Sam, for making this the all-time most misquoted movie line in film history.'),
(42, 'I\'m having an old friend for dinner.', 'The Silence of the Lambs', '1991', 'https://www.imdb.com/title/tt0102926/?ref_=nv_sr_1', 'With lines as good as this one, Anthony Hopkins only needed about 16 minutes of screen time to win a best actor Oscar, among the shortest performances ever to earn someone an Academy Award in the category.'),
(43, 'Just keep swimming.', 'Finding Nemo', '203', 'https://www.imdb.com/title/tt0266543/?ref_=nv_sr_1', 'This line — voiced by talk show host Ellen DeGeneres — was so popular, it’s earned her sidekick fish character, Dory, her own Nemo sequel, Finding Dory, coming this summer.'),
(44, 'Mama says, \'Stupid is as stupid does.', 'Forrest Gump', '1994', 'https://www.imdb.com/title/tt0109830/?ref_=nv_sr_1', 'Forrest Gump may have popularized the phrase, but it’s actually a variant of the old adage, \"Handsome is as handsome does,” which appears in, among other places, J.R.R. Tolkien\'s The Lord of the Rings and Herman Melville\'s Billy Budd.'),
(45, 'I\'m the king of the world!', 'Titanic', '1997', 'https://www.imdb.com/title/tt0120338/?ref_=nv_sr_1', 'Director James Cameron admitted \"making a fool of\" himself by repeating the line as he accepted the movie\'s best picture Oscar.'),
(46, 'Shaken, not stirred.', 'Goldfinger', '1964', 'https://www.imdb.com/title/tt0058150/?ref_=nv_sr_1', 'The line is uttered onscreen for the first time by Dr. No, the villain in the first Bond movie. Bond himself doesn’t say it until Goldfinger, the third movie.'),
(47, 'Frankly, my dear, I don\'t give a damn.', 'Gone With the Wind', '1939', 'https://www.imdb.com/title/tt0031381/?ref_=nv_sr_1', 'Two months before the movie’s release, censors demanded that \"damn\" be dropped. The producers came up with 22 variations of the line, including \"Frankly, my dear, I don’t give a whoop,\" before the censors relented and allowed the \"damn\" to stay.'),
(48, 'Here\'s looking at you, kid.', 'Casablanca', '1942', 'https://www.imdb.com/title/tt0034583/?ref_=nv_sr_1', 'The Japanese version of the line — \"Kimi no hitomi ni kanpai\'\' — literally translates as, \"Cheers to your eyes.\" Manako Ihaya of the American Translators Association calls it \"a classic example of a good movie script translation\" for its ability to capture the nuance of the English for the Japanese audience.'),
(49, 'You\'re gonna need a bigger boat.', 'Jaws', '1975', 'https://www.imdb.com/title/tt0073195/?ref_=nv_sr_1', '\"[Richard] Zanuck and [David] Brown were very stingy producers and everyone kept telling them \'You\'re gonna need a bigger boat,\'\" recalls Jaws screenwriter Carl Gottlieb (who moved in with director Steven Spielberg for four months to work on the shooting script). \"It became a catchphrase for anytime anything went wrong — whether lunch was late or if the swells were rocking the camera.\"'),
(50, 'May the Force be with you.', 'Star Wars', '1977', 'https://www.imdb.com/title/tt0076759/?ref_=nv_sr_7', 'Several characters say this line in the original movie, but surprisingly not Obi-Wan Kenobi, who doesn\'t utter it until 2002\'s Episode II: Attack of the Clones.'),
(51, 'Toto, I\'ve a feeling we\'re not in Kansas anymore.', 'The Wizard of Oz', '1939', 'https://www.imdb.com/title/tt0032138/?ref_=nv_sr_1', 'Since Dorothy first uttered it 77 years ago, this line has popped up in countless TV shows and movies, from Honey, I Shrunk the Kids to Avatar, from Grey’s Anatomy to Gilmore Girls. Not to mention Jo Dee Messina’s 1996 hit “You’re Not in Kansas Anymore.”'),
(52, 'I\'m going to make him an offer he can\'t refuse.', 'The Godfather', '1972', 'https://www.imdb.com/title/tt0068646/?ref_=nv_sr_1', 'Some variation of this line appears in all three Godfather movies. Screenwriter Mario Puzo and director Francis Ford Coppola were on opposite coasts when they were co-writing the script for the first film — Puzo in New York City, Coppola in San Francisco — and they literally mailed drafts back and forth to each other.'),
(53, 'You talkin\' to me?', 'Taxi Driver', '1976', 'https://www.imdb.com/title/tt0075314/?ref_=nv_sr_1', 'Robert De Niro improvised the line. The script simply said, \"Travis speaks to himself in the mirror.\" Writer Paul Schrader told the actor his character was just \"a little kid playing with guns and acting tough.\"'),
(54, 'The first rule of Fight Club is: You do not talk about Fight Club.', 'Fight Club', '1999', 'https://www.imdb.com/title/tt0137523/?ref_=nv_sr_1', 'Both actors took lessons in boxing, tae kwon do, grappling and studied hours of UFC programming. Pitt even visited a dentist to have his front tooth chipped. They also almost didn’t get the roles: Matt Damon and Sean Penn were considered for The Narrator, but David Fincher wanted Norton, as he was impressed with his performance in The People vs. Larry Flynt. One producer has his eye on Russell Crowe for Tyler Durden, but another producer overruled him.'),
(55, 'I am your father.', 'Star Wars Episode V: The Empire Strikes Back', '1980', 'https://www.imdb.com/title/tt0080684/?ref_=nv_sr_1', 'One of the most misquoted lines in movie history, right up there with \"Play it again, Sam.\" The real line has no \"Luke\" in it.'),
(56, 'Hello. My name is Inigo Montoya. You killed my father. Prepare to die.', 'The Princess Bride', '1987', 'https://www.imdb.com/title/tt0093779/?ref_=nv_sr_1', 'Mandy Patinkin has said that this line — by far the most famous he\'s ever uttered —  gets repeated back to him by fans at least two or three times a day. '),
(57, 'Why so serious?', 'The Dark Knight', '2008', 'https://www.imdb.com/title/tt0468569/?ref_=nv_sr_1', 'Heath Ledger\'s brilliantly twisted delivery may account for why this line finished No. 1 among 20- to 29-year-old voters.'),
(58, 'I\'ll have what she\'s having.', 'When Harry Met Sally ', '1989', 'https://www.imdb.com/title/tt0098635/?ref_=nv_sr_1', 'According to Billy Crystal, Meg Ryan was so self-conscious about faking an orgasm, director Rob Reiner faked \"an orgasm that King Kong would be jealous of\" to make her relax.'),
(59, 'I see dead people.', 'The Sixth Sense', '1999', 'https://www.imdb.com/title/tt0167404/?ref_=nv_sr_1', 'As Haley Joel Osment says this line, the camera pans over Bruce Willis\' face. That worried producer Frank Marshall, who thought it might give away the movie\'s twist. Test audience, though, didn\'t have a clue.'),
(60, 'I\'ll be back.', 'The Terminator', '1984', 'https://www.imdb.com/title/tt0088247/?ref_=nv_sr_1', 'Schwarzenegger wanted to change the line to \"I will be back\" because it sounded more machine-like and he had trouble pronouncing \"I\'ll.\" He said director James Cameron \"looked at me like I\'d lost my mind.\"'),
(61, 'You can\'t handle the truth!', 'A Few Good Men', '1992', 'https://www.imdb.com/title/tt0104257/?ref_=nv_sr_1', 'It took an entire day to shoot the climatic courtroom scene where Nicholson utters this line. When it came time to shoot coverage — filming reaction shots from others in the scene — director Rob Reiner told Nicholson he would get someone else to read his lines off-camera, but Nicholson insisted on reading them himself, doing the speech about 50 times. Why? \"I just love to act,\" he told Reiner. '),
(62, 'E.T. phone home.', 'E.T. the Extra-Terrestrial', '1982', 'https://www.imdb.com/title/tt0083866/?ref_=nv_sr_1', 'Director Steven Spielberg voiced E.T. during shooting — standing just to the side of the camera and interacting with the child actors. Then sound designer Ben Burtt recorded actress Pat Welsh, whose raspy smoker’s voice he overheard one day at a camera store, and mixed it with animal sounds to get the friendly alien’s voice just right. '),
(63, 'Yippie-ki-yay, motherf#$%er!', 'Die Hard', '1988', 'https://www.imdb.com/title/tt0095016/?ref_=nv_sr_1', '\"I wrote \'Yippe-ki-yay, asshole,\'\" says screenwriter Steven E. de Souza. \"But Bruce, on his final take, ad-libbed the \'motherf—er,\' much to the amusement of the crew. The studio nervously left it in for the first test screening and the reaction made it permanent. But you don\'t always know.”'),
(64, 'To infinity and beyond!', 'Toy Story', '1995', 'https://www.imdb.com/title/tt0114709/?ref_=fn_al_tt_1', 'Buzz Lightyear\'s catchphrase is actually a variation of the line \"Beyond the infinite,\" which appears as a title card in Stanley Kubrick\'s 2001: A Space Odyssey. The phrase later served as the title of Karen Paik\'s book recounting the history of Pixar — and as a lyric in Beyonce\'s 2008 hit, \"Single Ladies.\"'),
(65, 'Houston, we have a problem.', 'Apollo 13', '1995', 'https://www.imdb.com/title/tt0112384/?ref_=nv_sr_1', 'Hollywood doing a little historical revisionism: In real life, astronaut Jim Lovell said, \"Houston, we\'ve had a problem.\"'),
(66, 'Here\'s Johnny!', 'The Shining', '1980', 'https://www.imdb.com/title/tt0081505/?ref_=nv_sr_1', 'All the script called for was for Jack Nicholson’s deranged writer, Jack Torrance, to break down the door to get to his cowering wife. But Nicholson added a little something to cut the tension — the production went through dozens of doors before director Stanley Kubrick was satisfied — and his improvised \"Here’s Johnny!\" made the cut.'),
(67, 'I am serious. And don\'t call me Shirley.', 'Airplane', '1980', 'https://www.imdb.com/title/tt0080339/?ref_=nv_sr_1', '\"I think people remember the line because of Leslie Nielsen’s delivery,\" Jeff Zucker (who co-wrote the script with his brother David and Jim Abrahamson) tells THR. \"The way he said it was exactly what we were going for. We told the actors to pretend they didn’t know they were in a comedy.\"'),
(68, 'Carpe diem. Seize the day, boys.', 'Dead Poets Society', '1989', 'https://www.imdb.com/title/tt0097165/?ref_=nv_sr_1', '\"I have a pair of pants from a company called Carpe Denim,\" screenwriter Tom Schulman tells THR.  \"I didn\'t realize when I bought them, but when they were folded in a certain way I saw it on the inside of the waistband. The \'Denim\' is pretty much the funniest thing I\'ve seen with that line.\"'),
(69, 'Say hello to my little friend!', 'Scarface', '1983', 'https://www.imdb.com/title/tt0086250/?ref_=nv_sr_1', 'Al Pacino\'s M203 grenade launcher — which was custom-made for the film and later appeared in Predator — sold at an auction in November for $54,400.'),
(70, 'You\'ve got to ask yourself one question: \'Do I feel lucky?\' Well, do ya punk?', 'Dirty Harry', '1971', 'https://www.imdb.com/title/tt0066999/?ref_=nv_sr_1', 'Another misquote. Contrary to popular belief, Clint Eastwood never says, \"Do you feel lucky, punk?\"'),
(71, 'I love the smell of napalm in the morning.', 'Apocalypse Now', '1979', 'https://www.imdb.com/title/tt0078788/?ref_=nv_sr_1', 'In the 37 years since the movie was released, this line has been parodied more than 50 times in other TV shows and movies, including Lizzie Maguire (\"I love the smell of pop quizzes in the morning!\") and Mighty Morphin\' Power Rangers: The Movie (\"I love the smell of destruction in the evening!\").'),
(72, 'Roads? Where we\'re going we don\'t need roads.', 'Back to the Future', '1985', 'https://www.imdb.com/title/tt0088763/?ref_=nv_sr_1', 'One of two lines on this list that have been quoted in State of the Union addresses (see also: No. 32). \"There is just no greater tribute you can get than have the president of the United States quote your movie, no matter what your politics are,\" says writer Bob Gale.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
