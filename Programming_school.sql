-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: Programming_school
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `description` text COLLATE utf8_polish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'task1','descritpion1'),(3,'aaa','ddd'),(4,'task4','descritpion2'),(5,'task5','descritpion2'),(6,'task6','descritpion2'),(7,'task7','descritpion2'),(8,'task8','descritpion2'),(9,'task9','descritpion2'),(10,'task10','descritpion2'),(11,'exercise','tilte'),(12,'exercise','title'),(13,'exerciseeeeeee','exxxx'),(14,'new','new');
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solution`
--

DROP TABLE IF EXISTS `solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solution` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `exercise_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `description` text COLLATE utf8_polish_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `exercise_id` (`exercise_id`),
  CONSTRAINT `solution_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `solution_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solution`
--

LOCK TABLES `solution` WRITE;
/*!40000 ALTER TABLE `solution` DISABLE KEYS */;
INSERT INTO `solution` VALUES (5,1,1,'2020-06-14 08:45:21','2020-12-22 08:45:21','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\nimport java.io.PrintWriter;\nimport java.util.ArrayList;\nimport java.util.Arrays;\nimport java.util.List;\nimport java.util.Map;\n\n@WebServlet(\"/get2\")\npublic class Get2 extends HttpServlet {\n\n    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n\n       Map<String, String[]> parMap = request.getParameterMap();\n\n       for(Map.Entry<String, String[]> entry: parMap.entrySet()){\n           String key = entry.getKey();\n           String[] value = entry.getValue();\n\n           String output = Arrays.toString(value);\n           response.getWriter().println(key + \": \");\n           response.getWriter().println(output + \"\\n\");\n       }\n    }\n}\n\n'),(8,4,3,'2020-12-19 08:45:38','2020-12-19 08:45:38','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\nimport java.io.PrintWriter;\n\n@WebServlet(\"/get3\")\npublic class Get3 extends HttpServlet {\n    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n        String[] numbers = request.getParameterValues(\"number\");\n        String id = request.getParameter(\"id\");\n\n        String output = String.format(\"%s\", id);\n        response.getWriter().println(output);\n\n        for (int i = 0; i <= numbers.length; i++) {\n            response.getWriter().println(numbers[i]);\n        }\n    }\n}\n'),(10,5,4,'2020-01-19 08:45:51','2020-12-26 08:45:51','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\n\n@WebServlet(\"/servlet31\")\npublic class Servlet31 extends HttpServlet {\n    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n        String cash = request.getParameter(\"cash\");\n        double amount = Double.parseDouble(request.getParameter(\"amount\"));\n\n\n        if (cash.equals(\"eurusd\")) {\n            amount = amount / 1.11;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* EUR -> USD: \", amount, \"USD</h3>\"));\n\n        }\n        if (cash.equals(\"usdeur\")) {\n            amount = amount * 1.11;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* USD -> EUR: \", amount, \"EUR</h3>\"));\n        }\n        if (cash.equals(\"plneur\")) {\n            amount = amount / 4.27;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* PLN -> EUR: \", amount, \"EUR</h3>\"));\n        }\n        if (cash.equals(\"eurpln\")) {\n            amount = amount * 4.27;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* EUR -> PLN: \", amount, \"PLN</h3>\"));\n        }\n        if (cash.equals(\"plnusd\")) {\n            amount = amount / 3.86;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* PLN -> USD: \", amount, \"USD</h3>\"));\n        }\n        if (cash.equals(\"usdpln\")) {\n            amount = amount * 3.86;\n            response.getWriter().println(String.format(\"%s %.2f %s\", \"<h3>* USD -> PLN: \", amount, \"PLN</h3>\"));\n        }\n    }\n}\n'),(12,6,5,'2020-09-21 08:46:00','2020-12-19 08:46:00','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\nimport java.io.PrintWriter;\n\n@WebServlet(\"/formularz\")\npublic class Formularz extends HttpServlet {\n    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n        String name = request.getParameter(\"userName\");\n        String surname = request.getParameter(\"userSurname\");\n        PrintWriter printWriter = response.getWriter();\n        printWriter.println(\"Imie: \" + name + \"\\nNazwisko: \" + surname);\n    }\n}\n'),(13,7,5,'2020-05-05 08:46:03','2020-12-19 08:46:03','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\nimport java.io.PrintWriter;\n\n@WebServlet(\"/table_HTML\")\npublic class Table_HTML extends HttpServlet {\n    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n        Object[][] inits = {{\"\", \"X\", \"Y\", \"Z\"}, {1, 1, 2, 3,}, {2, 4, 5, 6}, {3, 7, 8, 9}, {4, 10, 11, 12}};\n        PrintWriter printWriter = response.getWriter();\n        printWriter.println(array2HTML(inits));\n    }\n\n    public static String array2HTML(Object[][] array) {\n\n        StringBuilder html = new StringBuilder(\"<table>\");\n        for (Object elem : array[0]\n        ) {\n            html.append(\"<th>\" + elem.toString() + \"</th>\");\n        }\n        for (int i = 0; i < array.length; i++) {\n            Object[] row = array[i];\n            html.append(\"<tr>\");\n            for (Object elem : row\n            ) {\n                html.append(\"<td>\" + elem.toString() + \"</td>\");\n            }\n            html.append(\"</tr>\");\n        }\n        html.append(\"</table>\");\n        return html.toString();\n    }\n}\n'),(15,8,6,'2020-12-19 08:46:11','2020-12-19 08:46:11','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport javax.servlet.http.HttpSession;\nimport java.io.IOException;\nimport java.io.PrintWriter;\n\n@WebServlet(\"showAllSessions\")\npublic class Session3All extends HttpServlet {\n    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n\n        HttpSession session = request.getSession();\n        response.getWriter().println(printForm());\n        String key = request.getParameter(\"key\");\n        String value = request.getParameter(\"value\");\n        session.setAttribute(key, value);\n\n    }\n    private String printForm(){\n        return \"<form action=\\\"\\\" method=\\\"POST\\\">\\n\" +\n                \"        <label>\\n\" +\n                \"            Klucz:\\n\" +\n                \"            <input type=\\\"text\\\" name=\\\"key\\\">\\n\" +\n                \"        </label>\\n\" +\n                \"        <label>\\n\" +\n                \"            Wartość:\\n\" +\n                \"            <input type=\\\"text\\\" name=\\\"value\\\">\\n\" +\n                \"        </label>\\n\" +\n                \"        <input type=\\\"submit\\\">\\n\" +\n                \"    </form>\";\n    }\n\n}\n'),(16,1,4,'2018-01-11 20:01:30','2021-01-11 20:01:38','import javax.servlet.ServletException;\nimport javax.servlet.annotation.WebServlet;\nimport javax.servlet.http.HttpServlet;\nimport javax.servlet.http.HttpServletRequest;\nimport javax.servlet.http.HttpServletResponse;\nimport javax.servlet.http.HttpSession;\nimport java.io.IOException;\nimport java.io.PrintWriter;\n\n@WebServlet(\"showAllSessions\")\npublic class Session3All extends HttpServlet {\n    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {\n\n        HttpSession session = request.getSession();\n        response.getWriter().println(printForm());\n        String key = request.getParameter(\"key\");\n        String value = request.getParameter(\"value\");\n        session.setAttribute(key, value);\n\n    }\n    private String printForm(){\n        return \"<form action=\\\"\\\" method=\\\"POST\\\">\\n\" +\n                \"        <label>\\n\" +\n                \"            Klucz:\\n\" +\n                \"            <input type=\\\"text\\\" name=\\\"key\\\">\\n\" +\n                \"        </label>\\n\" +\n                \"        <label>\\n\" +\n                \"            Wartość:\\n\" +\n                \"            <input type=\\\"text\\\" name=\\\"value\\\">\\n\" +\n                \"        </label>\\n\" +\n                \"        <input type=\\\"submit\\\">\\n\" +\n                \"    </form>\";\n    }\n\n}\n');
/*!40000 ALTER TABLE `solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,'begginers'),(2,'srednia'),(3,'zaawansowana'),(4,'fa'),(5,'namki'),(6,'skowroneczki');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `userName` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `user_group` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_group` (`user_group`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_group`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mail4','Michał','password2',1),(2,'somenewwwwmail','user','paaasss',3),(3,'mail6','Kacper','password2',1),(4,'mail7','Julian','password2',2),(5,'mail8','Julia','password2',2),(6,'mail10','Judyta','password2',3),(7,'mail11','Joanna','password2',3),(8,'mail13','kacper','paswordzik',4),(9,'kacper@gamil.com','Kacper','kooowalsk',3),(10,'kamilk@gmail.com','Kamil','kaakkd',3),(11,'konrad@gmail.com','Konrad','konradp',3),(12,'marcin@malenczuk','Marcin','marcinm',3),(13,'mail','sda','$2a$10$pYLbHpGpeFCymfbDLSeOKOZGHBeqNemvBs2Jcb46GHjehV9LWNFFq',3),(14,'kosmo','kosmo123','$2a$10$e5mJRnfYUFE/UKDudEJWiucS3npxEdmfsXAON.opYGmS5v15D330u',3),(16,'KonradMichalczewski','KonradM','$2a$10$1nmykvwllfMNjpn.0W01tuQ5nt1lA7CDXSBKkXySoXZsuxfo7nuR2',3),(17,'kamilo','kamilo','$2a$10$JBw71wYtVvBRfPWzR6dFke6/NQijDGp.dEsooMq3sK1fp46qkhwfO',2);
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

-- Dump completed on 2021-01-12 21:24:13
