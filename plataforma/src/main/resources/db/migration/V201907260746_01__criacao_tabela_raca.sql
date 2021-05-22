CREATE TABLE `raca` (
  `id` SMALLINT NOT NULL AUTO_INCREMENT,
  `tipo` TINYINT(1) NULL,
  `descricao` VARCHAR(50) NULL,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));