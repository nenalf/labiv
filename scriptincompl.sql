-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Localidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Localidade` (
  `idLocalidade` INT NOT NULL AUTO_INCREMENT,
  `Região` VARCHAR(45) NULL,
  `Estado` VARCHAR(45) NULL,
  `Localidadecol` VARCHAR(45) NULL,
  PRIMARY KEY (`idLocalidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tempo` (
  `idTempo` INT NOT NULL AUTO_INCREMENT,
  `Mes` INT NULL,
  `Ano` INT NULL,
  PRIMARY KEY (`idTempo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fonte de Energia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fonte de Energia` (
  `idTipo de Energia` INT NOT NULL AUTO_INCREMENT,
  `Descrilção do Tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipo de Energia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fato - Energia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fato - Energia` (
  `Qtde Coletada` DECIMAL(12,3) NULL,
  `Qtde Programada` DECIMAL(12,3) NULL,
  `Fator de Geração` DECIMAL(6,2) NULL,
  `Tempo_idTempo` INT NOT NULL,
  `Localidade_idLocalidade` INT NOT NULL,
  `Fonte de Energia_idTipo de Energia` INT NOT NULL,
  `Qtde Verificada` DECIMAL(12,3) NULL,
  `Fato - Energiacol` VARCHAR(45) NULL,
  PRIMARY KEY (`Tempo_idTempo`, `Localidade_idLocalidade`, `Fonte de Energia_idTipo de Energia`),
  INDEX `fk_Fato - Energia_Tempo_idx` (`Tempo_idTempo` ASC) VISIBLE,
  INDEX `fk_Fato - Energia_Localidade1_idx` (`Localidade_idLocalidade` ASC) VISIBLE,
  INDEX `fk_Fato - Energia_Fonte de Energia1_idx` (`Fonte de Energia_idTipo de Energia` ASC) VISIBLE,
  CONSTRAINT `fk_Fato - Energia_Tempo`
    FOREIGN KEY (`Tempo_idTempo`)
    REFERENCES `mydb`.`Tempo` (`idTempo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato - Energia_Localidade1`
    FOREIGN KEY (`Localidade_idLocalidade`)
    REFERENCES `mydb`.`Localidade` (`idLocalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato - Energia_Fonte de Energia1`
    FOREIGN KEY (`Fonte de Energia_idTipo de Energia`)
    REFERENCES `mydb`.`Fonte de Energia` (`idTipo de Energia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
