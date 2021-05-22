CREATE TABLE IF NOT EXISTS
  `usuario` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `perfil_id` TINYINT(1) UNSIGNED NOT NULL,
  `ativo` TINYINT(1) NOT NULL DEFAULT 1,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
   ENGINE=InnoDB;
      
 CREATE TABLE IF NOT EXISTS `recurso` (
  `nome` VARCHAR(150) NOT NULL,
  `descricao` VARCHAR(150) NULL,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nome`))
       ENGINE=InnoDB;
     
     
CREATE TABLE IF NOT EXISTS `perfil_acesso` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `recurso_nome` VARCHAR(150) NOT NULL,
  `perfil_id` TINYINT(1) UNSIGNED NOT NULL,
  `data_atualizacao` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_cadastro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`, `recurso_nome`),
  CONSTRAINT `fk_usuario_contas_acesso_recurso`
    FOREIGN KEY (`recurso_nome`)
    REFERENCES `recurso` (`nome`)
    )
  ENGINE=InnoDB;