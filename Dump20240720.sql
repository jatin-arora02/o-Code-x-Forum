-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: techblog
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(80) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','12','Admin Admin','9988765654','active'),('asdf','77777','gcgfg','9879879879','active'),('prabaldeep','kaur','Prabaldeep Kaur','9988787878','active'),('qwerty','1234','Qwerty','9876543211','in-active'),('tan23','12233','Tania','09876543211','active');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `ans_id` int NOT NULL AUTO_INCREMENT,
  `answer` longtext,
  `question` int DEFAULT NULL,
  `user` varchar(150) DEFAULT NULL,
  `ans_date` date DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `likes` int DEFAULT '0',
  PRIMARY KEY (`ans_id`),
  KEY `fk_uemail_idx` (`user`),
  KEY `fk_question_idx` (`question`),
  CONSTRAINT `fk_question` FOREIGN KEY (`question`) REFERENCES `questions` (`ques_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_uemail` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (6,'<pre>This is an inbuilt function of react which is called when a component is rendered.</pre>',26,'email1@gmail.com','2023-11-10','correct',0),(9,'<pre>dvsvfhgshgdfshfdshfahsfdhagfdhafsh</pre>',30,'anmoldeep@rediffmail.com','2023-11-14','pending',0),(10,'<pre>var ans = \"456\";\nconsole.log(ans)</pre>',26,'anmoldeep@rediffmail.com','2024-03-24','pending',0),(11,'<pre>nbvjhvh\nljhkj\nkjbkjhkj</pre>',26,'anmoldeep@rediffmail.com','2024-07-20','pending',0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `blog_id` int NOT NULL AUTO_INCREMENT,
  `message` text,
  `user` varchar(150) DEFAULT NULL,
  `blog_dt` datetime DEFAULT NULL,
  `category` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `fk_user_idx` (`user`),
  KEY `cat_idx` (`category`),
  CONSTRAINT `` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cat` FOREIGN KEY (`category`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,'<pre>hgsadfhgasf\nsadhgja\nasdhgja\nasjdhgja\nasvhdgsa</pre>','anmoldeep@rediffmail.com','2023-11-13 12:25:16',7,'hgsafhdg aSHGAFH'),(3,'<pre>hgsadfhgasf\nsadhgja\nasdhgja\nasjdhgja\nasvhdgsa</pre>','anmoldeep@rediffmail.com','2023-11-13 12:26:29',7,'scsss sahgdfsh sdhgsfh'),(4,'<pre>hgsadfhgasf\nsadhgja\nasdhgja\nasjdhgja\nasvhdgsa</pre>','anmoldeep@rediffmail.com','2023-11-13 12:26:52',7,'bascb sajdgaah'),(7,'<pre>xzvchzgcgzfhgcfzh\ndsjhgfjsdgfjhgsdjfhgsjgdjfsgdfjjsgfjsdjshgdjhsgjgjsdgfjsgjfsgfjsgjfgsdjhgjfjs</pre>','email1@gmail.com','2023-11-13 19:01:48',5,'ngsavhg'),(8,'<pre>bvzxcbvczbvzb\nxcghvxhgcvnxzvcnzbvnzbvncvznvcnzbvcnxzvnxbcvznvcxznjagdjagsjdgajgajdjahsjhgsjgfjshgfjshgdjsjghfjdDS</pre>','email1@gmail.com','2023-11-13 19:03:33',5,'xznbvcnz vxncbvnb cznbvcnzv nb'),(11,'<pre>Java offers a variety of technologies that aid in web development. Here are the key ones:\nServlets: They handle client requests on the web server.\nJSP (JavaServer Pages): Allows embedding Java code directly into HTML pages.\nJSF (JavaServer Faces): A Java-based web application framework.\nJDBC (Java Database Connectivity): Enables connection to databases.</pre>','anmoldeep@rediffmail.com','2024-03-24 20:43:38',8,'Ways to create a website in java ');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Python'),(6,'Web Development'),(7,'Web Designing'),(8,'Java'),(9,'Mobile App Development'),(10,'Machine Learning');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment` text,
  `user` varchar(150) DEFAULT NULL,
  `blog` int DEFAULT NULL,
  `comment_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_idx` (`user`),
  KEY `blog_idx` (`blog`),
  CONSTRAINT `blog` FOREIGN KEY (`blog`) REFERENCES `blogs` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'<pre>jgjh</pre>','anmoldeep@rediffmail.com',8,'2023-12-10 18:09:00'),(2,'vvvn\r hgjh\r gvhgfhghfh\r jgj','anmoldeep@rediffmail.com',7,'2023-12-10 18:21:00'),(3,'nbxvnbxzvnbvcn\ndhfsjhfsj\nshgdjagsda\nashdgjhasgdjh\nsadajhdgja','anmoldeep@rediffmail.com',7,'2023-12-10 18:33:00'),(4,'<pre>nvcnzvnz\nsgvavdn\ngsdfAHGFHG\ndcasadhshgfd\nwdghfwh</pre>','anmoldeep@rediffmail.com',7,'2023-12-10 18:38:00'),(5,'<pre>Thnk you for the information</pre>','anmoldeep@rediffmail.com',11,'2024-03-24 20:52:00'),(6,'<pre>utuyfyf</pre>','email1@gmail.com',11,'2024-07-20 12:42:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `ques_id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `category` int DEFAULT NULL,
  `user` varchar(150) DEFAULT NULL,
  `ques_date` date DEFAULT NULL,
  PRIMARY KEY (`ques_id`),
  KEY `fk_category_idx` (`category`),
  KEY `fk_user_idx` (`user`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user` FOREIGN KEY (`user`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (26,'<pre>useEffect(()=>{\n        axios.get(\"http://localhost:3300/view-categories\").then(res=>{\n            console.log(res.data);\n            setCategory(res.data);\n        })\n    },[])\nAnyone please describe this code</pre>',6,'email1@gmail.com','2024-01-10'),(30,'<pre>for (int i = 0; i < 5; i++) {\n  System.out.println(i);\n}</pre>',8,'email1@gmail.com','2024-01-10');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(150) NOT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anmoldeep@rediffmail.com','Anmol Bhola','7878@','2342342341'),('email1@gmail.com','User 1','12345','9988765432'),('kiratsingh4@gmail.com','Kirat Singh','223344','9988765234'),('nir65@yahoomail.com','Nir Kentt','000','9988765654'),('qwerty@gmail.com','Qwerty','9876','9988643298'),('taniaahuja.2389@gmail.com','tania','1231234','09988278402');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 14:09:12
