CREATE TABLE IF NOT EXISTS
  `seguimento` (
  `id` SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `descricao` VARCHAR(100) NOT NULL,
  `setor_id` SMALLINT(6) UNSIGNED NOT NULL,  
  `ativo` TINYINT(1) NOT NULL DEFAULT 1,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_seguimento_setor` FOREIGN KEY (`setor_id`) REFERENCES `setor` (`id`)
)
ENGINE=InnoDB;