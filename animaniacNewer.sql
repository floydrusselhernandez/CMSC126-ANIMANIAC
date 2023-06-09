-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 02:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animaniac`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `headline` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `sub_image` varchar(255) DEFAULT NULL,
  `article_link` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `headline`, `main_image`, `sub_image`, `article_link`, `date`, `text1`, `text2`) VALUES
(1, 'Horimiya: The Missing Pieces Anime\'s Video Reveals Theme Songs, Cast, July 1 Debut', 'res/news/horimiya_news.jpg', 'res/news/horimiya_img.jpg', 'articles/article_horimiya.php', '2023-05-30', 'The staff for the Horimiya: The Missing Pieces (Horimiya -piece-) anime unveiled a new promotional video and visual for the anime on Friday. The video reveals and previews the anime\'s theme songs, and also announces a new cast member and the anime\'s July 1 premiere date.\n<br><br>Yen Press publishes the manga in English, and it describes the story:The anime will premiere on Tokyo MX and MBS on July 1, and will stream on AbemaTV and U-NEXT on July 1, and other streaming services on July 5. Omoinotake performs the opening theme song \"Shiawase\" (Happiness), while Ami Sakaguchi performs the ending theme song \"URL.\"\n<br><br>Daisuke Namikawa joins the cast as Takeru Sengoku, Kakeru\'s father. Crunchyroll will stream the anime as it airs in Japan. The anime will animate stories in the original manga that the previous anime had not yet adapted.', 'At first glance, the ultra-popular Hori-san seems like a frivolous high school girl, but in reality, she\'s plain, pragmatic, and family-oriented. On the other hand, the bespectacled Miyamura-kun comes across as an average, gloomy high school fanboy, but he\'s actually an attractive young man who has a bad-boy streak and is covered in piercings and tattoos. When these two unexpectedly similar classmates have a random run-in outside of the classroom, a bubbly, sweet tale of school life begins! \n<br><br>Daisuke Hagiwara launched the Horimiya manga in Square Enix\'s Monthly G Fantasy magazine in 2011 as an adaptation of HERO\'s Hori-san to Miyamura-kun four-panel school comedy manga, and ended it in March 2021. HERO supervised the manga. Square Enix published the 16th and final compiled book volume of the manga in July 2021. Yen Press will publish the 16th volume on May 23. Hagiwara penned an epilogue chapter for the manga in July 2021.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cart_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `cart_date`) VALUES
(4, 1, 13, '2023-05-31 19:19:15'),
(5, 1, 18, '2023-05-31 19:19:15'),
(6, 1, 3, '2023-05-31 19:19:15'),
(23, 1, 4, '2023-06-07 08:16:57'),
(24, 1, 7, '2023-06-07 08:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Books'),
(2, 'Figures'),
(3, 'Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `delivered`
--

CREATE TABLE `delivered` (
  `delivered_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivered`
--

INSERT INTO `delivered` (`delivered_id`, `user_id`, `product_id`) VALUES
(1, 1, 4),
(2, 1, 3),
(4, 1, 18),
(5, 1, 13),
(6, 1, 25),
(7, 2, 1),
(8, 1, 1),
(9, 1, 19),
(10, 1, 13),
(11, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Adventure'),
(2, 'Action'),
(3, 'Comedy'),
(4, 'Drama'),
(5, 'Fantasy'),
(6, 'Horror'),
(7, 'Romance'),
(8, 'Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `article_connected` int(11) DEFAULT NULL,
  `headline` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `upcoming` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `article_connected`, `headline`, `thumbnail`, `description`, `category`, `tag`, `featured`, `upcoming`) VALUES
(1, 1, 'Horimiya: The Missing Pieces Anime\'s Video Reveals Theme Songs, Cast, July 1 Debut', 'res/news/horimiya_news.jpg', 'The staff for the Horimiya: The Missing Pieces (Horimiya -piece-) anime unveiled a new promotional video and visual for the anime on Friday. The video reveals and previews the anime\'s theme songs, and also announces a new cast member and the anime\'s July 1 premiere date.', 'anime', 'trending', 1, 1),
(4, 4, 'Oshi no Ko Anime Debuts with 90-Minute 1st Episode gets fans excited for what\'s to come', 'res/news/oshi_news.jpg', 'The staff of the anime of Aka Akasaka and Mengo Yokoyari\'s Oshi no Ko manga announced on Thursday that the anime will debut in 2023 with an extended 90-minute first episode. The staff also revealed that Rie Takahashi will play the idol Ai.', 'anime', 'popular', 1, 1),
(5, NULL, 'No Longer Allowed In Another World TV Anime\'s Teaser Reveals 2024 Premiere', 'res/news/osamu_news.jpg', 'Kadokawa unveiled a new teaser trailer and teaser visual for the television anime of Hiroshi Noda and Takahiro Wakamatsu\'\'s No Longer Allowed In Another World (Isekai Shikkaku) manga on Tuesday. The teaser reveals that the anime will premiere in 2024.', 'anime', 'new', 0, 1),
(7, NULL, 'One Piece Manga Goes on 4-Week Hiatus for Eiichiro Oda\'s Surgery', 'res/news/one_piece.png', 'The official website for Eiichiro Oda\'s One Piece manga announced on Tuesday that the manga will go on hiatus for four weeks (from June 19 to July 10) from this year\'s 29th issue to 32nd issue of Weekly Shonen Jump magazine, due to Oda having surgery for astigmatism. The manga will return in the 33rd issue on July 18. The manga will still run in next week\'s 28th issue on June 12.', 'anime', 'trending', 1, 0),
(8, NULL, 'The Devil Is a Part-Timer!! Anime\'s Sequel Series Unveils More Cast, Songs, July 13 Debut in 2nd Video', 'res/news/maousama2_kv.jpg', 'The official website for The Devil Is a Part-Timer!! (with two exclamation points), the second anime based on Satoshi Wagahara\'s The Devil Is a Part-Timer!! light novel series, started streaming the sequel\'s second promotional video on Wednesday. The video previews the new anime\'s opening and ending theme songs and also announces three new cast members and its July 13 premiere.', 'anime', 'popular', 0, 1),
(9, NULL, 'Blue Lock Season 2: Everything we know so far', 'res/news/BL.png', 'Blue Lock has scored big with anime fans worldwide, even if the football team at the heart of this show aren\'t always as successful on the pitch. With thrilling matches and endless determination, fans are hoping Japan\'s national team will go into extra time with a second season of Blue Lock.', 'anime', 'trending', 1, 0),
(10, NULL, 'Masamune-kun\'s Revenge R Season\'s 2nd Video Previews Field Trip to France', 'res/news/masamune_news.jpg', 'The staff for the television anime of Hazuki Takeoka and Tiv\'s Masamune-kun\'s Revenge (Masamune-kun no Revenge) manga debuted the second promotional video for Masamune-kun\'s Revenge R (Masamune-kun no Revenge R), the show\'s second season, on Friday. The video previews the school field trip to France seen in the new season.', 'anime', 'hot', 1, 1),
(11, NULL, 'Bungo Stray Dogs Anime\'s 5th Season Reveals July 12 Debut in 2nd Promo Video', 'res/news/bod15.jpg', 'Kadokawa revealed on Thursday that the fifth season of the anime based on Kafka Asagiri and Sango Harukawa\'s Bungo Stray Dogs manga will premiere on July 12. The company is also streaming a second promotional video for the anime.', 'anime', 'trending', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `size_type` int(11) DEFAULT NULL,
  `tag` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `description`, `price`, `category_id`, `size_type`, `tag`, `sold`) VALUES
(1, 'SSSS.Dynazenon Mujina Non-Scale Figure', 'res/products/figures/figure1.png', 'From Union Creative comes a non-scale figure of Kaiju Eugenicist Mujina from SSSS.Dynazenon! Her original character art from the anime has been brought to life as a 10.6\" tall figure that captures her posing in her familiar outfit with a hand on her hip. ', 9999.00, 2, 1, NULL, 0),
(2, 'Moderoid SSSS.Dynazenon Dynazenon', 'res/products/figures/figure2.png', 'From Good Smile Company’s Moderoid line of plastic models that are fun to build and display comes the titular mech Dynazenon from the popular anime SSSS.Dynazenon! The model features seven color-separated runners and pre-painted parts, so it’ll look amazi', 9499.00, 2, 1, NULL, 0),
(3, 'Uchusen Bessatsu SSSS.Dynazenon', 'res/products/books/book1.png', 'From the tag team of Tsuburaya Productions and TRIGGER comes a mook that serves as the perfect compendium to their new generation robot anime SSSS.Dynazenon! Spanning 95 pages, Uchusen Bessatsu SSSS.Dynazenon features must-see content spanning the entire ', 500.00, 1, 1, NULL, 0),
(4, 'LISTEN FLAVOR Hatsune Miku Jersey Hoodie', 'res/products/clothes/clothes1.png', 'Introducing a collaboration between Harajuku fashion brand LISTEN FLAVOR and Vocaloid Hatsune Miku! Available in a unisex free size in either black or emerald, this 100% polyester hoodie has a two-tone design with turquoise accents, a double zipper up the', 1000.00, 3, 2, NULL, 0),
(5, 'Nendoroid Death Note L 2.0 (Re-run)', 'res/products/figures/figure3.png', 'The world-renowned detective in search of Kira returns to the world of Nendoroid!\r\nFrom the popular anime series Death Note comes L looking as disheveled and languid as ever in chibi form. An all-new updated version over the previous release, he comes wit', 2520.45, 2, 1, NULL, 0),
(6, 'To Love-Ru Darkness Tearju Lunatique: Swimsuit Ver', 'res/products/figures/figure4.png', 'Tearju is ready for a day at the beach in a tiny two-piece bikini!\r\nFrom the popular anime To Love-Ru Darkness comes a 1/4 scale figure of Tearju Lunatique in a bikini! Based on artwork by Kentaro Yabuki, sculptor Akabeko has faithfully captured all of Ma', 5850.69, 2, 1, NULL, 0),
(7, 'My Dress-Up Darling TV Anime Official Fan Book: Ki', 'res/products/books/book2.png', 'For those who consider Marin Kitagawa from the hit anime My Dress-Up Darling as their best girl comes the series’ first official fan book, and it’s dedicated to none other than the cosplay-loving gyaru herself! Published by Square Enix, included are tons ', 369.30, 1, 1, NULL, 1),
(8, 'Akebi\'s Sailor Uniform Vol. 1', 'res/products/books/book3.png', 'Komichi Akebi is a bright and outgoing girl living in the countryside who just got admitted to the prestigious girls’ school Roubai Private Academy, the alma mater of her favorite idol, Miki Fukumoto. Now her dream of getting to wear the school’s sailor u', 371.11, 1, 1, NULL, 0),
(9, 'Kabaneri of the Iron Fortress Key Animation Artwor', 'res/products/books/book4.png', 'Within this 224-page artbook is a huge but careful selection of key frames, copyrighted art, and more from the TV anime Kabaneri of the Iron Fortress. If this just isn\'t enough art to satisfy you, check out the Kabaneri of the Iron Fortress Official Visua', 1449.80, 1, 1, NULL, 0),
(10, 'hololive Collaboration Ookami Mio Model Glasses', 'res/products/clothes/clothes2.png', '\"Hellooowl! It’s Ookami Mio!\"\r\nFrom high quality glasses maker Shitsuji Megane Eye Mirror in collaboration with the popular VTuber group hololive production comes glasses inspired by gaming VTuber Ookami Mio! The glasses feature a stainless steel frame th', 6707.44, 3, 2, NULL, 0),
(11, '9FIFTY TOM x NEW ERA 7th Anniversary Cap', 'res/products/clothes/clothes3.png', 'The super popular world-famous street fashion brand NEW ERA has collaborated with TOM on this sleek black cap that features thick black embroidery of the TOM logo on the front along with a white logo design on the bottom of the bill. Get your hands on thi', 1687.62, 3, 2, NULL, 0),
(12, 'LISTEN FLAVOR x Danganronpa Nagito Komaeda\'s Madne', 'res/products/clothes/clothes4.png', 'Add some stylish Danganronpa flair to your look! Part of a collaboration between popular Japanese Harajuku fashion brand LISTEN FLAVOR and Danganronpa, this pullover hoodie features artwork of “Ultimate Lucky Student” Nagito Komaeda front and center looki', 2794.44, 3, 2, NULL, 0),
(13, 'Nendoroid Kaguya-sama: Love Is War -The First Kiss', 'res/products/figures/figure5.png', '\"Ideas without ideals are meaningless.\"\r\nFrom the anime movie Kaguya-sama: Love Is War -The First Kiss That Never Ends- comes a Nendoroid figure of Shuchi\'in Academy’s determined and somewhat overbearing student council auditor and member of the Public Mo', 2090.10, 2, 1, NULL, 0),
(14, 'Nendoroid Silent Hill 3 Robbie the Rabbit (Blue)', 'res/products/figures/figure6.png', 'Terror is unleashed in the Nendoroid series with this release of the homicidal mascot of Lakeside Amusement Park from the popular survival horror game Silent Hill 3, Robbie the Rabbit! Measuring 4.5\" tall, he looks just as unsettling as ever even in chibi', 1134.21, 2, 1, NULL, 0),
(15, 'Pop Up Parade Is It Wrong to Try to Pick Up Girls ', 'res/products/figures/figure7.png', 'From the fourth season of the popular anime Is It Wrong to Try to Pick Up Girls in a Dungeon? comes an affordable Pop Up Parade figure of the infamous Gale herself, Ryu Lion! The 6.9\" tall figure captures her in her familiar adventurer outfit looking calm', 1234.83, 2, 1, NULL, 0),
(16, 'ArtFX J Trigun Stampede Vash the Stampede', 'res/products/figures/figure8.png', 'From the popular anime Trigun Stampede comes a 1/8 scale ArtFX J figure of the “Humanoid Typhoon,” Vash the Stampede! Measuring 8.7\" tall, he is captured in a dynamic pose looking down the sights of his signature .45 Long Colt. Accurately detailed down to', 9334.74, 2, 1, NULL, 0),
(17, 'Pop Up Parade Another Mei Misaki', 'res/products/figures/figure9.png', 'From the popular mystery horror anime Another comes the mysterious Mei Misaki to join the Pop Up Parade line of affordable fixed pose figures with speedy releases! Sculpted by Manabu Kato at 6.9\" tall, Mei is captured in her Yomiyama North Middle School u', 1609.36, 2, 1, NULL, 0),
(18, 'Lycoris Recoil Takina Inoue 1/7 Scale Figure', 'res/products/figures/figure10.png', 'From the anime series \"Lyoris Recoil\" comes a 1/7 scale figure of Takina Inoue!\r\n\r\nThe figure features Takina quietly moving in tandem with Chisato and faithfully expresses her strong-willed personality.\r\n\r\nThe figure is made to be displayed with the sepa', 7121.10, 2, 1, NULL, 0),
(19, 'My Hero Academia Vol. 1', 'res/products/books/book5.png', 'In Kohei Horikoshi’s My Hero Academia, Izuku Midoriya is an ordinary middle school boy who dreams of becoming a superhero despite not having a \"Quirk\" or special power like most of the other kids. After standing up for a classmate, Izuku is rewarded with ', 264.97, 1, 1, NULL, 0),
(20, 'Given Vol. 1', 'res/products/books/book6.png', '“I want to sing more, by your side.”\r\nMafuyu is an aspiring guitarist and vocalist with an impressive singing voice, and Ritsuka is a high school dropout with an innate talent for the guitar. One day, Ritsuka comes across Mafuyu holding a broken guitar. R', 424.28, 1, 1, NULL, 0),
(21, 'Jujutsu Kaisen Vol. 1', 'res/products/books/book7.png', 'There exists in the world demons called Curses who feed on unsuspecting humans and search for fragments of the legendary demon Ryoumen Sukuna which are cursed items scattered around the world. Should a demon consume the fragments they would gain enough po', 583.60, 1, 1, NULL, 0),
(22, 'Toilet-bound Hanako-kun Vol. 1', 'res/products/books/book8.png', 'Kamome Academy is famous for its supernatural urban legends known as the Seven Mysteries, the most famous of which involves a ghost named Hanako, a girl who haunts the bathroom and can grant wishes for the right price. Nene Yashiro is a first-year student', 264.97, 1, 1, NULL, 0),
(23, 'Tokyo Ghoul 1', 'res/products/books/book9.png', 'The series is centered around “Ghouls,” individuals who can only survive by eating human flesh. Being ghouls grants them special abilities like heightened senses or regeneration. The protagonist, Ken Kaneki, is turned into a half-ghoul after a surgery and', 318.07, 1, 1, NULL, 0),
(24, 'Seraph of the End 8.5 Official Fan Book', 'res/products/books/book10.png', 'Everyone is familiar with the story of Sherlock Holmes - but what about his long-standing rival Moriarty? Moriarty the Patriot tells an equally compelling story with Moriarty as the protagonist, in London during the Golden Age of Britain. Rather than solv', 264.97, 1, 1, NULL, 0),
(25, 'Hatsune Miku Happy 16th Birthday Ver. Full Graphic', 'res/products/clothes/clothes5.png', 'Miku is turning sweet 16, and otaku apparel and lifestyle brand AMNIBUS is celebrating with this full graphic tote bag! The large cotton tote features an all-over print of the 16th anniversary main visual by illustrator Rella, making it a stylish item tha', 1385.76, 3, 2, NULL, 0),
(26, 'Chainsaw Man Denji\'s Cord Necklace', 'res/products/clothes/clothes6.png', 'From \"Chainsaw Man\" comes a necklace featuring a design based on Denji\'s cord.', 547.26, 3, 2, NULL, 0),
(27, 'Spice and Wolf Spice and Wolf Bathhouse Men\'s Polo', 'res/products/clothes/clothes7.png', 'From brand AMNIBUS by arma bianca comes a Spice and Wolf polo shirt perfect for everyday wear. Available in men’s S to 5L sizes, the black polo is made of a lightweight poly-cotton blend, features the logo of the Spice and Wolf bathhouse on the left chest', 1083.90, 3, 2, NULL, 0),
(28, 'Fate/Extella Link Robin Hood Model Collaboration G', 'res/products/clothes/clothes8.png', 'Summon some of the style of Robin Hood to your look with these Fate/Extella Link glasses from high quality eyewear brand Shitsuji Megane Eye Mirror! The glasses feature full-rimmed metal oval frames with details themed after Robin Hood, including the brow', 5511.18, 3, 2, NULL, 0),
(29, 'Golden Kamuy Opening/Ending Pattern Collared Shirt', 'res/products/clothes/clothes9.png', 'From \"Golden Kamuy\" comes a collared shirt with a full-shirt pattern featuring stills from the series\' opening and ending sequences!', 3700.02, 3, 2, NULL, 0),
(30, 'Love Live! Nijigasaki High School Idol Club Nijiga', 'res/products/clothes/clothes10.png', 'Whether at an event, concert, or on a daily outing, be sure to support the girls of Nijigaku with this square backpack! From the official Love Live! Nijigasaki High School Idol Club online store, the Nijigasaki High School Store, this black backpack is em', 4253.43, 3, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_genre`
--

