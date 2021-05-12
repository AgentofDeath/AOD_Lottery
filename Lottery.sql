CREATE TABLE `lottery` (
	`steam` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`numbers` VARCHAR(255) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;


INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_lotto', 'lotto', 1);