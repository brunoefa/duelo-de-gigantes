CREATE TABLE `duelo`.`duelo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome1` VARCHAR(45) NOT NULL,
  `imagem1` TEXT NOT NULL,
  `vitorias1` INT NOT NULL DEFAULT 0,
  `nome2` VARCHAR(45) NOT NULL,
  `imagem2` TEXT NOT NULL,
  `vitorias2` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
