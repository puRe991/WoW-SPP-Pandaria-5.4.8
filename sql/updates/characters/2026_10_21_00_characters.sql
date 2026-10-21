-- Solocraft: the table was only shipped in sql/updates/master/characters, which the updater never reads
CREATE TABLE IF NOT EXISTS `custom_solocraft_character_stats` (
  `guid` int unsigned NOT NULL,
  `Difficulty` float NOT NULL,
  `GroupSize` int NOT NULL,
  `SpellPower` int unsigned NOT NULL DEFAULT '0',
  `Stats` float NOT NULL DEFAULT '100',
  PRIMARY KEY (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Playerbots: bot, guild and arena team names live in the characters database
INSERT IGNORE INTO `updates_include` (`path`, `state`) VALUES
('$/modules/mod_playerbots/data/sql/characters', 'RELEASED');
