CREATE TABLE IF NOT EXISTS `cidade` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `codigo` VARCHAR(10) NOT NULL,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cidade_codigo` (`codigo`))
  ENGINE=InnoDB;
  
  CREATE TABLE uf(
  sigla char(2) NOT NULL,
  codigo tinyint(1) NOT NULL,
  nome varchar(45) DEFAULT NULL,
  PRIMARY KEY (sigla)
) ENGINE=InnoDB;