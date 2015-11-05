-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2015 at 07:39 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dalda`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `trick` text NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `votes` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `trick`, `image_url`, `status`, `create_date`, `name`, `email`, `phone_number`, `gender`, `city`, `address`, `votes`) VALUES
(1, 'Apple Pie', 'Let make an apple pie.', 'uploads/1445869671.jpg', 1, '2015-10-29 16:33:32', 'Syed Taqiuddin', '', '', '', '', '', 5),
(2, 'Preserve Herbs', 'Preserve summer herbs by freezing them in olive oil', 'uploads/1445869982.png', 1, '2015-10-29 16:33:37', 'Mohsin', 'asd@sad.asd', '123', 'Male', '1', 'adss', 6),
(3, 'Car Cleaning', 'How to Clean your car', 'uploads/1445870034.jpg', 1, '2015-10-30 08:05:48', 'Syed Taqiuddin', 'taqi@hotmail.com', '03228708718', 'Female', '2', 'My Address', 10),
(4, 'Use old jar as an icecream container', 'Almost finished your jar of Nutella ? End it with ice cream.', 'uploads/1445870211.jpg', 1, '2015-10-27 11:38:47', 'Taqi', '', '', 'Male', '1', '', 3),
(5, 'Remove stems easily', 'to remove the stem from strawberries use a straw.', 'uploads/1445870474.jpg', 1, '2015-10-29 16:27:07', 'hassan', 'asd@sad.asd', '123', 'Male', '1', 'adss', 3),
(6, 'Title of Trick', 'Trick details', 'uploads/1445872048.jpg', 1, '2015-10-29 16:37:24', 'Muhammad minhas', 'mohdminhas@hotmail.com', '03228708718', 'Male', '1', 'PECHS block 3', 8),
(7, 'My first dalda home convenience trick', 'Hello this is my first dalda convenience trick that i am ', 'uploads/1445873532.jpg', 1, '2015-10-29 16:11:42', 'Shoaib Ali Zahid', 'saz2k45@hotmail.com', '923333038454', 'Male', 'Upper Dir', 'house No 78 dha Phase 7 DHA Karachi', 6),
(8, 'asdasd', 'asdasd', 'uploads/fallBackImage.jpg', 1, '2015-10-29 16:03:20', '', '', '', '', '', '', 2),
(9, 'asd asd asd', 'as dasd asd', 'uploads/fallBackImage.jpg', 1, '2015-10-29 16:03:16', '', '', '', '', '', '', 3),
(10, 'Title back image', 'fall back image', 'uploads/fallBackImage.jpg', 1, '2015-10-30 08:05:51', 'fall back image', 'a@hotmail.com', '03228708718', 'Male', '1', 'fall back image', 11),
(11, 'asaasd', 'asdasd', 'uploads/fallBackImage.jpg', 1, '2015-10-29 16:03:10', 'addasd', 'mohdminhas@hotmail.com', '03228708718', 'Male', '3', 'asdasd', 3),
(12, 'asdas dasd asd asd', 'Melt 3 tbsp of the butter in a large skillet over medium heat. Add onion and cook, stirring, 3 minutes. Stir in garlic; cook 2 minutes. Add wine and farro; cook 1 minute or until most of the wine evaporates. Transfer to slow cooker.\r\n2. \r\nStir in vegetable stock, pumpkin, 4 tbsp of the Parmesan and the sage. Cover and cook on HIGH for 4 hours. Uncover and gently stir in peas, remaining 1 tbsp butter, the salt and pepper. Spoon into bowls and top with walnuts and remaining 2 tbsp Parmesan.\r\nTip\r\nFor easy cleanup:\r\nLine your slow cooker with a disposable slow cooker liner. Add ingredients as directed in recipe. Once your dish is finished cooking, spoon the food out of your slow cooker and simply dispose of the liner. Do not lift or transport the disposable liner with food inside.\r\n\r\nNUTRITION INFORMATION\r\n\r\nPer Serving: cal. (kcal) 436, Fat, total (g) 17, chol. (mg) 24, sat. fat (g) 6, carb. (g) 55, fiber (g) 14, pro. (g) 16, sodium (mg) 663, Percent Daily Values are based on a 2,000 calorie diet', 'uploads/1445888952.jpg', 1, '2015-10-30 08:05:47', 'Muhammad minhas', 'mohdminhas@hotmail.com', '03228708718', 'Male', '1', 'asdasd asd asd asd asd \r\nasd\r\n as\r\nd\r\na \r\nad \r\na', 13),
(13, 'youtuber with dalda makig mixcindffdfdf', 'bggfgfgfgfgfgf bbgfgfg tyertrt juyjrtr jyjjhv bnbnvb vcvcv', 'uploads/1445941860.jpg', 1, '2015-10-29 16:02:50', '52382828', 'vfdvfvfd@hotmail.com', '21214747', 'Male', 'Karachi', 'frfrferfrfre', 3),
(14, 'youtuber with dalda makig mixcindffdfdf', 'bggfgfgfgfgfgf bbgfgfg tyertrt juyjrtr jyjjhv bnbnvb vcvcv', 'uploads/1445942025.jpg', 1, '2015-10-29 16:03:05', '52382828', 'vfdvfvfd@hotmail.com', '21214747', 'Male', 'Karachi', 'frfrferfrfre', 4),
(15, 'youtuber with dalda makig mixcindffdfdf', 'bggfgfgfgfgfgf bbgfgfg tyertrt juyjrtr jyjjhv bnbnvb vcvcv', 'uploads/1445942090.jpg', 1, '2015-10-29 16:02:58', '52382828', 'vfdvfvfd@hotmail.com', '21214747', 'Male', 'Karachi', 'frfrferfrfre', 6),
(16, 'dsfsdfsdf fsdfsdf fdfsdf fdfsdfsdfs', 'fdfsdf kgjrr rter hfghf fgdgdgdgf fdfdgfdg hrewwasacxcxv', 'uploads/1445942597.jpg', 1, '2015-10-29 16:02:19', '57855852288228528288', 'ayesha@hotmail.com', '03148576523', 'Female', 'Abbottabad', 'cvvcvcvxvv', 6),
(17, 'vvxvxcvxcvxcvcxvxcvx', 'bvfbfbfb   gfbfgfgbf bfbffd ewrerrer utyytt ikm', 'uploads/fallBackImage.jpg', 1, '2015-10-29 16:02:26', '', '', '', '', '', '', 5),
(18, 'Gcgcfcgchvhcgxfxrxgchvjbjb', 'Bvbv god hvhctf hvjjujggffghhhfff', 'uploads/1445943316.jpg', 1, '2015-10-30 08:05:40', 'Chcfxghvvgv', 'Ali@hotmail.com', '031245767654', 'Male', 'Malakand', 'Foggy hvhctf hvvhvh hvhvhv', 7),
(19, 'Gcgcfcgchvhcgxfxrxgchvjbjb', 'Bvbv god hvhctf hvjjujggffghhhfff', 'uploads/1445943690.jpg', 1, '2015-10-30 08:05:37', 'Chcfxghvvgv', 'Ali@hotmail.com', '031245767654', 'Male', 'Malakand', 'Foggy hvhctf hvvhvh hvhvhv', 5),
(20, 'Vggvvgv highs hbhvhg hbhvhg hvhghvh', 'Vggvvgv hbjbjhjnkjggffg hvhghvh hbhvhg', 'uploads/1445944032.jpg', 1, '2015-10-29 16:24:31', 'Vbhvhvhvgvgv', 'Shabir@hotmail.com', '03246554378', 'Male', 'Shahbandar', 'Vvxsfggjug jhghijg', 4),
(21, 'Vggvvgv highs hbhvhg hbhvhg hvhghvh', 'Vggvvgv hbjbjhjnkjggffg hvhghvh hbhvhg', 'uploads/1445944398.jpg', 1, '2015-10-29 16:24:10', 'Vbhvhvhvgvgv', 'Shabir@hotmail.com', '03246554378', 'Male', 'Shahbandar', 'Vvxsfggjug jhghijg', 6),
(22, 'Vggvvgv highs hbhvhg hbhvhg hvhghvh', 'Vggvvgv hbjbjhjnkjggffg hvhghvh hbhvhg', 'uploads/1445944473.jpg', 1, '2015-10-29 16:44:44', 'Vbhvhvhvgvgv', 'Shabir@hotmail.com', '03246554378', 'Male', 'Shahbandar', 'Vvxsfggjug jhghijg', 7),
(23, 'Jbhvhghvhghvhvhv hbhvgvgcc hvhvhvh', 'Hvhvhvh b. Hvhvhvh hghghb', 'uploads/1445944930.jpg', 1, '2015-10-29 16:44:46', 'Hvhvgvgcgcgc', 'Fgcgghghb@gmail.com', '03452346787', 'Male', 'Abbottabad', 'Hbhvhg knobs gcggc', 9),
(24, 'Hgffvvvvvvg', 'Hgffhhcv', 'uploads/1445945500.jpg', 1, '2015-10-29 15:59:56', '', '', '', '', '', '', 7),
(25, 'Jgcjnbcvcdfgyjjjbvvcfgfffhbbbn', 'Bc bhnnnn bccfjnnbxxc bbcchjknnbb', 'uploads/1445946641.jpg', 0, '2015-10-27 11:54:07', '6532259976544', 'Cdfhjgg@hotmail.com', '03457865433', 'Male', 'Mardan', 'Ghhghvchcfffcff nvcghh', 0),
(26, 'Bhcxcvbnnbvcv', 'Bvc bccbbnnnb cccv', 'uploads/1445947143.jpg', 0, '2015-10-27 11:59:56', 'Aamir', 'Aamir@hotmail.com', '5435677898', 'Male', 'Chichawatni', 'Hhhhg Hhg jhhhghhv bf', 0),
(27, 'bfgfgggggggggggggggggggggggggrhtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 'nbnbvnvn bnghgh jjjhj nghghgf ghgfhfh nbnbnm  bvnnv nvbn jyj nhgjh', 'uploads/1445947970.jpg', 0, '2015-10-27 12:14:51', 'mohsan', 'mohsan@hotmail.com', '03335248785', 'Male', 'Korangi', 'ghfghfgh ngjhjh jjhjg tyytyyyytr hytytyy', 0),
(28, 'bfgfgggggggggggggggggggggggggrhtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 'nbnbvnvn bnghgh jjjhj nghghgf ghgfhfh nbnbnm  bvnnv nvbn jyj nhgjh', 'uploads/1445948135.jpg', 0, '2015-10-27 12:15:38', 'mohsan', 'mohsan@hotmail.com', '03335248785', 'Male', 'Abbottabad', 'ghfghfgh ngjhjh jjhjg tyytyyyytr hytytyy', 0),
(29, 'bvcvbcbcbvb dfhdfggfgdf hdfgfgdfgf gdfgdfgd', 'gdfgdfgdg dfgfgfdgd dfgfdgfdgd fdfdgddfgdgfd', 'uploads/1445948444.jpg', 0, '2015-10-27 12:21:39', 'jamil', 'jamil@yahoo.com', '03108576985', 'Male', 'Bahawalnagar', 'fgdgd bbgb ghghfhfd nvbncvbvcvbncv bnvcnbnv vncbnv nvnhjy ujukiiki', 0),
(30, 'Hdhgxgjjdvbcvcxvbx', 'Hcbcbbccjcvvvcccccfvbvfgggg hgffhhcv hcfgghhgg', 'uploads/1445949077.jpg', 0, '2015-10-27 12:33:47', 'Rizwan', 'SardarRizwan56@Hotmail.com', '03465787597', 'Male', 'Abbottabad', 'Hcbcbbccjcvvvcccccfvbvfgggg hgffhhcv hgffhhcv hgffhhcv hgffhhcv', 0),
(31, 'dsadsad', 'dsaasda', 'uploads/fallBackImage.jpg', 0, '2015-10-27 12:44:15', '', '', '', '', '', '', 0),
(32, 'Chicken Tikka', 'Ingredients\r1) Boneless and skinless chicken breasts \r2) 2 tbsp Tomato paste \r3) 2 tbsp Lemon juice \r4) 2 tsp Ground coriander \r5) 2 tsp Curry powder \r6) 1/2 tsp Paprika \r7) 2 Cups plain yoghurt \r8) 4 Finely chopped garlic cloves \r9) 1 Inch fresh ginger, chopped \r10) 2 tsp Ground cumin\r\rMethod\r1. Mix all ingredients except chicken together in a bowl and refrigerate it overnight. \r2. Add chicken (cut in cubes) and marinate it in the above-mentioned bowl. \r3. Cover and refrigerate at least 4 hours. \r4. Preheat oven to 350 degrees F. \r5. Bring chicken to room temperature and skewer on bamboo skewers (soaked in water for 30 minutes). \r6. Place on baking tray and bake in oven for 20 to 35 minutes. \r7. 3 tbsp of butter can be drizzled over for the last 5 minutes of cooking.', 'uploads/fallBackImage.jpg', 0, '2015-10-27 14:07:19', 'Noman', 'nomilogic@gmail.com', '321443423432432', 'Male', 'Karachi', 'S Apartement Flat # 123, \rClifton', 0),
(33, 'football image', 'dfjgkdgfg gfgdfg  gdfgjkkkcbfdggd', 'uploads/1445955198.jpg', 0, '2015-10-27 14:16:41', 'Sardar rizwan', 'rizwan@gmail.com', '2525727275272', 'Male', 'Tando Adam', 'bfgf jjsf jhfsdjsf  dfjhsdf', 0),
(34, 'sample dish', 'lklasdfjlasdkfj \rlkasdjflkasdfljkads\rlaksdjlaskdflaksjd\rlaksdjlasksjladf\rlkasdlaksjdf', 'uploads/fallBackImage.jpg', 0, '2015-10-27 14:17:19', 'ibrez', 'ibreznaved@hotmail.com', '334453453453453', 'Male', 'Dera Ghazi Khan', 'asdf', 0),
(35, 'asdfasdf', 'sadfasdfsadf', 'uploads/1445955561.com-4(07-26-15-20-31)', 0, '2015-10-27 14:20:10', 'asdfasd', 'asdfasdfsdf@sdf.com', '1234567894654', 'Male', 'Karachi', 'asdfsadfsdf', 0),
(36, 'Youtube', 'vsvv dfgdgfd bbgerger', 'uploads/1445955911.jpg', 0, '2015-10-27 14:25:54', 'muhammad rizwan', 'rizwan@gmail.com', '0345879625', 'Male', 'Bagh', 'gdfgdf fgghh ggf', 0),
(37, 'Hello', 'adsfsafdsaf', 'uploads/1446119204.jpg', 1, '2015-10-29 16:45:33', 'Arham', 'arham@gmail.com', '03452837803', 'Male', 'Karachi', 'gfdsgdsgsgdsg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
`id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `processed` int(1) NOT NULL DEFAULT '0',
  `trick_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_agent`, `processed`, `trick_id`) VALUES
(1, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 37),
(2, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 19),
(3, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 18),
(4, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 12),
(5, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 3),
(6, 'cb237e0676fdf6cce24d68a39eece2d5', 0, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
