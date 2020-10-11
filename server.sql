-- MySQL dump 10.13  Distrib 5.6.37, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: server
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Table structure for table `Scrum`
--

DROP TABLE IF EXISTS `Scrum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Scrum` (
  `Taskid` int(11) NOT NULL AUTO_INCREMENT,
  `TaskName` varchar(255) NOT NULL,
  `TaskInfo` varchar(255) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(255) DEFAULT NULL,
  `WorkingPerson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scrum`
--

LOCK TABLES `Scrum` WRITE;
/*!40000 ALTER TABLE `Scrum` DISABLE KEYS */;
/*!40000 ALTER TABLE `Scrum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverlist`
--

DROP TABLE IF EXISTS `serverlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverlist` (
  `serverip` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `hostname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverlist`
--

LOCK TABLES `serverlist` WRITE;
/*!40000 ALTER TABLE `serverlist` DISABLE KEYS */;
INSERT INTO `serverlist` VALUES ('10.241.17.12','Settlement','ProdMoneySettlementApp01'),('10.241.17.13','Settlement','ProdMoneySettlementApp02'),('10.241.17.9','Settlement','ProdMoneySettlementApp03'),('10.241.17.10','Settlement','ProdMoneySettlementApp04'),('10.241.17.4','Settlement','ProdMoneySettlementDashBoardApp01'),('10.241.17.5','Settlement','ProdMoneySettlementDashBoardApp02'),('10.241.17.11','Settlement','ProdMoneySettlementDashBoardApp03'),('10.241.17.16','Settlement','ProdMoneySettlementDashBoardApp04'),('10.241.17.6','Settlement','ProdMoneySettlementListener01'),('10.241.17.8','Settlement','ProdMoneySettlementListener02'),('10.241.19.4','Auth','ProdMoneyAuthApp01'),('10.241.19.5','Auth','ProdMoneyAuthApp02'),('10.241.19.8','Auth','ProdMoneyAuthApp03'),('10.241.19.9','Auth','ProdMoneyAuthApp04'),('10.241.19.6','Auth','ProdMoneyAuthListener01'),('10.241.19.7','Auth','ProdMoneyAuthListener02'),('10.241.6.4','Beta','Beta-PayuM-CI-PayUMoney01'),('10.241.6.6','Beta','Beta-PayuM-CI-PayUNow02'),('10.241.12.4','Beta','beta-payum-ci-rabbitmq01'),('10.241.10.4','Beta','beta-payum-ci-tomcat01'),('10.241.18.5','Async','ProdMoneyAsyncApp02'),('10.241.18.6','Async','ProdMoneyAsyncApp03'),('10.241.18.7','Async','ProdMoneyAsyncApp04'),('10.241.18.10','Async','10.241.18.10(stop)'),('10.241.18.8','Async','ProdMoneyAsyncAppListener01'),('10.241.18.9','Async','ProdMoneyAsyncAppListener02'),('10.241.40.6','Centrallog','CentralLogs'),('10.241.40.6','Centrallog','CentralLogs'),('10.200.11.12','admin.payu.in','admin.payu.in-02'),('10.200.11.7','admin.payu.in','admin.payu.in-01'),('10.200.29.9','DI','awsdi01'),('10.200.29.25','DI','awsdi04'),('10.200.29.23','DI','awsdi07'),('10.200.29.6','DI','awsdi03'),('10.200.29.24','DI','awsdi02'),('10.200.29.10','DI','awsdi06'),('10.200.29.26','DI','awsdioffous03'),('10.200.29.5','DI','awsdioffous01'),('10.200.29.7','DI','awsdioffous02'),('10.200.29.20','DI','awsdi08'),('10.200.29.27','DI','awsdioffous04'),('10.200.29.12','DI','awsdi05'),('10.200.1.59','MariaDb','mariadb01'),('10.200.1.117','MariaDb','mariadb02'),('10.200.1.41','MariaDb','PayuDB-Slave'),('10.200.12.77','Nimble','nimble.payu.in01'),('10.200.12.136','Nimble','nimble.payu.in02'),('10.200.7.45','Maxwell','Maxwell'),('10.200.8.39','Cohrence','coherence05'),('10.200.8.46','Cohrence','coherence06'),('10.200.8.108','Cohrence','coherence04'),('10.200.12.133','Test.payu.in','test.payu.in01'),('10.200.12.9','Test.payu.in','test.payu.in02'),('10.200.7.41','Kafka','Kafka03'),('10.200.9.10','Kafka','Kafka01'),('10.200.9.27','Kafka','Kafka02'),('10.200.36.12','MAF','awsmaf02'),('10.200.36.6','MAF','awsmaf01'),('10.200.36.21','MAF','awsmaf05'),('10.200.36.30','MAF','awsmaf04'),('10.200.36.28','MAF','awsmaf03'),('10.200.5.235','STATIC.PAYU.IN','static.payu.in-02'),('10.200.5.233','STATIC.PAYU.IN','static.payu.in-01'),('10.200.5.249','STATIC.PAYU.IN','static.payu.in-04'),('10.200.5.246','STATIC.PAYU.IN','static.payu.in-03'),('10.200.5.181','TXNCDN.PAYUBIZ.IN','txncdn.payubiz.in-02'),('10.200.5.168','TXNCDN.PAYUBIZ.IN','txncdn.payubiz.in-01'),('10.200.3.150','INFO','Info.payu.in-04'),('10.200.3.224','INFO','Info.payu.in-01'),('10.200.3.137','INFO','Info.payu.in-05'),('10.200.3.143','INFO','Info.payu.in-06'),('10.200.3.219','INFO','Info.payu.in-02'),('10.200.3.253','INFO','Info.payu.in-03'),('10.200.9.26','LOGBACKUP','Log_Backup'),('10.200.5.228','CHECKOUT','checkoutx01'),('10.200.5.250','CHECKOUT','checkoutx02'),('10.241.20.6','TREASURY','Pre-ProdMoneyTreasuryApp01'),('10.241.20.9','TREASURY','ProdMoneyTreasuryApp02'),('10.241.20.4','TREASURY','ProdMoneyTreasuryApp03'),('10.241.20.7','TREASURY','ProdMoneyTreasuryApp04'),('10.242.12.10','TestDB Money','uat-payum-ci-mysql01'),('10.50.3.169','OSSEC','nmlpayumonossec02'),('10.200.34.81','Headless','Headless_ASG'),('10.200.34.120','Headless','Headless_ASG'),('10.200.34.78','Headless','Headless_ASG'),('10.200.34.48','Headless','Headless_ASG'),('10.200.34.16','Headless','Headless_ASG'),('10.200.34.112','Headless','Headless_ASG'),('10.200.34.56','Headless','Headless_ASG'),('10.200.34.22','Headless','Headless_ASG'),('10.242.10.4','TEST.PAYUMONEY.IN','PAYUM-CIN-TOMCAT-TEST'),('10.200.1.93','Maria Db','mariadb10'),('10.241.10.18','JAR SERVICES','Prod-PayuM-CI-JarService01'),('10.241.10.17','JAR SERVICES','Prod-PayuM-CI-JarService02'),('10.241.23.4','Vaultapp','ProdMoneyVaultapp01'),('10.241.23.5','Vaultapp','ProdMoneyVaultapp02'),('10.241.23.6','Vaultapp','ProdMoneyVaultListener01'),('10.241.23.7','Vaultapp','ProdMoneyVaultListener02'),('10.241.10.8','INVOICE','Prod-PayuM-CI-InvoiceAnalytics02'),('10.241.10.7','INVOICE','Prod-PayuM-CI-InvoiceAnalytics01'),('10.241.10.6','INVOICE','Prod-PayuM-CI-Invoice02'),('10.241.10.5','INVOICE','Prod-PayuM-CI-Invoice01'),('10.200.1.13','Maria Db','mariadb03'),('10.50.22.31','TEST DB','test.payu.in'),('10.200.4.95','STORECARD','storecard02'),('10.200.4.15','STORECARD','storecard01'),('10.200.4.10','STORECARD','storecard04'),('10.200.4.119','STORECARD','storecard03'),('10.50.23.32','TESTDB2','nmlpayupp02'),('10.200.12.230','FBRI','awsfbri01'),('10.200.12.10','FBRI','awsfbri02'),('10.200.29.14','DI','awsdi09'),('10.200.29.13','DI','awsdi10'),('10.225.6.241','UAT','eftnetpp01'),('10.225.5.163','UAT','eftnetpp02'),('10.202.8.230','sollution_Backup(NBC+BBPS)','Solutions_ Log_Backup'),('10.202.13.209','NBC','AwsNbc-app-01'),(' 10.202.12.109','NBC','AwsNbc-app-02'),('10.202.1.25','IRCTC','irctcPHP01'),('10.202.2.90','IRCTC','irctcPHP02'),('172.16.11.109','BBPS','nmlpayubbpsfe'),('172.16.11.99','BBPS','nmlpayubbpsfe02'),('172.16.11.89','BBPS','nmlpayubbpsfe01'),('172.16.11.24','BBPS','nmlpayubbpsfes'),('172.16.11.18','BBPS','nmlpayubbpsfe05'),('172.16.11.15','BBPS','nmlpayubbpsfe04'),('10.50.11.11','IRCTC','nmlpayuirctcapp05'),('10.200.12.22','ONECONNECT','oneconnect02'),('10.200.12.183','ONECONNECT','oneconnect01'),('10.202.2.142','SECUREPAYMENT','SecurePayments02'),('10.202.1.128','SECUREPAYMENT','SecurePayments01');
/*!40000 ALTER TABLE `serverlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-11  9:41:44
