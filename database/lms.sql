-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `CandidateBankDetails`
--

DROP TABLE IF EXISTS `CandidateBankDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateBankDetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidateId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `accountNumber` bigint(10) NOT NULL,
  `accountNumVerified` tinyint(1) NOT NULL,
  `ifscCode` varchar(10) NOT NULL,
  `ifscCodeVerified` tinyint(1) DEFAULT NULL,
  `panNumber` varchar(10) NOT NULL,
  `panNumberVerified` tinyint(1) NOT NULL,
  `addhaarNumber` bigint(12) NOT NULL,
  `addhaarNumberVerified` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidateId` (`candidateId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `CandidateBankDetails_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateBankDetails_ibfk_2` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateBankDetails`
--

LOCK TABLES `CandidateBankDetails` WRITE;
/*!40000 ALTER TABLE `CandidateBankDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateBankDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateDocuments`
--

DROP TABLE IF EXISTS `CandidateDocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateDocuments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidateId` int(11) NOT NULL,
  `docType` varchar(10) NOT NULL,
  `docPath` varchar(50) NOT NULL,
  `docStatus` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidateId` (`candidateId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `CandidateDocuments_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateDocuments_ibfk_2` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateDocuments`
--

LOCK TABLES `CandidateDocuments` WRITE;
/*!40000 ALTER TABLE `CandidateDocuments` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateDocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateQualification`
--

DROP TABLE IF EXISTS `CandidateQualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateQualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `candidateId` int(11) NOT NULL,
  `diploma` varchar(20) NOT NULL,
  `degreeName` varchar(25) NOT NULL,
  `degreeNameVerified` tinyint(1) NOT NULL,
  `employeeDecipline` varchar(10) NOT NULL,
  `employeeDeciplineVerified` tinyint(1) NOT NULL,
  `passingYear` int(4) NOT NULL,
  `passingYearVerified` tinyint(1) NOT NULL,
  `aggregatePercentage` double(4,2) NOT NULL,
  `finalYearPercentage` double(4,2) NOT NULL,
  `finalYearPerVerified` tinyint(1) NOT NULL,
  `trainingInstitute` varchar(50) NOT NULL,
  `trainingInstituteVerified` tinyint(1) NOT NULL,
  `trainingDurationMonth` int(2) NOT NULL,
  `trainingDurationMonthVerified` tinyint(1) NOT NULL,
  `otherTraining` varchar(30) NOT NULL,
  `otherTrainingVerified` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `candidateId` (`candidateId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `CandidateQualification_ibfk_1` FOREIGN KEY (`candidateId`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateQualification_ibfk_2` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateQualification`
--

LOCK TABLES `CandidateQualification` WRITE;
/*!40000 ALTER TABLE `CandidateQualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateQualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CandidateTechStackAssignment`
--

DROP TABLE IF EXISTS `CandidateTechStackAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CandidateTechStackAssignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requirementId` int(11) NOT NULL,
  `candidateId` int(11) NOT NULL,
  `assignDate` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requirementId` (`requirementId`),
  KEY `candidateId` (`candidateId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_1` FOREIGN KEY (`requirementId`) REFERENCES `CompanyRequirement` (`id`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_2` FOREIGN KEY (`candidateId`) REFERENCES `HiredCandidate` (`id`),
  CONSTRAINT `CandidateTechStackAssignment_ibfk_3` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CandidateTechStackAssignment`
--

LOCK TABLES `CandidateTechStackAssignment` WRITE;
/*!40000 ALTER TABLE `CandidateTechStackAssignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `CandidateTechStackAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL,
  `location` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CompanyRequirement`
--

DROP TABLE IF EXISTS `CompanyRequirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyRequirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) NOT NULL,
  `requestedMonth` date NOT NULL,
  `city` varchar(15) NOT NULL,
  `docVerification` tinyint(1) NOT NULL,
  `requirementDocPath` varchar(50) NOT NULL,
  `numberOfEngg` int(3) NOT NULL,
  `techStackId` int(11) NOT NULL,
  `techTypeId` int(11) NOT NULL,
  `makerProgramId` int(11) NOT NULL,
  `leadId` int(11) NOT NULL,
  `mentorIdeationId` int(11) NOT NULL,
  `buddyEnggId` int(11) NOT NULL,
  `specialRemark` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyId` (`companyId`),
  KEY `techStackId` (`techStackId`),
  KEY `techTypeId` (`techTypeId`),
  KEY `makerProgramId` (`makerProgramId`),
  KEY `mentorIdeationId` (`mentorIdeationId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `CompanyRequirement_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `Company` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_2` FOREIGN KEY (`techStackId`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_3` FOREIGN KEY (`techTypeId`) REFERENCES `TechType` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_4` FOREIGN KEY (`makerProgramId`) REFERENCES `MakerProgram` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_5` FOREIGN KEY (`mentorIdeationId`) REFERENCES `MentorIdeationMap` (`id`),
  CONSTRAINT `CompanyRequirement_ibfk_6` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyRequirement`
--

LOCK TABLES `CompanyRequirement` WRITE;
/*!40000 ALTER TABLE `CompanyRequirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `CompanyRequirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FellowshipCandidate`
--

DROP TABLE IF EXISTS `FellowshipCandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FellowshipCandidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(15) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `emailId` varchar(30) NOT NULL,
  `hiredCity` varchar(20) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `hiredDate` date DEFAULT NULL,
  `mobileNumber` bigint(10) NOT NULL,
  `permanentPincode` bigint(6) NOT NULL,
  `hiredLab` varchar(15) NOT NULL,
  `attitude` varchar(10) NOT NULL,
  `communicationRemark` varchar(10) NOT NULL,
  `knowledgeRemark` varchar(10) NOT NULL,
  `aggregateRemark` varchar(10) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  `birthDate` date NOT NULL,
  `birthDateVerified` tinyint(1) NOT NULL,
  `parentName` varchar(30) NOT NULL,
  `parentOccupation` varchar(15) NOT NULL,
  `parentsMobileNumber` bigint(10) NOT NULL,
  `parentsAnnualSalary` bigint(7) NOT NULL,
  `localAddress` varchar(70) NOT NULL,
  `permanentAddress` varchar(70) NOT NULL,
  `photoPath` varchar(200) NOT NULL,
  `joinigDate` date NOT NULL,
  `candidateStatus` varchar(10) NOT NULL,
  `personalInformation` varchar(70) NOT NULL,
  `bankInformation` varchar(70) NOT NULL,
  `educationalInformation` varchar(70) NOT NULL,
  `documentStatus` varchar(10) NOT NULL,
  `remark` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `FellowshipCandidate_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FellowshipCandidate`
--

LOCK TABLES `FellowshipCandidate` WRITE;
/*!40000 ALTER TABLE `FellowshipCandidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `FellowshipCandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HiredCandidate`
--

DROP TABLE IF EXISTS `HiredCandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HiredCandidate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) NOT NULL,
  `middleName` varchar(10) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `emailId` varchar(25) NOT NULL,
  `hiredCity` varchar(20) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `hiredDate` date NOT NULL,
  `mobileNumber` bigint(10) NOT NULL,
  `permanentPincode` bigint(6) NOT NULL,
  `hiredLab` varchar(20) NOT NULL,
  `attitute` varchar(10) NOT NULL,
  `communicationRemark` varchar(10) NOT NULL,
  `knowledgeRemark` varchar(10) NOT NULL,
  `aggregatePercentage` double(4,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `HiredCandidate_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HiredCandidate`
--

LOCK TABLES `HiredCandidate` WRITE;
/*!40000 ALTER TABLE `HiredCandidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `HiredCandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `location` varchar(20) NOT NULL,
  `address` varchar(70) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LabThreshold`
--

DROP TABLE IF EXISTS `LabThreshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LabThreshold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labId` int(11) NOT NULL,
  `labCapacity` int(11) NOT NULL,
  `leadThreshold` varchar(25) NOT NULL,
  `ideationEnggThreshold` varchar(25) NOT NULL,
  `buddyEnggThreshold` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `labId` (`labId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `LabThreshold_ibfk_1` FOREIGN KEY (`labId`) REFERENCES `Lab` (`id`),
  CONSTRAINT `LabThreshold_ibfk_2` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LabThreshold`
--

LOCK TABLES `LabThreshold` WRITE;
/*!40000 ALTER TABLE `LabThreshold` DISABLE KEYS */;
/*!40000 ALTER TABLE `LabThreshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MakerProgram`
--

DROP TABLE IF EXISTS `MakerProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MakerProgram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programName` varchar(30) NOT NULL,
  `programtype` varchar(15) NOT NULL,
  `programLink` varchar(50) NOT NULL,
  `techStackId` int(11) NOT NULL,
  `techTypeId` int(11) NOT NULL,
  `programApproved` tinyint(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  KEY `techStackId` (`techStackId`),
  KEY `techTypeId` (`techTypeId`),
  CONSTRAINT `MakerProgram_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`),
  CONSTRAINT `MakerProgram_ibfk_2` FOREIGN KEY (`techStackId`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `MakerProgram_ibfk_3` FOREIGN KEY (`techTypeId`) REFERENCES `TechType` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MakerProgram`
--

LOCK TABLES `MakerProgram` WRITE;
/*!40000 ALTER TABLE `MakerProgram` DISABLE KEYS */;
/*!40000 ALTER TABLE `MakerProgram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `mentorType` varchar(15) NOT NULL,
  `labId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `labId` (`labId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`labId`) REFERENCES `Lab` (`id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MentorIdeationMap`
--

DROP TABLE IF EXISTS `MentorIdeationMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MentorIdeationMap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentorId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  KEY `mentorId` (`mentorId`),
  CONSTRAINT `MentorIdeationMap_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`),
  CONSTRAINT `MentorIdeationMap_ibfk_2` FOREIGN KEY (`mentorId`) REFERENCES `Mentor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MentorIdeationMap`
--

LOCK TABLES `MentorIdeationMap` WRITE;
/*!40000 ALTER TABLE `MentorIdeationMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `MentorIdeationMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MentorTechStack`
--

DROP TABLE IF EXISTS `MentorTechStack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MentorTechStack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentorId` int(11) NOT NULL,
  `techStackId` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mentorId` (`mentorId`),
  KEY `techStackId` (`techStackId`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `MentorTechStack_ibfk_1` FOREIGN KEY (`mentorId`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `MentorTechStack_ibfk_2` FOREIGN KEY (`techStackId`) REFERENCES `TechStack` (`id`),
  CONSTRAINT `MentorTechStack_ibfk_3` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MentorTechStack`
--

LOCK TABLES `MentorTechStack` WRITE;
/*!40000 ALTER TABLE `MentorTechStack` DISABLE KEYS */;
/*!40000 ALTER TABLE `MentorTechStack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TechStack`
--

DROP TABLE IF EXISTS `TechStack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TechStack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `techName` varchar(20) NOT NULL,
  `imagePath` varchar(50) NOT NULL,
  `framework` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `TechStack_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TechStack`
--

LOCK TABLES `TechStack` WRITE;
/*!40000 ALTER TABLE `TechStack` DISABLE KEYS */;
/*!40000 ALTER TABLE `TechStack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TechType`
--

DROP TABLE IF EXISTS `TechType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TechType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creatorStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creatorUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorUser` (`creatorUser`),
  CONSTRAINT `TechType_ibfk_1` FOREIGN KEY (`creatorUser`) REFERENCES `UserDetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TechType`
--

LOCK TABLES `TechType` WRITE;
/*!40000 ALTER TABLE `TechType` DISABLE KEYS */;
/*!40000 ALTER TABLE `TechType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDetails`
--

DROP TABLE IF EXISTS `UserDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `contactNumber` bigint(10) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserDetails`
--

LOCK TABLES `UserDetails` WRITE;
/*!40000 ALTER TABLE `UserDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRoles`
--

DROP TABLE IF EXISTS `UserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRoles` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(25) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRoles`
--

LOCK TABLES `UserRoles` WRITE;
/*!40000 ALTER TABLE `UserRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserRoles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-28 14:09:28
