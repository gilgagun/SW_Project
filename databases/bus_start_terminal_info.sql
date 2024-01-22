-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `start_terminal_info`
--

DROP TABLE IF EXISTS `start_terminal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `start_terminal_info` (
  `ID` int DEFAULT NULL,
  `start_terminal_name` text,
  `start_terminal_address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start_terminal_info`
--

LOCK TABLES `start_terminal_info` WRITE;
/*!40000 ALTER TABLE `start_terminal_info` DISABLE KEYS */;
INSERT INTO `start_terminal_info` VALUES (1,'김포공항정류소','서울특별시 강서구 공항동 1373 서울특별시 강서구 하늘길 111'),(2,'동서울종합터미널','서울특별시 광진구 구의동 546-1 동서울종합터미널 서울특별시 광진구 강변역로 50 동서울종합터미널'),(3,'서울남부터미널','서울특별시 서초구 서초동 1446-1 서울특별시 서초구 효령로 292 서울남부터미널'),(4,'가락시장','서울특별시 송파구 송파대로 278-2'),(5,'잠실역시외버스정류소','서울특별시 송파구 신천동 3 서울특별시 송파구 송파대로 552-2'),(6,'잠실역정류소','서울특별시 송파구 잠실동 27 서울특별시 송파구 송파대로 567'),(7,'장지역','서울특별시 송파구 충민로2길 8'),(8,'상봉시외버스터미널','서울특별시 중랑구 상봉동 83-8 서울특별시 중랑구 상봉로 117'),(9,'가평시외버스터미널','경기도 가평군 가평읍 대곡리 168-9 경기도 가평군 가평읍 가화로 51'),(10,'대성리','경기도 가평군 청평면 경춘로 89'),(11,'청평터미널','경기도 가평군 청평면 청평리 432-48 경기도 가평군 청평면 청평중앙로 54 청평공용버스터미널'),(12,'화정터미널','경기도 고양시 덕양구 화정동 974 경기도 고양시 덕양구 화신로260번길 74'),(13,'강촌8단지','경기도 고양시 일산동구 강송로217번길 53'),(14,'고양종합터미널','경기도 고양시 일산동구 백석동 1242 경기도 고양시 일산동구 중앙로 1036'),(15,'마두역','경기도 고양시 일산동구 중앙로 1177-1'),(16,'안곡중학교','경기도 고양시 일산동구 하늘마을로 93'),(17,'안산공원(중)','경기도 고양시 일산동구 중앙로 1080'),(18,'엠블호텔','경기도 고양시 일산동구 태극로 8'),(19,'위시티(3,4단지)','경기도 고양시 일산동구 위시티4로 45'),(20,'위시티입구','경기도 고양시 일산동구 위시티로 24'),(21,'중산지구(10단지)','경기도 고양시 일산동구 탄중로 426'),(22,'풍동','경기도 고양시 일산동구 풍동 150-22'),(23,'호수공원관리사무소','경기도 고양시 일산동구 호수로 606'),(24,'일산노인복지','경기도 고양시 일산서구 호수로 712'),(25,'킨텍스','경기도 고양시 일산서구 고양대로 283'),(26,'킨텍스제1전시장','경기도 고양시 일산서구 일산로 808'),(27,'광명종합터미널','경기도 광명시 일직동 171-1 경기도 광명시 광명역로 51'),(28,'철산역정류소','경기도 광명시 철산동 241-2 경기도 광명시 철산로 43'),(29,'광주종합터미널','경기도 광주시 경안동 25-3 경기도 광주시 광주대로 30'),(30,'구리공항버스정류장','경기도 구리시 경춘로 254'),(31,'구리시외버스정류장(하행)','경기도 구리시 수택동 531 경기도 구리시 경춘로 254'),(32,'동구동주민센터','경기도 구리시 동구릉로 149'),(33,'군포산본터미널','경기도 군포시 산본동 1125-1'),(34,'김포시외버스터미널','경기도 김포시 북변동 380-6 경기도 김포시 중구로 75'),(35,'금곡동구종점','경기도 남양주시 경춘로 979'),(36,'도농터미널','경기도 남양주시 다산동 4111-6 경기도 남양주시 경춘로 426'),(37,'마석정류소','경기도 남양주시 화도읍 창현리 481-1 경기도 남양주시 화도읍 경춘로 1951-3'),(38,'천마산휴게소','경기도 남양주시 화도읍 마치로 255'),(39,'평내농협','경기도 남양주시 경춘로 1299'),(40,'부천종합터미널','경기도 부천시 상동 539-1 경기도 부천시 송내대로 239'),(41,'미금역','경기도 성남시 분당구 성남대로 165'),(42,'서현역','경기도 성남시 분당구 황새울로360번길 43'),(43,'성남종합버스터미널','경기도 성남시 분당구 야탑동 341 경기도 성남시 분당구 성남대로925번길 16 성남터미널'),(44,'수내역','경기도 성남시 분당구 내정로173번길 49'),(45,'야탑역','경기도 성남시 분당구 성남대로 932'),(46,'오리역','경기도 성남시 분당구 성남대로 55'),(47,'이매','경기도 성남시 분당구 양현로 138'),(48,'정자역','경기도 성남시 분당구 성남대로 333'),(49,'성남세이브존','경기도 성남시 수정구 산성대로 337'),(50,'모란시장정류소','경기도 성남시 중원구 성남동 1575 경기도 성남시 중원구 성남대로 1147-1'),(51,'서수원시외버스터미널','경기도 수원시 권선구 구운동 925 경기도 수원시 권선구 수인로 291 서수원버스터미널'),(52,'수원종합버스터미널','경기도 수원시 권선구 권선동 1189 경기도 수원시 권선구 경수대로 270'),(53,'광교중앙역','경기도 수원시 영통구 도청로 45'),(54,'수원광교박물관','경기도 수원시 영통구 센트럴파크로127번길 80-10'),(55,'영통터미널','경기도 수원시 영통구 매탄동 1267-7 경기도 수원시 영통구 효원로 397'),(56,'우만동터미널','경기도 수원시 장안구 연무동 246-24 경기도 수원시 장안구 창룡대로 185'),(57,'한일타운터미널','경기도 수원시 장안구 조원동 881 경기도 수원시 장안구 경수대로976번길 22'),(58,'동수원터미널','경기도 수원시 팔달구 우만동 144-3'),(59,'수원역공항터미널','경기도 수원시 팔달구 매산로1가 11-12'),(60,'수원역터미널','경기도 수원시 팔달구 매산로1가 57-32 경기도 수원시 팔달구 덕영대로 933'),(61,'아주대터미널','경기도 수원시 팔달구 우만동 85-10 경기도 수원시 팔달구 중부대로 241-2'),(62,'모아아파트','경기도 시흥시 정왕신길로49번길 63'),(63,'배곧중심상가','경기도 시흥시 배곧3로 86'),(64,'시화관광호텔','경기도 시흥시 평안상가4길 17'),(65,'시화이마트','경기도 시흥시 정왕대로 210'),(66,'시흥ABC행복타운','경기도 시흥시 호현로103번길 13'),(67,'시흥종합버스터미널','경기도 시흥시 정왕동 1745-6 경기도 시흥시 옥구공원로 225'),(68,'월곶GS주유소','경기도 시흥시 서해안로 804-1'),(69,'샛뿔','경기도 안산시 단원구 신각길 142'),(70,'안산역','경기도 안산시 단원구 중앙대로 453'),(71,'안산버스터미널','경기도 안산시 상록구 성포동 590 경기도 안산시 상록구 항가울로 410'),(72,'공도정류소','경기도 안성시 공도읍 용두리 273-1 경기도 안성시 공도읍 공도로 51-7'),(73,'동아방송대정류소','경기도 안성시 삼죽면 진촌리 632-18 경기도 안성시 삼죽면 동아예대길 47'),(74,'두원대정류소','경기도 안성시 죽산면 장원리'),(75,'안성시민회관터미널','경기도 안성시 낙원동 68-24 경기도 안성시 장기로 109'),(76,'안성종합버스터미널','경기도 안성시 가사동 182 경기도 안성시 비봉로 85 안성종합버스터미널'),(77,'용이동(평택)','경기도 안성시 공도읍 서동대로 3946'),(78,'일죽시외버스터미널','경기도 안성시 일죽면 송천리 27-1 경기도 안성시 일죽면 주래본죽로 25'),(79,'죽산시외버스터미널','경기도 안성시 죽산면 죽산리 123-4 경기도 안성시 죽산면 죽주로 290'),(80,'범계공항터미널','경기도 안양시 동안구 비산동 1104-1 경기도 안양시 동안구 시민대로159번길 25'),(81,'호계사거리','경기도 안양시 동안구 흥안대로 126'),(82,'호계시외버스정류장','경기도 안양시 동안구 호계동 918-24 대명빌딩1층 경기도 안양시 동안구 경수대로 711 대명빌딩1층'),(83,'관악역터미널','경기도 안양시 만안구 석수동 168-27 경기도 안양시 만안구 경수대로 1234'),(84,'안양시외버스정류장(하행)','경기도 안양시 만안구 안양동 695-208 경기도 안양시 만안구 안양로 339'),(85,'안양역시외버스터미널','경기도 안양시 만안구 안양동 668-29 경기도 안양시 만안구 안양로314번길 27'),(86,'송추계곡느티나무','경기도 양주시 장흥면 호국로 552'),(87,'양평시외버스터미널','경기도 양평군 양평읍 공흥리 484-2 경기도 양평군 양평읍 시민로 91'),(88,'여주종합터미널','경기도 여주시 홍문동 274-1 경기도 여주시 세종로 85'),(89,'태평시외버스터미널','경기도 여주시 가남읍 태평리 172 경기도 여주시 가남읍 태평로 56 가남터미널'),(90,'연천공영버스터미널','경기도 연천군 연천읍 옥산리 459-11 경기도 연천군 연천읍 문화로 90'),(91,'오산역환승센터','경기도 오산시 오산동 603-116 경기도 오산시 역광장로 59'),(92,'강남대역','경기도 용인시 기흥구 중부대로 563'),(93,'기흥역시외버스정류소','경기도 용인시 기흥구 구갈동 227-25 경기도 용인시 기흥구 중부대로 460 기흥역'),(94,'보정역,보정고','경기도 용인시 기흥구 용구대로 2563'),(95,'세종그랑시아','경기도 용인시 기흥구 기흥로 26-1'),(96,'신갈고속시외버스정류소','경기도 용인시 기흥구 신갈동 624'),(97,'신갈역','경기도 용인시 기흥구 기흥로 136'),(98,'신갈영덕시외버스정류장','경기도 용인시 기흥구 영덕동 47-6'),(99,'어정역','경기도 용인시 기흥구 어정로 123'),(100,'연원마을(구성역)','경기도 용인시 기흥구 용구대로 2398'),(101,'영통입구터미널','경기도 용인시 기흥구 영덕동 1053-10 경기도 용인시 기흥구 석현로12번길 12-1'),(102,'참솔마을','경기도 용인시 기흥구 동백죽전대로 283'),(103,'한국민속촌','경기도 용인시 기흥구 민속촌로 93'),(104,'흥덕지구(삼성사거리)','경기도 용인시 기흥구 중부대로 2'),(105,'광교마을,린병원','경기도 용인시 수지구 포은대로 37'),(106,'죽전역,포은아트홀','경기도 용인시 수지구 포은대로 523'),(107,'풍덕고교사거리','경기도 용인시 수지구 풍덕천로 52'),(108,'현대홈타운','경기도 용인시 수지구 포은대로 237'),(109,'백암정류소','경기도 용인시 처인구 백암면 백암리 371-9 경기도 용인시 처인구 백암면 백암로 214-2'),(110,'용인공용버스터미널','경기도 용인시 처인구 김량장동 23-1 경기도 용인시 처인구 중부대로 1486 용인공용버스터미널'),(111,'고천터미널','경기도 의왕시 고천동 286-3 경기도 의왕시 안골다리길 5'),(112,'의왕','경기도 의왕시 경수대로 249'),(113,'대원여객차고지','경기도 의정부시 평화로 692'),(114,'범골입구','경기도 의정부시 경의로 17'),(115,'신도브래뉴아파트','경기도 의정부시 동일로 660'),(116,'우체국','경기도 의정부시 시민로 35'),(117,'의정부부대찌개거리','경기도 의정부시 호국로 1300'),(118,'의정부시외버스터미널','경기도 의정부시 금오동 369-5 경기도 의정부시 동일로 640'),(119,'의정부시청','경기도 의정부시 의정로 69'),(120,'의정부역','경기도 의정부시 평화로 535-2'),(121,'흥선브라운스톤아파트','경기도 의정부시 호국로 1145'),(122,'아미리정류소','경기도 이천시 부발읍 아미리 726-34'),(123,'이천종합터미널','경기도 이천시 중리동 219-1 경기도 이천시 이섭대천로 1200 종합버스터미널'),(124,'장호원시외버스터미널','경기도 이천시 장호원읍 장호원리 363-2 경기도 이천시 장호원읍 장감로77번길 13-7'),(125,'문산고속버스정류소','경기도 파주시 문산읍 문산리 17-528'),(126,'송탄시외버스터미널','경기도 평택시 지산동 773-7 경기도 평택시 지산로 25'),(127,'안중버스터미널','경기도 평택시 안중읍 현화리 838 경기도 평택시 안중읍 안현로서9길 14-4'),(128,'평택대정류소','경기도 평택시 소사동 4-3 경기도 평택시 서동대로 3826'),(129,'평택시외버스터미널','경기도 평택시 평택동 185-245 경기도 평택시 평택로 31'),(130,'이동정류소','경기도 포천시 이동면 장암리 477-18 경기도 포천시 이동면 화동로 2103'),(131,'일동버스터미널','경기도 포천시 일동면 기산리 91-19'),(132,'포천시외버스터미널','경기도 포천시 신읍동 42-11 경기도 포천시 중앙로 126-7'),(133,'하남시버스환승공영차고지','경기도 하남시 창우동 224-1 경기도 하남시 창우로 146'),(134,'향남환승터미널','경기도 화성시 향남읍 행정리 472-1 경기도 화성시 향남읍 향남로 424'),(135,'인천종합터미널','인천광역시 미추홀구 관교동 15 인천광역시 미추홀구 연남로 35'),(136,'송도시외버스환승센터','인천광역시 연수구 송도동 91'),(137,'인천공항2터미널','인천광역시 중구 운서동 2868 인천광역시 중구 공항로 272'),(138,'인천공항터미널','인천광역시 중구 운서동 2851 인천광역시 중구 공항로 272'),(139,'대전복합터미널','대전광역시 동구 용전동 63-3 대전광역시 동구 동서대로 1689'),(140,'관저.건양대병원정류소','대전광역시 서구 관저동 999 대전광역시 서구 관저북로 14'),(141,'대전도마동터미널','대전광역시 서구 도마동 190-12 대전광역시 서구 계백로 1383'),(142,'대전청사시외버스둔산정류소','대전광역시 서구 둔산동 920 정부대전청사 대전광역시 서구 청사로 189 정부대전청사'),(143,'북대전IC시외버스정류소','대전광역시 유성구 화암동 160-11'),(144,'유성시외버스정류소','대전광역시 유성구 구암동 95-4'),(145,'자운대터미널','대전광역시 유성구 신봉동 5-2 대전광역시 유성구 자운로221번길 98'),(146,'대전서남부터미널','대전광역시 중구 유천동 465-1 대전광역시 중구 유등천동로 346'),(147,'대전용두동','대전광역시 중구 용두동 132-2'),(148,'서부정류장','대구광역시 남구 대명동 1135-1 대구광역시 남구 월배로 496'),(149,'현풍시외버스터미널','대구광역시 달성군 현풍읍 성하리 402-3 대구광역시 달성군 현풍읍 현풍중앙로 119 현풍시외버스정류장'),(150,'동대구터미널','대구광역시 동구 신천동 1506 대구광역시 동구 동부로 149'),(151,'시외고속버스용계정류소','대구광역시 동구 용계동'),(152,'대구북부시외버스터미널','대구광역시 서구 비산동 1856-3 대구광역시 서구 서대구로 295'),(153,'공업탑시외버스터미널','울산광역시 남구 신정동 1863 울산광역시 남구 삼산로 28'),(154,'신복환승센터','울산광역시 남구 무거동 327-21 울산광역시 남구 북부순환도로1번길 1-1'),(155,'울산고속버스터미널','울산광역시 남구 삼산동 1480-1 롯데백화점(울산점) 울산광역시 남구 삼산로 288 롯데백화점(울산점)'),(156,'울산시외버스터미널','울산광역시 남구 삼산동 1481-1 울산광역시 남구 화합로 133'),(157,'울산공항터미널','울산광역시 북구 송정동 522 울산광역시 북구 산업로 1103'),(158,'효문터미널','울산광역시 북구 진장동 647-5'),(159,'언양임시시외버스터미널','울산광역시 울주군 언양읍 남부리 73 울산광역시 울주군 언양읍 언양로 22'),(160,'김해공항정류소','부산광역시 강서구 대저2동'),(161,'부산종합버스터미널','부산광역시 금정구 노포동 133 종합버스터미널 부산광역시 금정구 중앙대로 2238 노포동종합버스터미널'),(162,'좌천정류소','부산광역시 기장군 장안읍 좌천리 256-5 부산광역시 기장군 장안읍 좌천로 76'),(163,'동래시외버스정류소','부산광역시 동래구 온천동 1437-39 부산광역시 동래구 중앙대로1325번길 24'),(164,'부산서부버스터미널','부산광역시 사상구 괘법동 533-1 부산광역시 사상구 사상로 201'),(165,'부산신평터미널','부산광역시 사하구 신평동 647-4 부산광역시 사하구 하신번영로 127'),(166,'해운대시외버스터미널','부산광역시 해운대구 우동 592-23'),(167,'광주송정역시외버스정류소','광주광역시 광산구 송정동 1003-1 광주광역시 광산구 상무대로 201'),(168,'우산동(하남)시외버스정류장(승차)','광주광역시 광산구 우산동 1612-2'),(169,'광주남부시외버스정류소','광주광역시 남구 진월동 424-6 광주광역시 남구 서문대로 637'),(170,'소태터미널','광주광역시 동구 용산동 277 광주광역시 동구 남문로 575'),(171,'학동시외버스정류소','광주광역시 동구 학동 46-8'),(172,'문화동시외버스정류소','광주광역시 북구 두암1동 859-9 광주광역시 북구 동문대로 120'),(173,'운암동 시외버스정류소','광주광역시 북구 운암동 434-50 광주광역시 북구 북문대로 48'),(174,'광주종합버스터미널','광주광역시 서구 광천동 49-1 광주광역시 서구 무진대로 904'),(175,'김대중컨벤션센터','광주광역시 서구 상무누리로 33'),(176,'세종고속시외버스터미널','세종특별자치시 대평동 269-52 세종특별자치시 갈매로 37-12'),(177,'세종청사정류소(상행)','세종특별자치시 어진동 561 세종특별자치시 한누리대로 456 정부세종청사 고속시외버스정류장'),(178,'강릉시외버스터미널','강원도 강릉시 홍제동 992-1 강릉시외버스터미널 강원도 강릉시 하슬라로 27 강릉시외버스터미널'),(179,'주문진고속버스종합터미널','강원도 강릉시 주문진읍 교항리 119-11 강원도 강릉시 주문진읍 주문로 4'),(180,'간성시외버스터미널','강원도 고성군 간성읍 신안리 250-1 강원도 고성군 간성읍 간성로 24'),(181,'거진종합버스터미널','강원도 고성군 거진읍 거진리 304-6 강원도 고성군 거진읍 거진길 21-2'),(182,'대진시외버스터미널','강원도 고성군 현내면 철통리 산12-1 강원도 고성군 현내면 금강산로 196'),(183,'동해시종합버스터미널','강원도 동해시 평릉동 166-4 강원도 동해시 동해대로 5443'),(184,'삼척종합버스터미널','강원도 삼척시 남양동 341 강원도 삼척시 봉황로 9-22'),(185,'임원','강원도 삼척시 원덕읍 삼척로 1216'),(186,'장호','강원도 삼척시 근덕면 삼척로 2053-15'),(187,'호산시외버스터미널','강원도 삼척시 원덕읍 호산리 193-6 강원도 삼척시 원덕읍 삼척로 381'),(188,'물치정류소','강원도 속초시 대포동 807-2 강원도 속초시 동해대로 3677'),(189,'속초시외버스터미널','강원도 속초시 동명동 261-16 속초시외버스터미널 강원도 속초시 장안로 16 속초시외버스터미널'),(190,'양구시외버스터미널','강원도 양구군 양구읍 상리 327-2 강원도 양구군 양구읍 중심로 196 양구터미널'),(191,'양구정중앙터미널','강원도 양구군 국토정중앙면 청리 902-12 강원도 양구군 국토정중앙면 정중앙로 610'),(192,'낙산종합버스터미널','강원도 양양군 강현면 주청리 120-4 강원도 양양군 강현면 동해대로 3087'),(193,'양양시외종합터미널','강원도 양양군 양양읍 남문리 3-52 강원도 양양군 양양읍 양양로 25'),(194,'영월시외버스터미널','강원도 영월군 영월읍 하송리 187-1 강원도 영월군 영월읍 중앙1로 23'),(195,'문막정류소','강원도 원주시 문막읍 건등리 206-5 강원도 원주시 문막읍 여원로 2175'),(196,'원주시외버스터미널','강원도 원주시 단계동 877-1 원주시외버스터미널 강원도 원주시 서원대로 171 원주시외버스터미널'),(197,'신남시외버스터미널','강원도 인제군 남면 신남리 524 강원도 인제군 남면 신남로 23'),(198,'용대리정류소','강원도 인제군 북면 용대리 544-4 강원도 인제군 북면 미시령로 1142'),(199,'원통공용버스터미널','강원도 인제군 북면 원통리 657-11 강원도 인제군 북면 원통로147번길 31'),(200,'인제시외버스터미널','강원도 인제군 인제읍 상동리 96-3 강원도 인제군 인제읍 비봉로 43'),(201,'현리버스터미널','강원도 인제군 기린면 현리 651-3 강원도 인제군 기린면 내린천로 4024'),(202,'고한사북공영버스터미널','강원도 정선군 고한읍 고한리 273-12 강원도 정선군 고한읍 지장천로 856'),(203,'정선시외버스터미널','강원도 정선군 정선읍 북실리 757-3 강원도 정선군 정선읍 정선로 1226'),(204,'신수리정류소','강원도 철원군 서면 자등리 730-6 강원도 철원군 서면 자등로 581'),(205,'신철원시외버스터미널','강원도 철원군 갈말읍 신철원리 977-8 강원도 철원군 갈말읍 명성로 154 신철원버스터미널'),(206,'강촌','강원도 춘천시 서면 경춘로 1166'),(207,'당림리','강원도 춘천시 서면 경춘로 799-13'),(208,'두미르아파트','강원도 춘천시 영서로 2798'),(209,'사북면사','강원도 춘천시 사북면 신포리 398-2'),(210,'서천1리','강원도 춘천시 남산면 서백길 109'),(211,'서천2리','강원도 춘천시 남산면 서천길 7'),(212,'소양로배터','강원도 춘천시 소양로2가 소양로 178'),(213,'안보리','강원도 춘천시 서면 율장길 15'),(214,'어리고개','강원도 춘천시 사북면 영서로 4969'),(215,'원평리','강원도 춘천시 사북면 말고개길 14-9'),(216,'지촌(춘천)','강원도 춘천시 사북면 영서로 4830'),(217,'춘천시외버스터미널','강원도 춘천시 온의동 511 강원도 춘천시 경춘로 2341'),(218,'춘천역','강원도 춘천시 공지로 591'),(219,'현대아파트','강원도 춘천시 영서로 2899'),(220,'현지사','강원도 춘천시 사북면 지촌리 92-3'),(221,'태백시외버스터미널','강원도 태백시 황지동 270-1 강원도 태백시 광장로 6'),(222,'미탄','강원도 평창군 미탄면 미탄중앙로 23'),(223,'장평버스정류장','강원도 평창군 용평면 장평리 344 강원도 평창군 용평면 금송길 6 장평터미널'),(224,'진부공용버스정류장','강원도 평창군 진부면 하진부리 119-1 강원도 평창군 진부면 청송로 110 진부터미널'),(225,'평창버스터미널','강원도 평창군 평창읍 하리 58-5 강원도 평창군 평창읍 백오1길 3'),(226,'횡계시외버스공용정류장','강원도 평창군 대관령면 횡계리 366-1 강원도 평창군 대관령면 대관령로 78'),(227,'내면','강원도 홍천군 내면 창촌로 64'),(228,'홍천터미널','강원도 홍천군 홍천읍 희망리 393 강원도 홍천군 홍천읍 홍천로 301'),(229,'다목시외버스터미널','강원도 화천군 상서면 다목리 497-1 강원도 화천군 상서면 수피령로 1297'),(230,'사창리터미널','강원도 화천군 사내면 사창리 420-1 강원도 화천군 사내면 사내로 10-13'),(231,'서오지리','강원도 화천군 하남면 서오지리길 6-1'),(232,'원천(화천)','강원도 화천군 하남면 영서로 5494'),(233,'화천공영버스터미널','강원도 화천군 화천읍 하리 43-53 강원도 화천군 화천읍 상승로 38-5'),(234,'공근','강원도 횡성군 공근면 학담시장1길 16'),(235,'둔내','강원도 횡성군 둔내면 경강로둔방10길 12-1'),(236,'새말정류소','강원도 횡성군 우천면 우항리 312-10'),(237,'횡성시외버스터미널','강원도 횡성군 횡성읍 읍하리 597 강원도 횡성군 횡성읍 횡성로 377'),(238,'구인사정류소','충청북도 단양군 영춘면 백자리 207 충청북도 단양군 영춘면 구인사길 60'),(239,'단양상진터미널','충청북도 단양군 단양읍 상진리 788 충청북도 단양군 단양읍 삼봉로 123'),(240,'단양시외버스터미널','충청북도 단양군 단양읍 별곡리 569-1 충청북도 단양군 단양읍 수변로 111'),(241,'매포정류소','충청북도 단양군 매포읍 평동리 275-22 충청북도 단양군 매포읍 단양로 1908'),(242,'영춘공동정류소','충청북도 단양군 영춘면 하리 343-1 충청북도 단양군 영춘면 온달평강로 36'),(243,'보은시외버스터미널','충청북도 보은군 보은읍 삼산리 17 충청북도 보은군 보은읍 삼산남로 8'),(244,'속리산터미널','충청북도 보은군 속리산면 사내리 292-4 충청북도 보은군 속리산면 법주사로 216'),(245,'영동시외버스공용터미널','충청북도 영동군 영동읍 동정리 38-2 충청북도 영동군 영동읍 회동로 226'),(246,'감곡시외터미널','충청북도 음성군 감곡면 오향리 1001-24 충청북도 음성군 감곡면 장감로 187'),(247,'대소버스공동정류장','충청북도 음성군 대소면 오산리 101-4 충청북도 음성군 대소면 산내로 308 대소터미널빌딩'),(248,'생극터미널','충청북도 음성군 생극면 신양리 490-8 충청북도 음성군 생극면 음성로 1679-1'),(249,'음성공용버스터미널','충청북도 음성군 음성읍 읍내리 483-1 충청북도 음성군 음성읍 수정로 31'),(250,'혁신도시공용터미널(충북)','충청북도 음성군 맹동면 두성리 1504 충청북도 음성군 맹동면 원중로 1363'),(251,'세명대','충청북도 제천시 세명로 65'),(252,'제천버스터미널','충청북도 제천시 의림동 8-21 충청북도 제천시 칠성로10길 21'),(253,'증평시외버스터미널','충청북도 증평군 증평읍 교동리 28 증평 시외버스 터미널 충청북도 증평군 증평읍 광장로 89 증평 시외버스 터미널'),(254,'광혜원터미널','충청북도 진천군 광혜원면 광혜원리 92-1 충청북도 진천군 광혜원면 진광로 1563'),(255,'덕산진천정류소','충청북도 진천군 덕산읍 용몽리 594-9'),(256,'진천종합버스터미널','충청북도 진천군 진천읍 벽암리 652 진천터미널 충청북도 진천군 진천읍 중앙북1길 3 진천터미널'),(257,'미원정류소','충청북도 청주시 상당구 미원면 미원리 438-5 충청북도 청주시 상당구 미원면 미원시내2길 10'),(258,'남청주정류소','충청북도 청주시 서원구 분평동 335-1 충청북도 청주시 서원구 1순환로 1012'),(259,'청주사창정류소','충청북도 청주시 서원구 사창동 492-3 충청북도 청주시 서원구 1순환로 686'),(260,'청주공항정류소','충청북도 청주시 청원구 내수읍 입상리 산9-2 충청북도 청주시 청원구 내수읍 오창대로 980 청주국제공항'),(261,'청주북부터미널','충청북도 청주시 청원구 오창읍 양청리 821-4 충청북도 청주시 청원구 오창읍 중심상업로 7'),(262,'청주여객북부정류소','충청북도 청주시 청원구 우암동 323-21 충청북도 청주시 청원구 직지대로 874-2 상당빌딩'),(263,'청주시외버스터미널','충청북도 청주시 흥덕구 가경동 1449 충청북도 청주시 흥덕구 풍산로 6'),(264,'건국터미널','충청북도 충주시 단월동 305-11 충청북도 충주시 충원대로 268'),(265,'수안보','충청북도 충주시 수안보면 온천중앙길 25'),(266,'주덕정류소','충청북도 충주시 주덕읍 신양리 161-4 충청북도 충주시 주덕읍 신양로 125'),(267,'충주공용버스터미널','충청북도 충주시 칠금동 849 충청북도 충주시 봉계1길 49 충주공용버스터미널'),(268,'계룡금암정류소','충청남도 계룡시 금암동 166'),(269,'신도안정류소','충청남도 계룡시 신도안면 남선리 1308'),(270,'엄사터미널','충청남도 계룡시 엄사면 엄사리 282 충청남도 계룡시 엄사면 엄사중앙로 66'),(271,'공주산성정류소','충청남도 공주시 금성동 200-4 충청남도 공주시 미나리1길 6-8'),(272,'공주종합버스터미널','충청남도 공주시 신관동 609 충청남도 공주시 신관로 74'),(273,'광정정류소','충청남도 공주시 정안면 광정리 265 충청남도 공주시 정안면 정안중앙길 190'),(274,'동학사삼거리터미널','충청남도 공주시 반포면 학봉리 289-3 충청남도 공주시 반포면 동학사1로 131'),(275,'유구공용버스터미널','충청남도 공주시 유구읍 석남리 283-9 충청남도 공주시 유구읍 유구마곡사로 9'),(276,'인삼랜드휴게소(통영방향)고속버스환승정류소','충청남도 금산군 군북면 외부리 718 충청남도 금산군 군북면 어필각로 300'),(277,'논산버스터미널','충청남도 논산시 취암동 1045-1 충청남도 논산시 계백로 1000'),(278,'연무대시외버스정류장','충청남도 논산시 연무읍 동산리 880-7 충청남도 논산시 연무읍 동안로 865'),(279,'기지시정류소','충청남도 당진시 송악읍 기지시리 153-58 충청남도 당진시 송악읍 반촌로 98-2'),(280,'당진버스터미널','충청남도 당진시 수청동 979 충청남도 당진시 밤절로 149 당진공영버스터미널'),(281,'삽교천시외버스터미널','충청남도 당진시 신평면 운정리 181-6 충청남도 당진시 신평면 삽교천길 103 삽교터미널'),(282,'신평버스터미널','충청남도 당진시 신평면 거산리 173-17 충청남도 당진시 신평면 덕평로 1392'),(283,'합덕버스터미널','충청남도 당진시 합덕읍 운산리 293-35 충청남도 당진시 합덕읍 면천로 1724'),(284,'보령종합터미널','충청남도 보령시 궁촌동 347 충청남도 보령시 터미널길 8'),(285,'규암정류소','충청남도 부여군 규암면 합정리 575 충청남도 부여군 규암면 백제문로 386-6'),(286,'부여시외버스터미널','충청남도 부여군 부여읍 구아리 324-1 충청남도 부여군 부여읍 사비로 87'),(287,'고북정류소','충청남도 서산시 고북면 가구리 617-3 충청남도 서산시 고북면 고북1로 292'),(288,'서산공용버스터미널','충청남도 서산시 동문동 309-3 서산공용버스터미널 충청남도 서산시 안견로 190 서산공용버스터미널'),(289,'어송','충청남도 서산시 팔봉면 팔봉1로 20'),(290,'운산정류소','충청남도 서산시 운산면 용장리 379-5'),(291,'음암정류소','충청남도 서산시 음암면 도당리 1304-9 충청남도 서산시 음암면 운암로 389'),(292,'한서대','충청남도 서산시 해미면 한티로 319'),(293,'해미정류소','충청남도 서산시 해미면 읍내리 300-5 충청남도 서산시 해미면 남문5로 9'),(294,'서천시외버스터미널','충청남도 서천군 서천읍 군사리 184-21 충청남도 서천군 서천읍 서천로 29'),(295,'장항','충청남도 서천군 장항읍 장서로 78'),(296,'배방환승정류장','충청남도 아산시 배방읍 공수리 48-23 충청남도 아산시 배방읍 온천대로 2093-14'),(297,'봉강교정류소','충청남도 아산시 배방읍 북수리'),(298,'신창정류소','충청남도 아산시 신창면 읍내리 481-4 충청남도 아산시 신창면 온천대로 832-1'),(299,'아산시외버스터미널','충청남도 아산시 모종동 555-5 아산시외버스터미널복합시설 충청남도 아산시 번영로 225 아산시외버스터미널복합시설'),(300,'내포신도시고속시외버스정류소','충청남도 예산군 삽교읍 목리'),(301,'신례원정류소','충청남도 예산군 예산읍 신례원리 253-8'),(302,'예산종합터미널','충청남도 예산군 예산읍 산성리 647 충청남도 예산군 예산읍 금오대로 35-14 2동(기숙사동)'),(303,'기술대','충청남도 천안시 동남구 병천면 충절로 1588'),(304,'독립기념관터미널','충청남도 천안시 동남구 목천읍 남화리 230-1 충청남도 천안시 동남구 목천읍 독립기념관로 1'),(305,'목천터미널','충청남도 천안시 동남구 목천읍 서리 69-2 충청남도 천안시 동남구 목천읍 서리1길 38'),(306,'병천버스정류장','충청남도 천안시 동남구 병천면 병천리 191-15 충청남도 천안시 동남구 병천면 충절로 1757'),(307,'천안종합버스터미널','충청남도 천안시 동남구 신부동 363-2 충청남도 천안시 동남구 만남로 43'),(308,'정산','충청남도 청양군 정산면 칠갑산로 1912'),(309,'청양시외버스터미널','충청남도 청양군 청양읍 읍내리 208-4 충청남도 청양군 청양읍 중앙로 142 시외버스터미널'),(310,'남면정류소','충청남도 태안군 남면 신장리 396-6 충청남도 태안군 남면 남면로 100'),(311,'만리포정류소','충청남도 태안군 소원면 모항리 1323-355 충청남도 태안군 소원면 서해로 24'),(312,'안면버스터미널','충청남도 태안군 안면읍 승언리 1243-3 충청남도 태안군 안면읍 장터로 126-1'),(313,'창기리정류소','충청남도 태안군 안면읍 창기리 1092-6 충청남도 태안군 안면읍 안면대로 2119'),(314,'태안공용버스터미널','충청남도 태안군 태안읍 남문리 701 충청남도 태안군 태안읍 동백로 304'),(315,'갈산','충청남도 홍성군 갈산면 갈산로 127-1'),(316,'광천시외버스터미널','충청남도 홍성군 광천읍 광천리 391-11 충청남도 홍성군 광천읍 광천로273번길 11'),(317,'홍성종합터미널','충청남도 홍성군 홍성읍 고암리 1042 충청남도 홍성군 홍성읍 조양로247번길 9'),(318,'경산시외버스터미널','경상북도 경산시 중방동 863-11 경상북도 경산시 경안로 196 경산시외버스터미널'),(319,'대구대학교정류소','경상북도 경산시 진량읍 내리리 62-3'),(320,'영남대시외버스정류장','경상북도 경산시 대동 214-1 경상북도 경산시 대학로 280'),(321,'하양시외버스터미널','경상북도 경산시 하양읍 금락리 116-268 경상북도 경산시 하양읍 하양로 34'),(322,'경주고속버스터미널','경상북도 경주시 노서동 243-5 경상북도 경주시 태종로685번길 2'),(323,'경주시외버스터미널','경상북도 경주시 노서동 160-2 경상북도 경주시 강변로 184'),(324,'고령시외버스정류장','경상북도 고령군 대가야읍 헌문리 19-1 경상북도 고령군 대가야읍 중앙로 29'),(325,'공단정류소','경상북도 구미시 공단동 200-1 경상북도 구미시 수출대로 128'),(326,'구미종합버스터미널','경상북도 구미시 원평동 1073-1 경상북도 구미시 송원동로 72'),(327,'주공터미널','경상북도 구미시 공단동 262-4 경상북도 구미시 산호대로 179'),(328,'군위시외버스공용터미널','경상북도 군위군 군위읍 동부리 670-8 경상북도 군위군 군위읍 중앙길 12 군위버스터미널'),(329,'김천공용버스터미널','경상북도 김천시 성내동 38-1 경상북도 김천시 자산로 150'),(330,'문경공용버스정류장','경상북도 문경시 문경읍 하리 202-1 경상북도 문경시 문경읍 새재로 458'),(331,'점촌북부터미널','경상북도 문경시 흥덕동 237-48 경상북도 문경시 중앙로 163-1'),(332,'점촌시외고속버스터미널','경상북도 문경시 모전동 115-2 경상북도 문경시 모전로 54 점촌시외버스터미널'),(333,'법전버스정류소','경상북도 봉화군 법전면 법전리 245-4'),(334,'봉화공용버스정류장','경상북도 봉화군 봉화읍 내성리 421-13 경상북도 봉화군 봉화읍 봉화로 1153 봉화시외버스터미널'),(335,'상운','경상북도 봉화군 상운면 예봉로 1291'),(336,'춘양시외버스터미널','경상북도 봉화군 춘양면 의양리 430-1 경상북도 봉화군 춘양면 의양로5길 3'),(337,'경북대상주캠퍼스정류소(승차)','경상북도 상주시 가장동 659-1 경상북도 상주시 경상대로 2555'),(338,'상주종합버스터미널','경상북도 상주시 무양동 291 경상북도 상주시 삼백로 71'),(339,'양정(상주)','경상북도 상주시 공검면 북상주로 1029'),(340,'함창버스정류장','경상북도 상주시 함창읍 구향리 185-1 경상북도 상주시 함창읍 함창중앙로 99'),(341,'성주시외버스승강장','경상북도 성주군 성주읍 성산리 1521'),(342,'경북도청시외버스정류장','경상북도 안동시 풍천면 갈전리 1682'),(343,'안동대','경상북도 안동시 논골길 3'),(344,'안동초교터미널','경상북도 안동시 천리동 216-9 경상북도 안동시 경동로 638'),(345,'안동터미널','경상북도 안동시 송현동 713-6 경상북도 안동시 경동로 130'),(346,'옹천정류소','경상북도 안동시 북후면 옹천리 548-1 경상북도 안동시 북후면 북평로 891'),(347,'용상터미널','경상북도 안동시 용상동 1179-70 경상북도 안동시 경동로 910'),(348,'임동정류소','경상북도 안동시 임동면 중평리 945 경상북도 안동시 임동면 챗거리길 43'),(349,'강구버스터미널','경상북도 영덕군 강구면 오포리 557-5 경상북도 영덕군 강구면 동해대로 4497'),(350,'영덕터미널','경상북도 영덕군 영덕읍 덕곡리 248-3 경상북도 영덕군 영덕읍 군청길 58'),(351,'영해버스터미널','경상북도 영덕군 영해면 성내리 637-1 경상북도 영덕군 영해면 예주시장길 5 영해시외버스터미널'),(352,'영양버스정류장','경상북도 영양군 영양읍 서부리 155-3 경상북도 영양군 영양읍 시장길 1-10'),(353,'입암정류소','경상북도 영양군 입암면 신구리 465-3 경상북도 영양군 입암면 조기리길 22 입암버스정류장'),(354,'영주종합터미널','경상북도 영주시 가흥동 703-3 경상북도 영주시 대학로 352'),(355,'풍기IC시외버스정류장','경상북도 영주시 봉현면 대촌리 438 경상북도 영주시 봉현면 소백로 1653'),(356,'영천시외버스터미널','경상북도 영천시 금노동 584-3 경상북도 영천시 강변로 44'),(357,'남본삼거리정류소','경상북도 예천군 예천읍 남본리 196-30 경상북도 예천군 예천읍 충효로 278'),(358,'예천시외버스정류장','경상북도 예천군 예천읍 대심리 66-1 경상북도 예천군 예천읍 충효로 165 예천버스정류장'),(359,'용궁','경상북도 예천군 용궁면 용궁로 151'),(360,'기성터미널','경상북도 울진군 기성면 척산리 86-1 경상북도 울진군 기성면 척산3길 17'),(361,'울진종합버스터미널','경상북도 울진군 울진읍 읍내리 196-17 경상북도 울진군 울진읍 울진중앙로 18'),(362,'평해버스정류장','경상북도 울진군 평해읍 평해리 829-2 경상북도 울진군 평해읍 평해로 55'),(363,'후포','경상북도 울진군 후포면 상밤터1길 5'),(364,'도리원시외버스정류장','경상북도 의성군 봉양면 화전리 110 경상북도 의성군 봉양면 도리원1길 38'),(365,'의성시외버스터미널','경상북도 의성군 의성읍 후죽리 837-1 경상북도 의성군 의성읍 문소3길 109'),(366,'안덕정류소','경상북도 청송군 안덕면 명당리 389-5 경상북도 청송군 안덕면 안덕로 69-13'),(367,'주왕산시외버스터미널','경상북도 청송군 주왕산면 상의리 295 경상북도 청송군 주왕산면 공원길 146'),(368,'진보시외버스터미널','경상북도 청송군 진보면 진안리 423-27 경상북도 청송군 진보면 진보로 110-15'),(369,'청송시외버스터미널','경상북도 청송군 청송읍 월막리 484-40 경상북도 청송군 청송읍 중앙로 184'),(370,'왜관남부버스정류장','경상북도 칠곡군 왜관읍 왜관리 291-1 경상북도 칠곡군 왜관읍 중앙로 158'),(371,'포항터미널','경상북도 포항시 남구 상도동 579-13 경상북도 포항시 남구 중흥로 85 포항터미널'),(372,'고현버스터미널','경상남도 거제시 고현동 979-1 경상남도 거제시 고현천로 10'),(373,'옥포터미널','경상남도 거제시 옥포동 557'),(374,'장승포시외버스터미널','경상남도 거제시 장승포동 687 경상남도 거제시 장승로 98'),(375,'가조정류소','경상남도 거창군 가조면 마상리 326-3 경상남도 거창군 가조면 가조가야로 1102'),(376,'거창시외버스터미널','경상남도 거창군 거창읍 대평리 1005 경상남도 거창군 거창읍 강남로 236'),(377,'고성여객자동차터미널','경상남도 고성군 고성읍 송학리 416-2 경상남도 고성군 고성읍 송학고분로 339'),(378,'배둔시외버스터미널','경상남도 고성군 회화면 배둔리 811-1 경상남도 고성군 회화면 남해안대로 3666'),(379,'김해여객터미널','경상남도 김해시 외동 1264 경상남도 김해시 김해대로 2232'),(380,'장유고속버스환승정류장','경상남도 김해시 무계동 156-8 경상남도 김해시 금관대로 587'),(381,'장유시외버스정류소','경상남도 김해시 무계동 156-5 경상남도 김해시 금관대로599번길 17'),(382,'남해시외버스터미널','경상남도 남해군 남해읍 북변리 316-3 경상남도 남해군 남해읍 남해대로 2835 남해공용터미널'),(383,'밀양시외버스터미널','경상남도 밀양시 내이동 1187-1 경상남도 밀양시 북성로 7'),(384,'사천터미널','경상남도 사천시 사천읍 선인리 315-2 경상남도 사천시 사천읍 옥산로 120'),(385,'삼천포시외버스터미널','경상남도 사천시 벌리동 69'),(386,'용현','경상남도 사천시 용현면 진삼로 631'),(387,'산청시외버스터미널','경상남도 산청군 산청읍 산청리 225-5 경상남도 산청군 산청읍 덕계로 16 산청합동버스터미널'),(388,'생초시외버스터미널','경상남도 산청군 생초면 어서리 287 경상남도 산청군 생초면 산수로 1050 시외버스터미널'),(389,'원지정류소','경상남도 산청군 신안면 하정리 614-9 경상남도 산청군 신안면 원지로 16'),(390,'양산시외버스터미널','경상남도 양산시 중부동 710-1 경상남도 양산시 양산역1길 7'),(391,'가례','경상남도 의령군 가례면 의병로 45'),(392,'대의','경상남도 의령군 대의면 대의로 52'),(393,'신반임시정류소','경상남도 의령군 부림면 신반리 565-19'),(394,'의령버스터미널','경상남도 의령군 의령읍 서동리 253 경상남도 의령군 의령읍 의병로6길 13 의령시외버스터미널'),(395,'정암','경상남도 의령군 의령읍 남강로 720'),(396,'칠곡','경상남도 의령군 칠곡면 칠곡로 77'),(397,'개양정류소','경상남도 진주시 가좌동 1397-17'),(398,'경남과학기술대학교정류소','경상남도 진주시 칠암동 130-7'),(399,'진주도동터미널','경상남도 진주시 상대동 178-6 경상남도 진주시 대신로 312'),(400,'진주시외버스터미널','경상남도 진주시 장대동 96-1 경상남도 진주시 남강로 712 진주시외버스터미널'),(401,'남지버스터미널','경상남도 창녕군 남지읍 남지리 167-12 경상남도 창녕군 남지읍 동포옛길 25'),(402,'부곡버스터미널','경상남도 창녕군 부곡면 거문리 231-14 경상남도 창녕군 부곡면 원앙로 199'),(403,'영산정류소','경상남도 창녕군 영산면 서리 145-1 경상남도 창녕군 영산면 연지길 7'),(404,'이방정류소','경상남도 창녕군 이방면 거남리 435-23'),(405,'창녕시외버스터미널','경상남도 창녕군 창녕읍 교리 1040-1 경상남도 창녕군 창녕읍 창녕대로 11'),(406,'마산남부시외버스터미널','경상남도 창원시 마산합포구 해운동 5-56 경상남도 창원시 마산합포구 월영동서로 10'),(407,'마산시외버스터미널','경상남도 창원시 마산회원구 합성동 267 경상남도 창원시 마산회원구 3·15대로 756 마산시외버스터미널'),(408,'남산시외버스정류소','경상남도 창원시 성산구 남산동 629-12 경상남도 창원시 성산구 창원대로 1024'),(409,'창원역','경상남도 창원시 의창구 의창대로 56'),(410,'창원종합버스터미널','경상남도 창원시 의창구 팔용동 35 경상남도 창원시 의창구 창원대로 371 창원종합버스터미널'),(411,'용원시외버스터미널','경상남도 창원시 진해구 용원동 1125-1 경상남도 창원시 진해구 용원로 114'),(412,'진해경찰서터미널','경상남도 창원시 진해구 석동 222-9 경상남도 창원시 진해구 진해대로802번길 4'),(413,'진해시외버스정류장','경상남도 창원시 진해구 인의동 24-3 경상남도 창원시 진해구 태평로34번길 17'),(414,'통영종합버스터미널','경상남도 통영시 광도면 죽림리 1569 경상남도 통영시 광도면 죽림4로 24 통영버스종합터미널'),(415,'진교시외버스터미널','경상남도 하동군 진교면 진교리 426-66 경상남도 하동군 진교면 진교중앙길 14-8 진교시외버스터미널'),(416,'하동버스터미널','경상남도 하동군 하동읍 비파리 250 경상남도 하동군 하동읍 너뱅이길 35'),(417,'화개시외버스공용터미널','경상남도 하동군 화개면 탑리 662-8 경상남도 하동군 화개면 화개로 18-2'),(418,'함안시외버스터미널','경상남도 함안군 가야읍 말산리 605-3 경상남도 함안군 가야읍 함마대로 1636-16'),(419,'마천정류소','경상남도 함양군 마천면 가흥리 538-3 경상남도 함양군 마천면 천왕봉로 1175'),(420,'백무동시외버스정류소','경상남도 함양군 마천면 강청리 203-4'),(421,'서상정류소','경상남도 함양군 서상면 도천리 1004-1 경상남도 함양군 서상면 서상로 270'),(422,'수동정류소','경상남도 함양군 수동면 화산리 1199-1 경상남도 함양군 수동면 수동길 4'),(423,'함양시외버스안의공용정류장','경상남도 함양군 안의면 금천리 59-5 경상남도 함양군 안의면 강변로 295'),(424,'함양시외버스터미널','경상남도 함양군 함양읍 용평리 680-1 경상남도 함양군 함양읍 한들로 159'),(425,'삼가정류소','경상남도 합천군 삼가면 금리 64-5 경상남도 합천군 삼가면 삼가1로 78'),(426,'합천시외버스정류장','경상남도 합천군 합천읍 합천리 403-11 경상남도 합천군 합천읍 대야로 883'),(427,'고창문화터미널','전라북도 고창군 고창읍 읍내리 629 전라북도 고창군 고창읍 중앙로 191 고창공용버스터미널'),(428,'대산공용정류장','전라북도 고창군 대산면 산정리 3-1 전라북도 고창군 대산면 대성로 234'),(429,'군산시외버스터미널','전라북도 군산시 경암동 614-1 전라북도 군산시 해망로 18 군산시외버스터미널'),(430,'대야공용버스터미널','전라북도 군산시 대야면 지경리 731-2 전라북도 군산시 대야면 번영로 891 대야공용버스터미널'),(431,'김제공용버스터미널','전라북도 김제시 요촌동 47-24 전라북도 김제시 동서로 241'),(432,'남원공용버스터미널','전라북도 남원시 동충동 37-1 전라북도 남원시 용성로 109 남원공용버스터미널'),(433,'인월지리산공용터미널','전라북도 남원시 인월면 인월리 233-3 전라북도 남원시 인월면 인월로 73'),(434,'무주공용버스터미널','전라북도 무주군 무주읍 당산리 1229 전라북도 무주군 무주읍 한풍루로 351 무주공용버스터미널'),(435,'무주안성시외버스터미널','전라북도 무주군 안성면 장기리 1506-10 전라북도 무주군 안성면 시장윗길 6-3'),(436,'부안시외버스터미널','전라북도 부안군 부안읍 봉덕리 574-13 전라북도 부안군 부안읍 석정로 210 사무소'),(437,'삼례공용버스터미널','전라북도 완주군 삼례읍 삼례리 910-2 전라북도 완주군 삼례읍 동학로 24'),(438,'우석대정류소','전라북도 완주군 삼례읍 후정리 490 전라북도 완주군 삼례읍 삼례로 443'),(439,'장신대정류소','전라북도 완주군 상관면 신리 694-1 전라북도 완주군 상관면 왜목로 726-15'),(440,'혁신도시간이정류소(전북)','전라북도 완주군 이서면 갈산리 681'),(441,'원광대시외버스정류소(승차)','전라북도 익산시 신동 272 전라북도 익산시 익산대로 460'),(442,'익산공용버스터미널','전라북도 익산시 평화동 247-1 전라북도 익산시 익산대로 56'),(443,'익산왕궁터미널','전라북도 익산시 왕궁면 동촌리 48'),(444,'오수공용버스정류장','전라북도 임실군 오수면 오수리 362-21'),(445,'임실시외버스터미널','전라북도 임실군 임실읍 이도리 233-9 전라북도 임실군 임실읍 운수로 20'),(446,'장계시외공용버스터미널','전라북도 장수군 장계면 장계리 296-6 전라북도 장수군 장계면 한들로 90-1'),(447,'장수공용버스터미널','전라북도 장수군 장수읍 장수리 472-1 전라북도 장수군 장수읍 장천로 175'),(448,'덕진공용정류장','전라북도 전주시 덕진구 덕진동1가 1278-2 전라북도 전주시 덕진구 덕진광장로 3'),(449,'인후공용정류장','전라북도 전주시 덕진구 인후동1가 772-2 전라북도 전주시 덕진구 안덕원로 240'),(450,'전주시외버스공용터미널','전라북도 전주시 덕진구 금암동 705-10 전라북도 전주시 덕진구 가리내로 30 전주시외버스공용미널'),(451,'호남제일문시외버스매표소','전라북도 전주시 덕진구 여의동 1231-10 전라북도 전주시 덕진구 혁신로 655'),(452,'남노송동터미널','전라북도 전주시 완산구 남노송동 519-66 전라북도 전주시 완산구 기린대로 124'),(453,'서부시외버스간이정류소','전라북도 전주시 완산구 효자동2가 1326-6'),(454,'완산공용정류소','전라북도 전주시 완산구 서완산동1가 589-1 전라북도 전주시 완산구 용머리로 281'),(455,'전주대정류소','전라북도 전주시 완산구 효자동3가'),(456,'정읍시외버스공용터미널','전라북도 정읍시 연지동 312-12'),(457,'진안시외버스공용정류장','전라북도 진안군 진안읍 군상리 403-19 전라북도 진안군 진안읍 진무로 1120'),(458,'강진버스여객터미널','전라남도 강진군 강진읍 평동리 167-1 전라남도 강진군 강진읍 영랑로 35 강진버스여객터미널'),(459,'병영정류소','전라남도 강진군 병영면 삼인리 309-5'),(460,'월남강진터미널','전라남도 강진군 성전면 월남리 813 전라남도 강진군 성전면 월남1길 106-1'),(461,'고흥공용버스터미널','전라남도 고흥군 고흥읍 서문리 218-11 전라남도 고흥군 고흥읍 여산당촌길 19'),(462,'과역공용버스터미널','전라남도 고흥군 과역면 과역리 70-4 전라남도 고흥군 과역면 무궁화길 5'),(463,'나로도공용터미널','전라남도 고흥군 봉래면 신금리 878-343 전라남도 고흥군 봉래면 축정1길 25'),(464,'녹동버스공용터미널','전라남도 고흥군 도양읍 봉암리 1613-1 전라남도 고흥군 도양읍 천마로 57'),(465,'곡성버스터미널','전라남도 곡성군 곡성읍 읍내리 244-4 전라남도 곡성군 곡성읍 군청로 6'),(466,'석곡터미널','전라남도 곡성군 석곡면 석곡리 219-4 전라남도 곡성군 석곡면 석곡로 55-4'),(467,'옥과터미널','전라남도 곡성군 옥과면 옥과리 86 전라남도 곡성군 옥과면 대학로 156-1'),(468,'광양터미널','전라남도 광양시 광양읍 인동리 413 전라남도 광양시 광양읍 순광로 688'),(469,'중마버스터미널','전라남도 광양시 중동 1732-2 중마터미널 전라남도 광양시 공영로 91 중마터미널'),(470,'구례공영버스터미널','전라남도 구례군 구례읍 봉남리 1 전라남도 구례군 구례읍 중앙로 8 구례공영여객터미널'),(471,'나주시외버스터미널','전라남도 나주시 중앙동 95-2 전라남도 나주시 나주로 192 나주버스터미널'),(472,'영산포공용버스터미널','전라남도 나주시 이창동 191 전라남도 나주시 예향로 3803 영산포공용터미널'),(473,'목포종합버스터미널','전라남도 목포시 상동 220 전라남도 목포시 영산로 525'),(474,'남악정류소','전라남도 무안군 삼향읍 남악리 1462'),(475,'무안공용버스터미널','전라남도 무안군 무안읍 성동리 873-11 전라남도 무안군 무안읍 무안로 497-1'),(476,'청계정류소','전라남도 무안군 청계면 도림리 469-3 전라남도 무안군 청계면 영산로 1688'),(477,'현경정류소','전라남도 무안군 현경면 외반리 556-7 전라남도 무안군 현경면 현해로 83'),(478,'녹차밭터미널','전라남도 보성군 보성읍 봉산리 1359-2 전라남도 보성군 보성읍 녹차로 769'),(479,'문덕시외버스공용정류장','전라남도 보성군 문덕면 운곡리 651-12 전라남도 보성군 문덕면 장운길 61'),(480,'벌교버스공용터미널','전라남도 보성군 벌교읍 회정리 432 전라남도 보성군 벌교읍 조정래길 2-8'),(481,'보성북문터미널','전라남도 보성군 보성읍 보성리 781-1 전라남도 보성군 보성읍 송재로 176'),(482,'보성시외버스터미널','전라남도 보성군 보성읍 원봉리 5-1 전라남도 보성군 보성읍 현충로 20'),(483,'복내공용정류소','전라남도 보성군 복내면 복내리 152-15 전라남도 보성군 복내면 송재로 1827'),(484,'예당정류소','전라남도 보성군 득량면 예당리 437-5 전라남도 보성군 득량면 예당길 166'),(485,'율포터미널','전라남도 보성군 회천면 율포리 315-3 전라남도 보성군 회천면 우암길 4'),(486,'조성터미널','전라남도 보성군 조성면 조성리 643-2 전라남도 보성군 조성면 조성로 123'),(487,'곡천터미널','전라남도 순천시 송광면 봉산리 951-51 전라남도 순천시 송광면 고인돌길 790'),(488,'북부정류소','전라남도 순천시 매곡동 124-16 전라남도 순천시 중앙로 148'),(489,'순천역터미널','전라남도 순천시 조곡동 160-15 전라남도 순천시 팔마로 132-1'),(490,'순천종합버스터미널','전라남도 순천시 장천동 18-22 전라남도 순천시 장천3길 13 순천종합버스터미널'),(491,'신대지구터미널','전라남도 순천시 해룡면 신대리 2139 전라남도 순천시 해룡면 해광로 199'),(492,'주암공용버스터미널','전라남도 순천시 주암면 광천리 163-4 전라남도 순천시 주암면 동주로 2040-1'),(493,'신안여객터미널','전라남도 신안군 압해읍 학교리 586-7 전라남도 신안군 압해읍 복룡로 2'),(494,'암태남강환승정류장','전라남도 신안군 암태면 와촌리 683 전라남도 신안군 암태면 중부로 1502-26'),(495,'지도여객자동차터미널','전라남도 신안군 지도읍 읍내리 290-1 전라남도 신안군 지도읍 해제지도로 1240'),(496,'덕양시외버스터미널','전라남도 여수시 소라면 덕양리 1433 전라남도 여수시 소라면 하세동길 17-5'),(497,'여수종합버스터미널','전라남도 여수시 오림동 390 전라남도 여수시 좌수영로 268 여수버스터미널'),(498,'여천시외버스정류장','전라남도 여수시 선원동 1287-1 전라남도 여수시 무선로 200'),(499,'영광종합버스터미널','전라남도 영광군 영광읍 신하리 10-1 전라남도 영광군 영광읍 신남로 180'),(500,'홍농버스터미널','전라남도 영광군 홍농읍 상하리 499 전라남도 영광군 홍농읍 상하길 28'),(501,'삼호버스종합터미널','전라남도 영암군 삼호읍 용앙리 12 전라남도 영암군 삼호읍 삼호중앙로 246'),(502,'신북시외버스터미널','전라남도 영암군 신북면 월평리 134-3 전라남도 영암군 신북면 예향로 2542'),(503,'영암여객자동차터미널','전라남도 영암군 영암읍 남풍리 4-1 전라남도 영암군 영암읍 동문로 8 영암버스터미널'),(504,'고금정류소','전라남도 완도군 고금면 덕암리 756-5 전라남도 완도군 고금면 고금동로 30'),(505,'당목터미널','전라남도 완도군 약산면 해동리 691-8 전라남도 완도군 약산면 당목길 39'),(506,'완도공용버스터미널','전라남도 완도군 완도읍 군내리 1230 전라남도 완도군 완도읍 개포로130번길 20'),(507,'원동정류소','전라남도 완도군 군외면 원동리 1065-1 전라남도 완도군 군외면 청해진서로 2184'),(508,'사창터미널','전라남도 장성군 삼계면 사창리 482-26 전라남도 장성군 삼계면 사창로 75'),(509,'상무대터미널','전라남도 장성군 삼서면 대도리 520-5'),(510,'상무아파트터미널','전라남도 장성군 삼계면 주산리 335-11 전라남도 장성군 삼계면 능성로 545'),(511,'신흥터미널','전라남도 장성군 북일면 신흥리 234-2 전라남도 장성군 북일면 신흥로 414'),(512,'장성공용버스터미널','전라남도 장성군 장성읍 영천리 931 전라남도 장성군 장성읍 영천로 125'),(513,'장성사거리버스여객터미널','전라남도 장성군 북이면 사거리 636-1 전라남도 장성군 북이면 백양로 3 사거리버스터미널'),(514,'대덕공용버스터미널','전라남도 장흥군 대덕읍 신월리 21-3 전라남도 장흥군 대덕읍 거정4길 22'),(515,'배산정류소','전라남도 장흥군 장동면 북교리 1-69 전라남도 장흥군 장동면 흥성로 1562'),(516,'용산정류소','전라남도 장흥군 용산면 접정리 380-3 전라남도 장흥군 용산면 장흥대로 2457'),(517,'장평정류소','전라남도 장흥군 장평면 용강리 42-1 전라남도 장흥군 장평면 장평중앙길 60'),(518,'회진시외버스터미널','전라남도 장흥군 회진면 회진리 1896-7 전라남도 장흥군 회진면 회진로 425'),(519,'녹진정류소','전라남도 진도군 군내면 녹진리 2-4 전라남도 진도군 군내면 진도대로 8456'),(520,'쏠비치진도터미널','전라남도 진도군 의신면 초사리 627 전라남도 진도군 의신면 송군길 30-30'),(521,'진도공용터미널','전라남도 진도군 진도읍 남동리 782-1 전라남도 진도군 진도읍 남문길 5'),(522,'학교버스터미널','전라남도 함평군 학교면 사거리 991-23 전라남도 함평군 학교면 함영로 503'),(523,'함평공용터미널','전라남도 함평군 함평읍 기각리 988-1 전라남도 함평군 함평읍 중앙길 46 함평공용터미널'),(524,'남리정류소','전라남도 해남군 황산면 우항리 416-1'),(525,'남창정류소','전라남도 해남군 북평면 남창리 253-3 전라남도 해남군 북평면 달량진길 50 핫킨스호프'),(526,'땅끝정류소','전라남도 해남군 송지면 송호리 1127-4 전라남도 해남군 송지면 땅끝마을길 70-14'),(527,'산정정류소','전라남도 해남군 송지면 산정리 769-2 전라남도 해남군 송지면 산정1길 74'),(528,'송호리정류소','전라남도 해남군 송지면 송호리 914-1 전라남도 해남군 송지면 땅끝해안로 1807'),(529,'우수영정류소','전라남도 해남군 문내면 동외리 859-19'),(530,'월송정류소','전라남도 해남군 현산면 월송리'),(531,'해남종합버스터미널','전라남도 해남군 해남읍 해리 401 전라남도 해남군 해남읍 해남로 8 해남시외버스여객자동차터미널');
/*!40000 ALTER TABLE `start_terminal_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10 20:40:21