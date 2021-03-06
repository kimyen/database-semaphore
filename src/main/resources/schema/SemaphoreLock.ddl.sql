CREATE TABLE IF NOT EXISTS `SEMAPHORE_LOCK` (
  `LOCK_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TOKEN` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `EXPIRES_ON` TIMESTAMP NOT NULL,
  PRIMARY KEY (`TOKEN`),
  CONSTRAINT `SEM_LOCK_MASTER_FK` FOREIGN KEY (`LOCK_KEY`) REFERENCES `SEMAPHORE_MASTER` (`LOCK_KEY`) ON DELETE CASCADE
)