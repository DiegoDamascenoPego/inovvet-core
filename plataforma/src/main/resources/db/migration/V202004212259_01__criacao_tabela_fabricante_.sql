CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo` TINYINT(1) NOT NULL,
  `tipo_documento` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '0 = CPF 1 = CNPJ',
  `documento` VARCHAR(14) DEFAULT NULL,
  `razao_social` VARCHAR(150) NULL,
  `nome_fantasia` VARCHAR(150) NULL,
  `email` VARCHAR(255) NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 1,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
  ENGINE=InnoDB;
  
  CREATE TABLE IF NOT EXISTS
  `pessoa_endereco` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pessoa_id` INT(11) UNSIGNED NOT NULL,
  `cidade_id` INT(11) UNSIGNED NOT NULL,  
  `tipo` TINYINT(1) NOT NULL DEFAULT 1 COMMENT 'Residencial, Entrega, Comercial',
  `cep` VARCHAR(10) NULL,
  `rua` VARCHAR(150) NULL,
  `numero` VARCHAR(50) NULL,
  `bairro` VARCHAR(100) NULL,
  `complemento` VARCHAR(100), 
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cliente_endereco_on_pessoa` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`))
   ENGINE=InnoDB;
   
   
   CREATE TABLE IF NOT EXISTS
  `pessoa_telefone` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pessoa_id` INT(11) UNSIGNED NOT NULL,
  `tipo` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'Celular, Residencial, Comercial',
  `numero` VARCHAR(20) NOT NULL,
  `observacao` VARCHAR(100) NULL,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cliente_telefone_on_pessoa` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoa` (`id`)
)
ENGINE=InnoDB;