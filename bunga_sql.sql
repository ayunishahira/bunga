-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bunga_db
CREATE DATABASE IF NOT EXISTS `bunga_db` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bunga_db`;

-- Dumping structure for table bunga_db.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table bunga_db.message
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.message: ~1 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
	(1, 4, 'Ayuni', 'ayunishahira106@gmail.com', '0134974030', 'Hi, I like your bunga system! Well Done!');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table bunga_db.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` float NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.orders: ~4 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
	(13, 4, 'Ayuni Shahira', '0134974030', 'ayunishahira106@gmail.com', 'Boost', 'NO 12, LEVEL 2, BLOCK 1, APARTMENT SERI BESTARI, TAMAN BAHTERA, 35900, TANJUNG MALIM, MALAYSIA.', ', Unicorn Baby Breath Bouquet (1) , White Tulips Bouquet (1) ', 228, '03-Jul-2023 01:31:29', 'completed'),
	(14, 5, 'Joshua', '0134974031', 'HongJisoo@gmail.com', 'Online Banking', 'NO 3, LORONG 17, TAMAN SEVENTEEN, 34500, IPOH, MALAYSIA.', ', Blue Irises Bouquet (1) ', 99, '03-Jul-2023 01:37:24', 'completed'),
	(15, 5, 'Joshua', '0134974031', 'HongJisoo@gmail.com', 'Touch \'n Go eWallet', 'NO 3, LORONG 17, TAMAN HYBE, 34500, KUCHING, MALAYSIA.', ', Daisy Bouquet (2) ', 84, '03-Jul-2023 01:45:33', 'pending'),
	(16, 5, 'Joshua', '0134974031', 'HongJisoo@gmail.com', 'Debit/Credit card', 'NO 3, LORONG 17, TAMAN SEVENTEEN, 34500, IPOH, MALAYSIA.', ', Red Rose Bouquet (1) ', 120, '03-Jul-2023 01:48:59', 'pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table bunga_db.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.products: ~15 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
	(3, 'Unicorn Baby Breath Bouquet', 'Looking for popular flowers apart from roses? If that is the case, you are definitely looking at the right bouquet. This baby breath bouquet comes in a combination of perfectly blend colours of pink, blue and purple, creatively design by our bunga florist team. Baby breath symbolize purity, everlasting love, compassion, trust and romance.', 150, 'unicorn-baby-breath-bouquet.jpg'),
	(4, 'Sunflower Bouquet', 'Spread all the love & joy with your love ones with our Sunflower Bouquet. Celebrate graduations, birthdays, or send it as your get well soon wishes. As bright as the sun, these beautiful, bright yellow sunflowers will definitely bring smiles to their faces! \r\n\r\nThis Sunflower Bouquet comes in hand bouquet contains 7 pieces of sunflower and leather leaves in white wrapping paper.', 78, 'sunflower-bouquet.jpg'),
	(5, 'Red Rose Bouquet', 'Introducing our beautiful classic Red Rose flower bouquet, designed to add a touch of simplicity and elegance to any occasion. Our eco-friendly honeycomb wrapping ensures that your bouquet not only looks stunning, but it is also environmentally friendly. \r\n\r\nBlooms included: \r\nRed Roses\r\nEucalyptus\r\n*Flower arrangement, shades, bloom sizes and wrapping style may vary from the picture shown.', 120, 'Red-Rose-Bouquet.jpg'),
	(6, 'White Baby Breath', 'Make someone smile with this lovingly created baby\'s breath arrangement that represent your love or friendship. Baby\'s breath also symbolizes everlasting love and purity, hence makes the perfect gift for intimate occasions. \r\n\r\nPerfect for Romantic Gestures, Colleague, Friendship, Thank You Token, Baby Breath Lovers.', 80, 'White-Baby-Breath.jpg'),
	(7, 'Pink Roses Bouquet', 'Take a walk under the moonlight with this lovely bouquet and share this memorable moment with your loved on. 12 majestic roses elegantly wrapped to perfection. The pink roses incorporated in this arrangement is the perfect representation of your appreciation. \r\nComes with Pink Roses (12 Stalks), Sweet William (6 Stalks). Perfect for Valentine, Anniversary, Romantic Gestures, Thank You Token, Rose Lovers.', 120, 'pink-roses.jpg'),
	(8, 'White Lily', 'Hues of white are the sincerest expression of sympathy and it creates peace and serene simplicity in their life with the beauty and sophistication of our gorgeous 20 stem white calla lilies.', 145, 'white lily.jpg'),
	(9, 'Pink Carnation Bouquet', 'Comes in wrapped bouquet of one dozen pink carnations with added baby\'s breath, greenery, and pink satin bow. Pink carnations hold a special place in the realm of romance. They symbolize deep affection, undying love, and admiration. The delicate and soft pink petals exude a gentle and sentimental aura that resonates with romantic sentiments. Pink carnations are often associated with expressions of love, making them a popular choice for anniversaries, weddings, and Valentine\'s Day.', 55, 'pink carnation.jpg'),
	(10, 'White Tulips Bouquet', 'White tulips are often associated with love, forgiveness, and new beginnings. They can convey a sense of deep and pure love, making them an ideal choice for wedding ceremonies or as a romantic gesture. Our white tulips comes in 9-10 White Tulips mix with Chamomile, which are sent fresh from the fields and arrive in bud form, thus they open to reveal their absolute beauty only after arrival, and not in transit. ', 78, 'white tulips bouquet.jpg'),
	(11, 'Hydrangea Mixed Flower Bouquet', 'The Hydrangea Mixed Flower Bouquet is a stunning arrangement that showcases the beauty of pink flowers. This bouquet combines the elegance of pink hydrangeas, the romance of roses, the charm of carnations, and the delicate accents of eucalyptus and filler flowers. The Pink Hydrangea Mixed Flower Bouquet is a perfect choice for various occasions, including birthdays, anniversaries, or to convey heartfelt messages of love and appreciation. ', 199, 'Hydrangea Mixed Flower.jpg'),
	(12, 'Yellow Tulips', 'Yellow tulips are often associated with friendship and are commonly given to express appreciation and warm feelings towards a friend. They symbolize joy, warmth, and the renewal of friendships. Yellow tulips can convey a sense of happiness, making them a wonderful gift to brighten someone\'s day.', 40, 'yellow tulipa.jpg'),
	(15, 'Chamomile bouquet', 'Chamomile is renowned for its calming properties and is often used for promoting relaxation and reducing stress. A chamomile bouquet symbolizes serenity, peace, and well-being. It can be a thoughtful gift for someone in need of comfort or a reminder to take a moment to unwind.', 40, 'chamomile.jpg'),
	(16, 'Daisy Bouquet', 'A daisy bouquet holds a meaning of innocence, purity, and new beginnings. It is a versatile choice that can be given for various occasions, from birthdays to weddings, or to express appreciation and well-wishes. The simple beauty of daisies conveys a message of joy, optimism, and the beauty found in life\'s small moments.', 42, 'daisy.jpg'),
	(17, 'Blue Irises Bouquet', 'A blue irises bouquet holds deep meaning and symbolizes faith, hope, and wisdom. It is suitable for occasions that call for contemplation, tranquility, and inner peace. The serene blue color and symbolism of blue irises make them a captivating choice for expressing emotions and sending messages of support, celebration, and spiritual growth.', 99, 'irises bouquet.jpg'),
	(18, 'Hyacinths Bouquet', 'A blue hyacinths bouquet holds a deep meaning of sincerity, constancy, and heartfelt emotions. It is suitable for occasions that call for the expression of deep love, devotion, or sympathy. The rich blue hues and symbolic significance of blue hyacinths make them a captivating choice for conveying profound emotions and sentiments to someone special.', 85, 'hyacinths.jpg'),
	(19, 'Red Tulips', 'Red tulips symbolize passionate love, deep affection, and unwavering commitment. They are a powerful choice for expressing intense emotions and can serve as a romantic gesture to convey your feelings to a loved one. The bold and vibrant nature of red tulips captures the essence of passion and desire, making them a cherished flower in the language of love.', 40, 'red tulipa.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table bunga_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_type` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
	(1, 'Admin1', 'admin1@gmail.com', '3ce767854c5ef46dce6692817d2b4761', 'admin'),
	(4, 'Ayuni', 'ayunishahira106@gmail.com', 'ca3316f64329c636b54056a85ad511b0', 'user'),
	(5, 'Joshua', 'HongJisoo@gmail.com', '7d25dd5a89ecb8196854b786797005b6', 'user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table bunga_db.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table bunga_db.wishlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
