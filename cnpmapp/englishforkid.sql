-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 04, 2023 lúc 04:37 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `englishforkid`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accountuser`
--

CREATE TABLE `accountuser` (
  `ID` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accountuser`
--

INSERT INTO `accountuser` (`ID`, `username`, `password`, `score`) VALUES
(1, 'admin', '123456', 0),
(10, 'test2', 'hoang123', 0),
(11, 'hoangcmbk', 'hoang123', 0),
(14, 'hoangcmbk2', 'hoang123', 0),
(15, 'ngocictu', '12345', 0),
(16, 'hoangcmbk1', 'hoang123', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newword`
--

CREATE TABLE `newword` (
  `IDword` int(11) NOT NULL,
  `word` varchar(50) NOT NULL,
  `definition` varchar(150) DEFAULT NULL,
  `vietnam` varchar(50) DEFAULT NULL,
  `example` varchar(100) DEFAULT NULL,
  `imagePath` varchar(200) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `newword`
--

INSERT INTO `newword` (`IDword`, `word`, `definition`, `vietnam`, `example`, `imagePath`, `ID`) VALUES
(2, 'hello', '\"Hello!\" or an equivalent greeting.', '', '', '', 11),
(3, 'dog', '', 'chooo', 'jjsadj', '/data/user/0/com.example.cnpmapp/cache/image_picker8841857793985963857.jpg', 11),
(4, 'what', '(Singlish) Used to contradict an underlying assumption held by the interlocutor.', '', '', '', 11),
(5, 'no', 'A negating expression; an answer that shows disagreement or disapproval', '', '', '', 11),
(6, 'hello', '\"Hello!\" or an equivalent greeting.', '', '', '', 15),
(7, 'dog', '', 'chó', 'Ngoc is not a dog', '/data/user/0/com.example.cnpmapp/cache/4bea51de-60e9-4a3a-90c6-ee3b39cfdc267744750866552264651.jpg', 15),
(8, 'television', '', 'TI VI', 'television is not ...', '/data/user/0/com.example.cnpmapp/cache/67c7d7ac-2f24-4a74-bea7-7cfbac6056242357226930794745468.jpg', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz`
--

CREATE TABLE `quiz` (
  `ID` int(11) NOT NULL,
  `qTopic` varchar(50) NOT NULL,
  `content` varchar(300) NOT NULL,
  `answer` varchar(1) NOT NULL,
  `a` varchar(200) NOT NULL,
  `b` varchar(200) NOT NULL,
  `c` varchar(200) NOT NULL,
  `d` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quiz`
--

INSERT INTO `quiz` (`ID`, `qTopic`, `content`, `answer`, `a`, `b`, `c`, `d`) VALUES
(1, 'Animal', 'What word is correct?', 'B', 'HOCSE', 'HOUSE', 'HUNISE', 'HOUURS'),
(2, 'Animal', 'What is the biggest animal in land?', 'C', 'Dog', 'Chicken', 'Elephant', 'Whale'),
(3, 'Car', 'What is the famous car company in Viet Nam?', 'D', 'Cambri', 'Yamaha', 'Ford', 'VinFast'),
(4, 'Animal', 'Which animal is the king of the jungle?', 'A', 'Tiger', 'Pig', 'Fish', 'Cat'),
(5, 'Animal', 'How many legs does the dog have', 'A', '4', '2', '6', '12'),
(6, 'Animal', 'What animal has 300 teeth', 'B', 'Snake', 'Leeches', 'Bird', 'Mouse'),
(7, 'Animal', 'What color are Giraffes’ tongues', 'D', 'Red', 'Brown', 'White', 'Dark Purple'),
(8, 'Animal', 'In what part of a shrimp’s body is his heart ?', 'A', 'In the head', 'Tail', 'Body', 'Eye'),
(9, 'Car', 'In what year was the first car produced?', 'B', '1890', '1886', '2020', '1995'),
(10, 'Car', 'What is the name of a famous car company?', 'D', 'Apple', 'Carlsberg Group', 'Windows', 'Lamborghini'),
(11, 'Car', 'What is the famous car company in Germany?', 'C', 'Toyota', 'Hyundai', 'Mercedes-Benz', 'Ford'),
(12, 'Car', 'Which car has the most wheels?', 'D', 'Broken car', '\r\nBicycle', 'Motobike', 'Bakery car'),
(13, 'Car', 'What are auto parts?', 'B', 'Lighter', 'Steering wheel', '\r\nBough', '\r\nCandy'),
(14, 'Room', '\r\nWhat room is used for cooking?', 'B', 'Bedroom', 'Kitchen', 'Bathroom', 'Toilet'),
(15, 'Room', 'Which room is used to receive guests?', 'A', 'Living room', 'Toilet', 'Terrace', 'Kitchen'),
(16, 'Room', 'Which room is used to sleep?', 'A', 'Bedroom', 'Kitchen', 'Livingroom', 'Roommate'),
(17, 'Room', '\r\nIn which room do we exercise?', 'C', 'Kitchen', 'Bedroom', 'Gym', 'Classroom'),
(18, 'Room', '\r\nWhich room do we study in?', 'D', 'Toilet', 'Kitchen', 'Bathroom', 'Classroom'),
(19, 'Room', 'How is the room written correctly?', 'B', 'Zoom', 'Room', 'Rum', 'Rom'),
(20, 'People', 'How many hearts do people have?', 'A', '1', '2', '3', '1,5'),
(21, 'People', 'How many eyes do humans have?', 'B', '1', '2', '4', '6'),
(22, 'People', 'How many teeth does an adult have?', 'C', '12', '9', '32', '100'),
(23, 'People', 'When can humans fly like birds?\r\n', 'D', 'When you know how to walk', '2 years later', 'A and B are both correct', 'Never'),
(24, 'People', 'What body part do people use to walk?', 'A', 'Feet', 'Head', 'Eye', 'Teeth'),
(25, 'People', 'What is the ancestor of mankind?', 'C', 'Rock', 'Tree', 'Gibbon', '\r\nPig'),
(26, 'People', 'What color is human blood?', 'B', 'Black', 'Red', 'White', 'Blue'),
(27, 'Tree', 'Which flower is the symbol of Korea?', 'A', 'Hibiscus syriacus', '\r\nRose', 'Cherry blossom', 'Apricot flower'),
(28, 'Tree', 'What flowers are hung on Vietnamese traditional New Year\'s Day?', 'D', 'Jasmine', 'Grapefruit blossom', 'Confetti', 'Peach blossom'),
(29, 'Tree', 'What trees have ghosts?', 'A', 'Banyan Tree', 'ATM', 'Orchid', 'Flower tree'),
(30, 'Tree', 'What is the largest tree in the world?', 'B', 'Tikilazada', 'General Sherman', 'Florentino', 'Thongnhat'),
(31, 'Tree', 'What is the name of the tallest tree in the world?', 'A', 'Hyperion', 'Nike', 'Bubchen', 'HoangATuan'),
(32, 'Tree', 'Can a tree move on its own?', 'D', 'Sometime', 'Yes', 'Answer A is correct', 'Never'),
(33, 'Work', 'What job requires you to drive a car all day?', 'C', 'Football player', 'Singer', 'Do homework', 'Taxi'),
(34, 'Work', 'What profession can know the health of others?', 'D', 'Teacher', 'Engineer', 'Police', 'Doctor'),
(35, 'Work', 'What job keeps the country peaceful?', 'A', 'Police', 'Teacher', 'Gamer', 'Driver'),
(36, 'Work', 'Which job specializes in extinguishing fires?', 'D', 'Teacher', 'Student', 'Singer', 'Fire fighting'),
(37, 'Work', 'What is the teacher\'s job?', 'B', 'Dancing', 'Teaching', 'Build an apartment', 'Gaming'),
(38, 'Work', 'What is the job of the army uncle?', 'C', 'Slacker', 'Sing', 'Protect the country', 'Dance'),
(39, 'Animal', 'What is the dog say', 'A', 'gau gau', 'ec ec', 'he he', 'Hu hu'),
(40, 'Room', 'How much does a table', 'C', '999999$', '1$', '12$', '33333$');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `ID` int(11) NOT NULL,
  `qTopic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`ID`, `qTopic`) VALUES
(1, 'House'),
(2, 'School');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
--

CREATE TABLE `word` (
  `IDw` int(11) NOT NULL,
  `word` varchar(20) NOT NULL,
  `vietnam` varchar(25) NOT NULL,
  `url_image` varchar(200) NOT NULL,
  `url_audio` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL,
  `topic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `word`
--

INSERT INTO `word` (`IDw`, `word`, `vietnam`, `url_image`, `url_audio`, `description`, `topic`) VALUES
(1, 'A', 'A', 'https://salt.tikicdn.com/media/catalog/product/v/d/vd1.u2769.d20170306.t110554.436716.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/a-1-us.mp3', 'Chữ cái A', 'Alphabet'),
(2, 'B', 'B', 'https://e4life.vn/wp-content/uploads/2021/08/tieng-anh-bat-dau-bang-chu-b.jpg', '', 'Chữ cái B (bờ)', 'Alphabet'),
(3, 'C', 'C', 'https://png.pngtree.com/png-clipart/20200721/original/pngtree-alphabatical-icon-of-c-png-image_4832808.jpg', '', 'Chữ cái C (cờ)', 'Alphabet'),
(4, 'D', 'D', 'https://cf.shopee.vn/file/21a0dfeb6b0b330ad659a47db7b59fbd', '', 'Chữ cái D (Đờ)', 'Alphabet'),
(5, 'E', 'E', 'https://teachvn.com/image/cache/catalog/GAMN/giao-mam-non-linh-vuc-phat-trien-ngon-ngu-lam-quen-chu-cai-e-e-600x400.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/e-uk.mp3', 'Chữ cái E ', 'Alphabet'),
(6, 'F', 'F', 'https://e4life.vn/wp-content/uploads/2021/09/tieng-anh-bat-dau-bang-chu-f.jpg', '', 'Chữ cái F', 'Alphabet'),
(7, 'G', 'G', 'https://png.pngtree.com/png-clipart/20200721/original/pngtree-alphabatical-icon-of-g-png-image_4832810.jpg', '', 'Chữ cái G (gờ)', 'Alphabet'),
(8, 'H', 'H', 'https://png.pngtree.com/png-clipart/20200721/original/pngtree-alphabatical-icon-of-h-png-image_4848972.jpg', '', 'Chữ cái H (hờ)', 'Alphabet'),
(9, 'I', 'I', 'https://tamnghiem.com/wp-content/uploads/2016/06/bo-flashcard-chu-cai-i.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/i-1-us.mp3', 'Chữ cái I', 'Alphabet'),
(10, 'K', 'K', 'https://banner2.cleanpng.com/20180418/llq/kisspng-letter-k-alphabet-abjad-word-5ad7b127893013.4762741715240850315619.jpg', '', 'Chứ cái K (ca)', 'Alphabet'),
(11, 'L', 'L', 'https://png.pngtree.com/png-clipart/20210121/ourlarge/pngtree-alphabet-l-png-image_2776411.jpg', '', 'Chữ cái L (lờ)', 'Alphabet'),
(12, 'M', 'M', 'https://tamnghiem.com/wp-content/uploads/2016/06/flashcard-chu-M.jpg', '', 'Chữ cái M (mờ)', 'Alphabet'),
(13, 'N', 'N', 'https://tamnghiem.com/wp-content/uploads/2016/06/flashcard-chu-N.jpg', '', 'Chữ cái N (nờ)', 'Alphabet'),
(14, 'O', 'O', 'https://png.pngtree.com/png-clipart/20200721/original/pngtree-alphabatical-icon-of-o-png-image_4832812.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/o-1-uk.mp3', 'Chữ cái O ', 'Alphabet'),
(15, 'P', 'P', 'https://img.lovepik.com/element/40113/0415.png_860.png', 'https://api.dictionaryapi.dev/media/pronunciations/en/p-2-us.mp3', 'Chữ cái P(pờ)', 'Alphabet'),
(16, 'Q', 'Q', 'https://tamnghiem.com/wp-content/uploads/2016/06/flashcard-chu-q.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/q-uk.mp3', 'Chữ cái Q (quờ)', 'Alphabet'),
(17, 'R', 'R', 'https://png.pngtree.com/png-clipart/20200721/original/pngtree-alphabatical-icon-of-r-png-image_4832814.jpg', '', 'Chữ cái R (rờ)', 'Alphabet'),
(18, 'S', 'S', 'https://i.ytimg.com/vi/VadaINozc9U/maxresdefault.jpg', '', 'Chữ cái S (ét)', 'Alphabet'),
(19, 'T', 'T', 'https://tamnghiem.com/wp-content/uploads/2016/06/flashcard-chu-t.jpg', '', 'Chữ cái T (tờ)', 'Alphabet'),
(20, 'U', 'U', 'https://tamnghiem.com/wp-content/uploads/2016/06/flashcard-chu-u.jpg', '', 'Chữ cái U', 'Alphabet'),
(21, 'V', 'V', 'https://genk.mediacdn.vn/k:thumb_w/640/2015/1-verily-cropped-1449570463573/google-alphabet-co-them-mot-chu-v-moi-trong-bang-chu-cai.jpg', '', 'Chữ cái V (vờ)', 'Alphabet'),
(22, 'W', 'W', 'https://img.lovepik.com/freepng/19/28/49/21H58PICH93fe4x21v2NM_PIC2018.png_wh860.png', '', 'Chữ cái W (đáp liu)', 'Alphabet'),
(23, 'X', 'X', 'https://img.lovepik.com/element/40113/0707.png_860.png', '', 'Chữ cái X (xờ)', 'Alphabet'),
(24, 'Y', 'Y', 'https://i.ytimg.com/vi/h0Ry1V6GS4U/hqdefault.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/y-us.mp3', 'Chữ cái Y ', 'Alphabet'),
(25, 'Z', 'Z', 'https://cdn.pixabay.com/photo/2015/11/06/12/42/z-1027224__340.jpg', '', 'Chữ cái Z ( dét)', 'Alphabet'),
(26, 'Orange', 'Quả cam', 'https://dacsancamvinh.net/wp-content/uploads/2015/06/cong-dung-qua-cam.jpg', '', 'Quả có màu cam , vị chua , khi chín có vị ngọt', 'Fruits'),
(27, 'Apple', 'Quả táo', 'https://trungtamtienghan.edu.vn/uploads/blog/2019_07/cach-noi-qua-tao-bang-tieng-han_1.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/apple-uk.mp3', 'Loại quả có vị ngọt , Loại quả mà công chúa trong truyện 7 chú lùn ăn ', 'Fruits'),
(28, 'Banana', 'Quả chuối', 'https://gocyeube.com/wp-content/uploads/2022/10/hinh-nen-qua-chuoi-cute-3-min.jpg?fbclid=IwAR1zB9Y0f3KhYfq5Be_7E2jGJK3bm7o2B_ha80LjKfgWOiQTn2c9FExJz7g', 'https://api.dictionaryapi.dev/media/pronunciations/en/banana-us.mp3', 'Loại quả dài dài khi chín có màu vàng,ăn rất thơm và ngọt', 'Fruits'),
(29, 'Grapefruit', 'Quả bưởi', 'https://www.latraspa.com/wp-content/uploads/2019/06/cach-giam-can-tu-buoi-2.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/grapefruit-us.mp3', 'Loại quả có các múi và tép , ăn có vị chua và ngọt khi chín', 'Fruits'),
(30, 'Pineapple', ' Quả dứa', 'https://file.hstatic.net/1000303672/file/pineapple_70e32d95d25b45ba856db5d58ff5bf5e_1024x1024.png', 'https://api.dictionaryapi.dev/media/pronunciations/en/pineapple-us.mp3', 'Loại quả có mắt và tỏa ra mùi rất thơm , có vị ngọt', 'Fruits'),
(31, 'Peach', 'Quả đào', 'https://suckhoedoisong.qltns.mediacdn.vn/Images/duylinh/2020/05/14/dao_2_resize.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/peach-us.mp3', 'Loại quả mà Tôn Ngộ Không rất thích ăn', 'Fruits'),
(32, 'Papaya', 'Quả đu đủ', 'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2022/4/5/du-du-giup-vong-1-tro-nen-quyen-ru-11-1649175776756260503773.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/papaya-uk.mp3', 'Loại quả khi chín có màu vàng,vị ngọt , có rất nhiều hạt', 'Fruits'),
(33, 'Durian', 'Quả sầu riêng', 'https://th.bing.com/th/id/OIP.Gzkx4ahWiw5Bl6YKAWE3GAHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7', '', 'Loại quả vỏ có rất nhiều gai,có vị ngọt , nhưng có mùi rất là khó ngừi với những người gặp lần đầu', 'Fruits'),
(34, 'Strawberry', 'Quả dâu', 'https://th.bing.com/th/id/OIP.di0vUk9icY2y0GZIRVqoPQHaHa?w=172&h=180&c=7&r=0&o=5&pid=1.7', '', 'Loại quả khi chín có màu đỏ , vị ngọt , mùi rất là thơm ', 'Fruits'),
(35, 'Avocado', ' Quả bơ', 'https://th.bing.com/th/id/OIP.sHANymyURxYyNLaqlmGf5QHaE8?w=268&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/avocado-us.mp3', 'Loại quả có vỏ màu xanh,phần ruột rất mềm , có hạt rất cứng', 'Fruits'),
(36, 'Mangoes', 'Quả xoài', 'https://th.bing.com/th/id/OIP.nZdY3FqPcSauAGZM2LfV2QHaFj?w=261&h=196&c=7&r=0&o=5&pid=1.7', '', 'Loại quả khi chín có màu vàng , tỏa ra mùi rất thơm ,vị ngọt , rất được ưa chuộng ở Việt Nam', 'Fruits'),
(37, 'Cucumber', 'Quả dưa leo', 'https://th.bing.com/th/id/OIP.3yDTFoCEf4WDohZEhu1sAQHaGm?w=214&h=191&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/cucumber-us.mp3', 'Quả dài dài có vị thanh thanh , nhạt,nhưng ăn rất ngon và tốt cho da', 'Fruits'),
(38, 'Watermelon', ' Quả dưa hấu', 'https://th.bing.com/th/id/OIP.8X3eWf5bbIZglQCRdurM0wHaF1?w=212&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/watermelon-us.mp3', 'Loại quả Vua Mai An Tiêm trồng trên đảo hoang,có vị ngọt, rất nhiều hạt đen', 'Fruits'),
(40, 'Pumpkin', 'Quả bí ngô', 'https://th.bing.com/th/id/OIP.pnxnxMdXZig6JipqfmVEuwHaD4?w=322&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/pumpkin-au.mp3', 'Loại quả màu vàng rất nổi tiếng trong lễ Halloween', 'Fruits'),
(41, 'Blueberry', 'Quả việt quất', 'https://th.bing.com/th/id/OIP.Fe8CYp294_2MqLVLrpf_4gHaFj?w=225&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/blueberry-ca.mp3', 'Quả có vị chua , màu tím, thường được ưa chuộng ở Châu Âu', 'Fruits'),
(42, 'Coconut', 'Quả dừa', 'https://th.bing.com/th/id/OIP.26Z5_-j8Jt9iErqVUqWn7QHaFT?w=247&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/coconut-au.mp3', 'Quả này có vỏ rất là cứng, bên trong có nước uống rất mát và sảng khoái', 'Fruits'),
(43, 'Corn', 'Quả ngô', 'https://th.bing.com/th/id/OIP.PvdyX6i6IPviOPbptl09RQHaHa?w=191&h=191&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/corn-au.mp3', 'Quả này ăn hạt nha , có màu vàng ,ăn rất ngon', 'Fruits'),
(44, 'Chili Peppers', 'Quả Ớt', 'https://th.bing.com/th/id/OIP.7RT0tOkyxZvgY16j12lP4AHaE8?w=282&h=188&c=7&r=0&o=5&pid=1.7', '', 'Quả này ăn rất là cay nha ! có màu đỏ', 'Fruits'),
(45, 'Walnuts', 'Quả óc chó', 'https://th.bing.com/th/id/OIP.yPez8uPqPbHbXwai8PRVXAHaGh?w=206&h=181&c=7&r=0&o=5&pid=1.7', '', 'Tên là quả óc chó nhưng mà ăn vào thì cực kì thông minh nha !', 'Fruits'),
(46, 'Plums', 'Quả mận', 'https://th.bing.com/th/id/OIP.t3ajekdPIME8U24xU6pIvAHaF-?w=243&h=196&c=7&r=0&o=5&pid=1.7', '', 'Quả này nổi tiếng ở Việt Nam , ăn khi chín có vị ngọt rất ngon', 'Fruits'),
(47, 'Pear', 'Quả lê', 'https://th.bing.com/th/id/OIP.2MQOxmtuvvygeZDVSrj0JgHaF7?w=240&h=192&c=7&r=0&o=5&pid=1.7', '', 'Quả này khi chín ăn rất ngon và ngọt', 'Fruits'),
(48, 'Grape', 'Quả nho', 'https://th.bing.com/th/id/OIP.gUuUVBXDup4PbhWAwD2uFgHaE7?w=297&h=198&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/grape-uk.mp3', 'Quả này mọc thành chùm , màu tím ,ăn rất ngọt', 'Fruits'),
(49, 'Cherry', 'Quả cherry', 'https://th.bing.com/th/id/OIP.TyI4J5HdSkFJimEgozwaIgHaHa?w=202&h=202&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/cherry-au.mp3', 'Quả này mọc thành chùm ăn rất là chua', 'Fruits'),
(50, 'Kiwi', 'Quả kiwi', 'https://th.bing.com/th/id/OIP.rm-NNvaTbr5ndiDz2LnzUwHaEK?w=306&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/kiwi-au.mp3', 'Quả này có vị chua', 'Fruits'),
(51, 'Dragon fruit', 'Quả thanh long', 'https://th.bing.com/th/id/OIP.bwqChmPePS2rhlqZgC8fZwHaE8?w=273&h=182&c=7&r=0&o=5&pid=1.7', '', 'Quả này có rất nhiều hạt màu đen , ruột màu đỏ hoặc tím', 'Fruits'),
(52, 'Lemons', 'Quả chanh', 'https://th.bing.com/th/id/OIP.ElyV2oKILvh82LHx9kcQPgHaDt?w=326&h=174&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/lemon-uk.mp3', 'Quả này rất rất là chua luôn', 'Fruits'),
(53, 'Guava', 'Quả ổi', 'https://th.bing.com/th/id/OIP.gHHwNXzq_P6NpIo06jjaGAHaE8?w=261&h=180&c=7&r=0&o=5&pid=1.7', '', 'Quả ổi phổ biến ở Việt Nam lắm', 'Fruits'),
(54, 'Pomegranate', 'Quả lựu', 'https://th.bing.com/th/id/OIP.UT3Q28vKWl9Bvb9StmZE-wHaE8?w=262&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/pomegranate-uk.mp3', 'Quả lựu có rất nhiều hạt,chúng ta ăn hạt của nó', 'Fruits'),
(55, 'Tomato', 'Quả cà chua', 'https://th.bing.com/th/id/OIP.BDihZZH52qoMZXSR-PCLBQHaHa?w=182&h=181&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/tomato-au.mp3', 'Quả này có màu đỏ,ăn rất tốt cho sức khỏe', 'Fruits'),
(56, 'Logan', 'Quả nhãn', 'https://th.bing.com/th/id/OIP.QSxzZKfXE1m2o4OzVTUL3gHaE8?w=297&h=198&c=7&r=0&o=5&pid=1.7', '', 'Quả này nhỏ nhưng ăn rất ngọt,phổ biến ở Việt Nam', 'Fruits'),
(57, 'Tamarind fruit', 'Quả me', 'https://th.bing.com/th/id/OIP.L-7Qu2-fDI6OdF92N6th8wHaFj?w=235&h=180&c=7&r=0&o=5&pid=1.7', '', 'Quả me rất chua ', 'Fruits'),
(58, 'Litchi', 'Quả vải', 'https://th.bing.com/th/id/OIP.BlQTfbebQkoIQeqrHPBLeQHaHa?w=165&h=180&c=7&r=0&o=5&pid=1.7', '', 'Quả vải là anh của của nhãn', 'Fruits'),
(59, 'Monkey', 'Con khỉ', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/monkey.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/monkey-us.mp3', 'Con khỉ rất nghịch ngợm và thích leo trèo', 'Animals'),
(60, 'Panda', 'gấu trúc', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/panda.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/panda-1-us.mp3', 'Gấu trúc có đôi mắt thâm xì', 'Animals'),
(61, 'Shark', 'Cá mập', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/shark.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/shark-us.mp3', 'Cá mập rất hung dữ dưới biển sâu', 'Animals'),
(62, 'Zebra', 'Ngựa rằn', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/zebra.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/zebra-uk.mp3', 'Là loài ngựa nhưng có vằn trên người', 'Animals'),
(63, 'Gorilla', 'Con khỉ đột', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/gorilla.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/gorilla-us.mp3', 'Khỉ đột rất thích ăn chuối', 'Animals'),
(64, 'Walrus', 'Hải mã', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/walrus-1.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/walrus-au.mp3', 'Hải mã rất to lớn nhưng mà hiền', 'Animals'),
(65, 'Leopard', 'Báo', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/leopard.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/leopard-us.mp3', 'Báo chạy rất là nhanh nha', 'Animals'),
(66, 'Wolf', 'chó sói', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/wolf.png?resize=227%2C227&ssl=1', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/wolf.png?resize=227%2C227&ssl=1', 'Chó sói rất hung dữ và cô độc', 'Animals'),
(67, 'Antelope', 'con linh dương', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/antelope.png?resize=227%2C227&ssl=1', '', 'Linh dương sống ở Châu Phi và Châu Á.', 'Animals'),
(68, 'Eagle', 'Đại bàng', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/bald-eagle.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/eagle-us.mp3', 'Đại bàng hói là một loài chim quý phái, vừa đẹp vừa uy nghiêm.', 'Animals'),
(69, 'Jellyfish', 'Sứa', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/jellyfish-2.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/jellyfish-us.mp3v', 'Sứa là loài dưới biển không có não', 'Animals'),
(71, 'Crab', 'Con Cua', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/crab-2.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/crab-us.mp3', 'Loài cua hông bao giờ đi thẳng ,cuộc đời chỉ đi ngang', 'Animals'),
(72, 'Giraffe', 'Hươu cao cổ', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/giraffe.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/giraffe-us.mp3', 'Tên gọi là hươu cao cổ bởi vì nó có một cái cổ thật dài dài dài', 'Animals'),
(73, 'Camel', 'Lạc đà', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/camel.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/camel-1-au.mp3', 'Lạc đà thường sống trên xa mạc , có chiếc lưng lượn sóng', 'Animals'),
(74, 'Starfish', 'Sao biển', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/starfishes.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/starfish-us.mp3', 'Ngôi sao nhưng lại sống dưới nước chứ không phải trên trời ', 'Animals'),
(75, 'Koala', 'Con Koala', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/koala.png?resize=227%2C227&ssl=1', '', 'Loài Koala này rất là đáng yêu và hiền lành', 'Animals'),
(76, 'Alligator', 'Cá sấu', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/Untitled-design-11.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/alligator-1-au.mp3', 'Loài cá có những cái răng sắc nhọn và bộ da sần sùi đáng sợ', 'Animals'),
(77, 'Owl', 'Cú', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/owl.jpg?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/owl-us.mp3\r\n', 'Cú cú cú là tiếng kêu của loài cú ! y như cái tên', 'Animals'),
(78, 'Tiger', 'Con hổ', 'https://th.bing.com/th/id/OIP.C22ij2vKiLfc1UYyW2uztQHaJD?w=158&h=193&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/tiger-1-us.mp3', 'Chúa tể sơn lâm là ai ? hahaha chính là ta đâyyy ! gruuuuuuu', 'Animals'),
(79, 'Bear', 'Con gấu', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/bear.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/bear-us.mp3', 'Loài vật to lớn với những cú tát khủng khiếp ', 'Animals'),
(80, 'Whale', 'Cá voi', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/blue-whale.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/whale-us.mp3', 'Loài cá to lớn nhất đại dương , và cũng to nhất trong các loài vật hiện tại', 'Animals'),
(81, 'Chimpanzee', 'Tinh tinh', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/chimpanzee.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/chimpanzee-us.mp3', 'Tinh Tinh là loại vật rất chi là thông minh, tinh tinh có sở thích ăn chuối ', 'Animals'),
(82, 'Raccoon', 'Gấu mèo', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/raccoon.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/raccoon-au.mp3', 'Gấu mèo là con gì tôi chưa gặp bao giờ , nhưng mà chắc là con gấu có khuôn mặt của con mèo , tôi đoán vậy !', 'Animals'),
(83, 'Lion', 'Sư tử', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/lion-1.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/lion-us.mp3', 'Sư tử là con cực kì hung dữ , có chiếc bờm cực oai phong', 'Animals'),
(84, 'Dolphin', 'Cá heo', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/dolphin.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/dolphin-us.mp3', 'Loài cá heo là loài cá rất thông minh và chúng thân thiện với con người ', 'Animals'),
(85, 'Elephant', 'Con voi', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/elephant.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/elephant-us.mp3', 'Chú voi có chiếc mũi cực dài và đôi tai rất to , thân hình chú cũng rất là khủng lồ.', 'Animals'),
(86, 'Squirrel', 'Sóc', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/squirrel.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/squirrel-ca.mp3', 'Loài sóc rất đáng yêu và nhanh nhẹn , có cái đuôi rất to . Loài sóc rất thích chơi đùa với những chiếc chai , lọ', 'Animals'),
(87, 'Snake', 'Con rắn', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/snake.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/snake-au.mp3', 'Loài bò sát đáng sợ,Có những cú cắn với nọc độc chét người đó ', 'Animals'),
(88, 'Kangaroo', 'Con chuột túi', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/kangaroo.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/kangaroo-us.mp3', 'Loài chuột có túi ngực rất là sành điệu.Đại diện cho thương hiệu máy lọc nước Kenggoroo', 'Animals'),
(89, 'Hippopotamus', 'Hà mã', 'https://i1.wp.com/7esl.com/wp-content/uploads/2017/12/hippopotamus-1.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/hippopotamus-us.mp3', 'Nhìn thì hung dữ nhưng mà lại đáng yêu', 'Animals'),
(90, 'Elk', 'Nai sừng tấm', 'https://i0.wp.com/7esl.com/wp-content/uploads/2017/12/elk.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/elk-us.mp3', 'Con này chịu nha ! chắc không có ở Việt Nam', 'Animals'),
(91, 'Rabbit', 'Con thỏ', 'https://i2.wp.com/7esl.com/wp-content/uploads/2017/12/rabbit-1.png?resize=227%2C227&ssl=1', 'https://api.dictionaryapi.dev/media/pronunciations/en/rabbit-au.mp3', 'Con thỏ nối tiếng với tốc độ nhanh nhẹn và đôi tai dài của chúng. ', 'Animals'),
(92, 'Head', 'Cái đầu', 'https://th.bing.com/th/id/OIP.IFPrCRnBCdi0eISFtHfY7QAAAA?w=211&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/head-uk.mp3', 'Ai mà không có đầu thì không phải là con người', 'Body'),
(93, 'Face', 'Khuôn mặt', 'https://th.bing.com/th/id/OIP.aCBkTbFzA982zqOq3ZvNgQHaHL?w=209&h=202&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/face-au.mp3', 'Khuôn mặt để nhận diện mỗi người, avatar ', 'Body'),
(94, 'Hair', 'Tóc', 'https://th.bing.com/th/id/OIP.gIq7NgkLYbyciZ_rMxqLwwHaGO?w=248&h=209&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/hair-uk.mp3', 'Tóc là những cái lông kì dị mọc trên đầu chúng ta', 'Body'),
(95, 'Ear', 'Tai', 'https://th.bing.com/th/id/OIP.b5otMHQf61auIemVXtJPCAHaJA?w=135&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/ear-ca.mp3', 'Tai là bộ phận dùng để nghe ngóng tình hình', 'Body'),
(96, 'Neck', 'Cái cổ', 'https://m.dkn.news/wp-content/uploads/2016/02/Nhan-tuong-hoc-chiec-co-co-the-noi-len-van-menh-tot-xau-cua-mot-nguoi.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/neck-us.mp3', 'Cổ dùng để nối phần đầu và phần thân người lại với nhau', 'Body'),
(97, 'Forehead', 'Trán', 'https://th.bing.com/th/id/OIP.48ot3dSLBtUDR7C2pXEXPgHaHa?w=167&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/forehead-uk.mp3', 'Trán dùng để làm gì tôi cũng không biết nữaa', 'Body'),
(98, 'Beard', 'Râu', 'https://th.bing.com/th/id/OIP.xug2pLG3Otv3R3YigFYOZAHaGa?w=223&h=193&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/beard-us.mp3', 'Thứ mà nam giới nào khi trưởng thành cũng sẽ có ', 'Body'),
(99, 'Eye', 'Con mắt', 'https://th.bing.com/th/id/OIP.84Cudpjf3fvoUW-Sav0cfwHaB2?w=310&h=87&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/eye-us.mp3', 'Đôi mắt dùng để nhìn rõ mọi vật xung quanh', 'Body'),
(100, 'Nose', 'Mũi', 'https://th.bing.com/th/id/OIP.75E0huo3W6ZRUx2FQ4t2YAHaJ6?w=149&h=200&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/nose-uk.mp3', 'Mũi là thứ dùng để ngửi mùi , thở .Người không có mũi thì buồn lắm !', 'Body'),
(101, 'Mouth', 'Mồm', 'https://th.bing.com/th/id/OIP.9MxOqO5CsWa0N49mLVoPDAHaI-?w=143&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/mouth-uk.mp3', 'Cái mồm cũng cực kỳ quan trọng luôn . Nó giúp ta nói và ăn nha !', 'Body'),
(102, 'Chin', 'Cái cằm', 'https://th.bing.com/th/id/OIP.V77uw8xleEjDPw95CaaiGQAAAA?w=171&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/chin-us.mp3\r\n', 'Cái cằm là bộ phận dưới cái mồm . Công dụng là gì tôi cũng không rõ nữa', 'Body'),
(103, 'Shoulder', 'Vai', 'https://th.bing.com/th/id/OIP.JjylqGXaejCKh3FwbXStMgHaHo?w=171&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/shoulder-us.mp3', 'Đôi vai của con người dùng để gánh vác mọi thứ trên đời. Nhất là đôi vai của tôi , gánh biết bao muộn phiền !', 'Body'),
(104, 'Arm', 'Cánh tay', 'https://th.bing.com/th/id/OIP.cggY11zWl1OpgzbxVIzxJQAAAA?w=212&h=127&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/arm-us.mp3', 'Cánh tay con người là thứ quan trọng lắm . Cánh tay có thể giúp ta làm nhiều việc , ví dụ như nắm tay ni bla bla..', 'Body'),
(105, 'Chest', 'Ngực', 'https://as2.ftcdn.net/v2/jpg/01/12/27/51/1000_F_112275167_Ifwe4kVyTqQfTMxG5iS2uRpjLLMSR5OZ.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/chest-uk.mp3', 'Ngực là phần chứa đựng con tim đó', 'Body'),
(106, 'Armpit', 'Nách', 'https://th.bing.com/th/id/OIP.UcOkE6RqGFa4K-NdWLscuAAAAA?w=194&h=194&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/armpit-us.mp3', 'Nách là nơi để test con người có máu buồn hay không !', 'Body'),
(107, 'Toes', 'Ngón chân', 'https://th.bing.com/th/id/OIP.4n-awA8SmpiRj0N7tgxU2wHaJ4?w=140&h=186&c=7&r=0&o=5&pid=1.7', '', 'Mỗi con người thường có 10 ngón chân . Công dụng : để đi', 'Body'),
(108, 'Waist', 'Eo', 'https://th.bing.com/th/id/OIP.nvycidslzUa1sF4EhPy1mQHaHa?w=203&h=203&c=7&r=0&o=5&pid=1.7', '', 'Mọi người có công nhận eo thon trông rất là quyến rũ không nào ...', 'Body'),
(109, 'Abdomen', 'Bụng', 'https://th.bing.com/th/id/OIP.4aWOKTksfQZO-pFwQ_KOuAHaH6?w=202&h=216&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/abdomen-us.mp3', 'Bụng là nơi mà chứa đựng các cơ quan bên trong con người .Đựng thức ăn đó các em !', 'Body'),
(110, 'lips', 'Môi', 'https://t4.ftcdn.net/jpg/02/50/50/27/360_F_250502749_AC4ttnLsKQuHt7uOdqGxaMg1wLtizOrz.jpg', 'https://api.dictionaryapi.dev/media/pronunciations/en/leg-1-au.mp3', 'Đôi môi là nơi mà mọi người dùng để phanh xích lô đóoo !!!', 'Body'),
(111, 'Thigh', 'Đùi', 'https://th.bing.com/th/id/OIP.pmSUxB2RVGRlBpp1Y6uQCgHaFl?w=197&h=161&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/thigh-us.mp3', 'Đùi là một phần của cái chân , nó kéo dài từ bụng xuống đầu gối', 'Body'),
(112, 'Foot', 'Chân', 'https://th.bing.com/th/id/OIP.R4gpvEwXjJCLv3KccKOu7QHaHa?w=179&h=180&c=7&r=0&o=5&pid=1.7', 'https://th.bing.com/th/id/OIP.R4gpvEwXjJCLv3KccKOu7QHaHa?w=179&h=180&c=7&r=0&o=5&pid=1.7', 'Bàn chân giúp con người ta giữ thăng bằng đó các em ', 'Body'),
(113, 'Hand', 'Tay', 'https://th.bing.com/th/id/OIP.152mL15L8gIo_y_4kxv3FAHaHa?w=198&h=198&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/hand-uk.mp3', 'Bàn tay rất đa năng , có thể cầm nắm mọi thứ , trừ tay e !', 'Body'),
(114, 'Knee', 'Đầu gối', 'https://th.bing.com/th/id/OIP.D10pwkquyDQKIPVq6HwKowHaFj?w=212&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/knee-us.mp3', 'Đầu gối là phần nối giữa đùi và cẳng chân , có tác dụng chuyển động', 'Body'),
(115, 'Hip', 'Hông', 'https://th.bing.com/th/id/OIP.Qe2POEuSQtX02A_l_zq_oAAAAA?w=198&h=198&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/hip-us.mp3', 'Cái hông dùng để lắc !', 'Body'),
(116, 'Buttock', 'Mông', 'https://th.bing.com/th/id/OIP.6LdGM8joTlphMnwS_2KyjwAAAA?w=202&h=201&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/buttock-us.mp3', 'Mông là thứ chúng ta dùng để ngồi đó , và còn nhiều việc khác nữa  !!!', 'Body'),
(117, 'Navel', 'Lỗ rốn', 'https://th.bing.com/th/id/OIP.Ay00QNWLlSF1ksNUgttoTgHaL2?w=118&h=190&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/navel-us.mp3', 'Khi ta còn ở trong bụng mẹ , rốn là nơi mà dùng để trao đổi dinh dưỡng giữa mẹ và ta đó ', 'Body'),
(118, 'Back', 'Lưng', 'https://th.bing.com/th/id/OIP.dvJi7BeOKEYAtthgLl5nlAHaFj?w=281&h=211&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/back-us.mp3', 'Lưng dùng để cõng . Hết', 'Body'),
(119, 'China', 'Trung Quốc', 'https://th.bing.com/th/id/OIP.B_MtgLfORuP_9IvPuJQPXwHaE8?w=249&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/china-au.mp3', 'Trung Quốc là nước đông dân nhất thể giới!', 'National flag'),
(120, 'Vietnam', 'Việt Nam', 'https://th.bing.com/th/id/OIP.5MiR6dad2N-U7m8wsNBsIwHaEc?w=294&h=180&c=7&', '', 'Việt Nam là đất nước của chúng ta đó . Việt Nam no.1 !', 'National flag'),
(121, 'Angola', 'Ăng-gô-la', 'https://th.bing.com/th/id/OIP.d5amA4alnYH1tQaLrz662wHaE7?w=268&h=180&c=7&r=0&o=5&pid=1.7', '', 'Ăng gô la là đất nước mà Quang Linh vlogs đang làm việc ở đó ', 'National flag'),
(122, 'Argentina', 'Ác-hen-ti-na', 'https://th.bing.com/th/id/OIP.ZhPu9Sjy965rrT-shSLh_AHaFQ?w=262&h=186&c=7&r=0&o=5&pid=1.7', '', 'Đất nước Nam Mỹ nổi tiếng với những cầu thủ bóng đá huyền thoại Maradona và Sa tị !', 'National flag'),
(123, 'Chile', 'Chi-lê', 'https://th.bing.com/th/id/OIP._qA8prg7knjcZB3_U8kLWwHaE7?w=280&h=187&c=7&r=0&o=5&pid=1.7', '', 'Chi-lê là quê hương thứ 2 của Messi đó !', 'National flag'),
(124, 'Colombia', 'Cô-lôm-bi-a', 'https://th.bing.com/th/id/OIP.4x_76LcEQtCmFoR1yYLkOAHaE7?w=251&h=180&c=7&r=0&o=5&pid=1.7', '', 'Cô-lôm-bi-a là một đất nước Nam Mỹ xinh đẹp !', 'National flag'),
(125, 'Cuba', 'Cu-ba', 'https://th.bing.com/th/id/OIP.58D0eEc1vaMV-l_uhHUxbgHaDt?w=309&h=174&c=7&r=0&o=5&pid=1.7', '', 'Đất nước Cu-ba là người ae của Việt Nam ! 1 thằng bạn tốt hơn 100 thằng bạn tốt !!!', 'National flag'),
(126, 'India', 'Ấn Độ', 'https://th.bing.com/th/id/OIP.YHufaYYtdq8EtHQRPAx_9QHaE8?w=268&h=180&c=7&r=0&o=5&pid=1.7', '', 'Ấn Độ là đất nước đông dân thứ 2 thế giới !', 'National flag'),
(127, 'Indonesia', 'In-đô-nê-xi-a', 'https://th.bing.com/th/id/OIP.kvHgjI-tKCydCt7OqZF2vwHaE8?w=253&h=180&c=7&r=0&o=5&pid=1.7', '', 'In Đô Nê Xi A là một nước thuộc Đông Nam Á chúng ta ', 'National flag'),
(128, 'Iran', 'I-ran', 'https://th.bing.com/th/id/OIP.wq_BB9-mfx9VIu62giouWAHaEK?w=333&h=187&c=7&r=0&o=5&pid=1.7', '', 'I-ran là một nước thuộc Châu Á . Đội bóng rất mạnh trong khu vực !', 'National flag'),
(129, 'Japan', 'Nhật Bản', 'https://th.bing.com/th/id/OIP.FRYDY-YDJfa0I6ax_9vZsAHaE8?w=303&h=202&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/japan-us.mp3', 'Nhật Bản là một đất nước nổi tiếng về những bộ phim tâm lý học rất được ưa chuộng !!!', 'National flag'),
(130, 'Laos', 'Lào', 'https://th.bing.com/th/id/OIP.kOAqVnoFakDrmXlN6E0V3QHaE7?w=254&h=180&c=7&r=0&o=5&pid=1.7', '', 'Lào là một nước trong khu vực Đông Nam Á có đường biên giới giáp Việt Nam ', 'National flag'),
(131, 'Mongolia', 'Mông Cổ', 'https://th.bing.com/th/id/OIP.M_0SmcYRi1WNwtQRb9ibQQHaEb?w=262&h=180&c=7&r=0&o=5&pid=1.7', '', 'Mông Cổ là đất nước có rất nhiều điều thú vị . To be continued....', 'National flag'),
(132, 'Netherlands', 'Hà Lan', 'https://th.bing.com/th/id/OIP.4fMCWvFZmuWIByz9JlAd2QHaD6?w=314&h=180&c=7&r=0&o=5&pid=1.7', '', 'Hà Lan là đất nước nổi tiếng với những cô gái Hà Lan mà các em đang uống mỗi ngày !', 'National flag'),
(133, 'Norway', 'Na Uy', 'https://th.bing.com/th/id/OIP.vNEPjqn8DuCzwrYs9v4rhQHaFY?w=230&h=180&c=7&r=0&o=5&pid=1.7', '', 'Na uy là đất nước nổi tiếng về ẩm thực . Các bạn nên đến đó du lịch đi !', 'National flag'),
(134, 'North Korea', 'Triều Tiên', 'https://th.bing.com/th/id/OIP.nJqE_nE3z8CYlFWTUm6InwHaEU?w=264&h=180&c=7&r=0&o=5&pid=1.7', '', 'Triều Tiên là một nước mà rất kín thông tin, vì vậy tôi không có thông tin gì thêm !!!', 'National flag'),
(135, 'Portugal', 'Bồ Đào Nha', 'https://th.bing.com/th/id/OIP._0b5tV3_DFtObrahxO0THwHaE8?w=260&h=180&c=7&r=0&o=5&pid=1.7', '', 'Nhắc đến đất nước Bồ Đào Nha thì chắc hẳn các bạn sẽ nhớ đến ngay cầu thủ bóng đá Cristiano Ronaldo số 1 thế giới .Huyền thoại sống của giới túc cầu đúng không nào !!', 'National flag'),
(136, 'Russia', 'Nga', 'https://th.bing.com/th/id/OIP.nuyV6XtDS4qzhlFTDf9JSgHaD6?w=303&h=180&c=7&r=0&o=5&pid=1.7', '', 'Đất nước Nga là một đất nước lạnh lẽo và ít người dám chơi cùng !!!', 'National flag'),
(137, 'Spain', 'Tây Ban Nha', 'https://th.bing.com/th/id/OIP.c1u_4Moplcfgsu_RyVEtVgHaD6?w=321&h=180&c=7&r=0&o=5&pid=1.7', '', 'Tây Ban Nha là một đất nước Châu Âu nổi tiếng về rất nhiều lĩnh vực !', 'National flag'),
(138, 'Sweden', 'Thụy Điển', 'https://th.bing.com/th/id/OIP.RNJIZQluRT2uYCV8De_KzwHaEn?w=302&h=188&c=7&r=0&o=5&pid=1.7', '', 'Thụy Điển chắc hẳn là một đất nước không còn xa lạ với chúng ta rồi đúng không nào ! Nếu chưa biết lên lên GG tra luôn nha !!!', 'National flag'),
(139, 'Switzerland', 'Thụy sĩ', 'https://th.bing.com/th/id/OIP.qogkNTlrZvHu22vMq9IPfgHaE8?w=274&h=183&c=7&r=0&o=5&pid=1.7', '', 'Thụy Sĩ là một đất nước có món ăn Gà hầm sữa bò nổi tiếng Thế Giới đó !', 'National flag'),
(140, 'Thailand', 'Thái Lan', 'https://th.bing.com/th/id/OIP.DK3ILgWsFXaf5Q3VYZnSGwHaE8?w=302&h=201&c=7&r=0&o=5&pid=1.7', '', 'Thái Lan là đất nước thuộc Đông Nam Á', 'National flag'),
(141, 'Cambodia', 'Cam-pu-chia', 'https://th.bing.com/th/id/OIP.mIyu1GbRMhe_8VWhASZdjQHaE8?w=272&h=181&c=7&r=0&o=5&pid=1.7', '', 'Cam pu chia là đất nước trong khu Đông Nam Á giáp với Việt Nam', 'National flag'),
(142, 'Canada', 'Ca-na-đa', 'https://th.bing.com/th/id/OIP.67zrTMS2Kl5htGsVeFiyUQHaE7?w=255&h=180&c=7&r=0&o=5&pid=1.7', '', 'Can-na-da là đất nước nổi tiếng với câu nói \"ảo ma canada\"', 'National flag'),
(143, 'Brazil', 'Bra-xin', 'https://th.bing.com/th/id/OIP.HFDP6apvouo_FycOJ2tmsAHaFL?w=237&h=180&c=7&r=0&o=5&pid=1.7', 'https://api.dictionaryapi.dev/media/pronunciations/en/brazil-us.mp3', 'Nhắc đến đất nước Brazil thì chúng ta sẽ nhớ đến ngay vũ điệu Samba bốc lửa cùng với nền bóng đá đẳng cấp đúng không nào !!', 'National flag'),
(144, 'Egypt', 'Ai Cập', 'https://th.bing.com/th/id/OIP.BE7guSeT8KIQJ8hbI9GrDQHaE8?w=242&h=180&c=7&r=0&o=5&pid=1.7', '', 'Ai cập thì nổi tiếng với các Kim Tự Tháp rồi !', 'National flag'),
(145, 'France', 'Pháp', 'https://th.bing.com/th/id/OIP.OV6AUPcF7B_dxdEcgMZCdQHaE8?w=250&h=180&c=7&r=0&o=5&pid=1.7', '', 'Pháp là đất nước nổi tiếng về cảnh quan thiên nhiên rất đáng để du lịch !', 'National flag'),
(146, 'South Korea', 'Hàn Quốc', 'https://th.bing.com/th/id/OIP.IO99tgGlVQ6_bbjNj6t-KAHaEK?w=309&h=180&c=7&r=0&o=5&pid=1.7', '', 'Nhắc đến Hàn Quốc thì chắc hẳn các bạn nghĩ ngay đến Bi Ti Ét đúng không nào !! BỎ ĐI NHA ', 'National flag');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accountuser`
--
ALTER TABLE `accountuser`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `newword`
--
ALTER TABLE `newword`
  ADD PRIMARY KEY (`IDword`),
  ADD KEY `ID` (`ID`);

--
-- Chỉ mục cho bảng `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`IDw`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accountuser`
--
ALTER TABLE `accountuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `newword`
--
ALTER TABLE `newword`
  MODIFY `IDword` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `quiz`
--
ALTER TABLE `quiz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `topic`
--
ALTER TABLE `topic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `IDw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `newword`
--
ALTER TABLE `newword`
  ADD CONSTRAINT `newword_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `accountuser` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
