ALTER TABLE `arquivo` ADD COLUMN `referencia` TINYINT UNSIGNED DEFAULT NULL AFTER `id`;
ALTER TABLE `arquivo` ADD COLUMN `referencia_id` INT(11) UNSIGNED DEFAULT NULL AFTER `referencia`;