CREATE TABLE `product_genre` (
  `product_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_genre`
--

INSERT INTO `product_genre` (`product_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 7),
(2, 1),
(2, 2),
(2, 7),
(3, 1),
(3, 2),
(3, 7),
(4, 5),
(5, 1),
(5, 4),
(5, 5),
(5, 6),
(6, 2),
(6, 3),
(6, 7),
(7, 3),
(7, 4),
(7, 7),
(8, 4),
(9, 2),
(9, 5),
(9, 8),
(10, 5),
(11, 2),
(11, 5),
(12, 2),
(12, 4),
(12, 6),
(13, 3),
(13, 4),
(13, 7),
(14, 2),
(14, 6),
(15, 1),
(15, 2),
(15, 5),
(16, 1),
(16, 2),
(17, 2),
(17, 4),
(17, 6),
(18, 2),
(18, 5),
(18, 7),
(19, 2),
(20, 4),
(20, 7),
(21, 2),
(21, 6),
(22, 3),
(22, 6),
(23, 2),
(23, 6),
(24, 1),
(24, 2),
(25, 5),
(26, 2),
(26, 3),
(26, 6),
(27, 4),
(27, 5),
(27, 7),
(28, 2),
(28, 4),
(28, 7),
(29, 1),
(29, 2),
(29, 5),
(30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(1) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `product_id`, `user_id`, `rating`, `comment`) VALUES
(1, 1, 1, 4, 'Great product! Highly recommended.'),
(2, 2, 2, 4, 'Decent quality, but could be better.'),
(3, 1, 3, 5, 'Excellent product. I love it!'),
(4, 3, 4, 4, 'Good value for the price.'),
(5, 2, 1, 4, 'Satisfied with the purchase.'),
(6, 3, 3, 4, 'Average product, nothing special.'),
(7, 4, 1, 5, 'Eut gid ba'),
(9, 4, 3, 5, NULL),
(43, 3, 1, 5, 'Hype'),
(51, 3, 1, 5, 'Pain'),
(64, 4, 1, 5, 'Snug fit me likey'),
(66, 18, 1, 5, 'This adorable anime girl figure is an absolute must-have for any otaku! With its vibrant colors, detailed sculpting, and kawaii expression, it\'s pure eye candy. The quality is top-notch, and it comes with interchangeable accessories. Display it proudly and prepare for an overload of cuteness!\r\n\r\n'),
(68, 7, 1, 5, 'The quality of Dress-up Darling manga is top-notch both in terms of content and print. The pages are printed on high-quality paper that enhances the vibrant illustrations and colors. The attention to detail in the artwork is remarkable, with crisp lines and rich shading. The book feels sturdy and durable, making it perfect for multiple reads without worrying about wear and tear. It\'s a true delight for manga lovers who appreciate both visual aesthetics and lasting quality.');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `search_id` int(11) NOT NULL,
  `search` varchar(255) NOT NULL,
  `search_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`search_id`, `search`, `search_date`) VALUES
(1, 'ha', '2023-06-07 09:25:13'),
(2, 'ha', '2023-06-07 09:25:21'),
(3, 'as', '2023-06-07 09:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_type` int(11) NOT NULL,
  `size_option` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_type`, `size_option`) VALUES
(1, 'one-size'),
(2, 'extra-large'),
(2, 'large'),
(2, 'medium'),
(2, 'small');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`) VALUES
(1, 'JohnDoe', 'johndoe@example.com'),
(2, 'JaneSmith', 'janesmith@example.com'),
(3, 'DavidBrown', 'davidbrown@example.com'),
(4, 'EmilyJohnson', 'emilyjohnson@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `variation`
--

CREATE TABLE `variation` (
  `variation_type` int(11) NOT NULL,
  `variation_option` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wish_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `product_id`, `wish_date`) VALUES
(3, 1, 1, '2023-05-29 06:52:01'),
(11, 1, 4, '2023-05-25 06:52:37'),
(17, 1, 2, '2023-05-27 06:08:45'),
(19, 1, 7, '2023-05-16 06:54:04'),
(24, 1, 12, '2023-05-28 06:54:47'),
(31, 1, 18, '2023-05-11 09:38:32'),
(34, 1, 21, '2023-05-20 13:41:02'),
(35, 1, 22, '2023-05-27 13:41:02'),
(40, 1, 27, '2023-05-16 14:01:23'),
(42, 1, 29, '2023-05-27 14:01:23'),
(45, 1, 13, '2023-06-01 03:24:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `delivered`
--
ALTER TABLE `delivered`
  ADD PRIMARY KEY (`delivered_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_genre`
--
ALTER TABLE `product_genre`
  ADD PRIMARY KEY (`product_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`search_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_type`,`size_option`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `variation`
--
ALTER TABLE `variation`
  ADD PRIMARY KEY (`variation_type`,`variation_option`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `delivered`
--
ALTER TABLE `delivered`
  MODIFY `delivered_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_genre`
--
ALTER TABLE `product_genre`
  ADD CONSTRAINT `product_genre_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `product_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
