ALTER TABLE `charainfo`
MODIFY COLUMN `QuestCompleteFlags` varbinary(476) DEFAULT NULL;

CREATE TABLE if not exists `charamonsternote` (
  `CharacterId` int(20) NOT NULL,
  `Category_0` binary(41) DEFAULT NULL,
  `Category_1` binary(41) DEFAULT NULL,
  `Category_2` binary(41) DEFAULT NULL,
  `Category_3` binary(41) DEFAULT NULL,
  `Category_4` binary(41) DEFAULT NULL,
  `Category_5` binary(41) DEFAULT NULL,
  `Category_6` binary(41) DEFAULT NULL,
  `Category_7` binary(41) DEFAULT NULL,
  `Category_8` binary(41) DEFAULT NULL,
  `Category_9` binary(41) DEFAULT NULL,
  `Category_10` binary(41) DEFAULT NULL,
  `Category_11` binary(41) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(`CharacterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

