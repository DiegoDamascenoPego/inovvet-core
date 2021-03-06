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

CREATE TABLE IF NOT EXISTS `loja` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo_documento` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0 = CPF 1 = CNPJ',
  `documento` VARCHAR(14) NOT NULL,
  `razao_social` VARCHAR(150) NULL,
  `nome_fantasia` VARCHAR(150) NULL,
  `tipo_loja` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0 = Loja de Carros',
  `cep` VARCHAR(45) NULL,
  `rua` VARCHAR(150) NOT NULL,
  `numero` VARCHAR(20) NOT NULL,
  `complemento` VARCHAR(150) NULL,
  `bairro` VARCHAR(150) NOT NULL,
  `cidade_id` INT(11) UNSIGNED NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 1,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
  ENGINE=InnoDB;
  
--  CREATE TABLE IF NOT EXISTS `loja_endereco` (
--  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
--  `conta_id` INT(11) UNSIGNED NOT NULL,
--  `loja_id` INT(11) UNSIGNED NOT NULL,
--  `cep` VARCHAR(45) NULL,
--  `rua` VARCHAR(150) NOT NULL,
--  `numero` VARCHAR(20) NOT NULL,
--  `complemento` VARCHAR(150) NULL,
--  `bairro` VARCHAR(150) NOT NULL,
--  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
--  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--  `cidade_id` INT(11) UNSIGNED NOT NULL,
--  PRIMARY KEY (`id`),
--  CONSTRAINT `fk_endereco_on_loja` FOREIGN KEY (`loja_id`) REFERENCES `loja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
--  CONSTRAINT `fk_endereco_on_cidade`   FOREIGN KEY (`cidade_id`)REFERENCES `cidade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
--    ENGINE=InnoDB;