-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema uamedia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema uamedia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `uamedia` DEFAULT CHARACTER SET utf8 ;
USE `uamedia` ;

-- -----------------------------------------------------
-- Table `uamedia`.`carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`carrera` (
  `idCarrera` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreCarrera` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`uea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`uea` (
  `idUEA` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Carrera_idCarrera` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idUEA`),
  INDEX `fk_UEA_Carrera1_idx` (`Carrera_idCarrera` ASC),
  CONSTRAINT `fk_UEA_Carrera1`
    FOREIGN KEY (`Carrera_idCarrera`)
    REFERENCES `uamedia`.`carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`tiporol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`tiporol` (
  `idTipoRol` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreRol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipoRol`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`autor` (
  `idAutor` INT(10) UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NULL DEFAULT NULL,
  `sexo` TINYINT(1) NULL DEFAULT NULL,
  `fechaNacimiento` DATE NULL DEFAULT NULL,
  `contraseña` BLOB NULL DEFAULT NULL,
  `tipoRol_idTipoRol` INT(10) UNSIGNED NOT NULL,
  `uEA_idUEA` INT(11) NOT NULL,
  `Carrera_idCarrera` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idAutor`),
  INDEX `fk_tablaAutor_tablaTipoRol_idx` (`tipoRol_idTipoRol` ASC),
  INDEX `fk_Autor_UEA1_idx` (`uEA_idUEA` ASC),
  INDEX `fk_Autor_Carrera1_idx` (`Carrera_idCarrera` ASC),
  CONSTRAINT `fk_Autor_Carrera1`
    FOREIGN KEY (`Carrera_idCarrera`)
    REFERENCES `uamedia`.`carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Autor_UEA1`
    FOREIGN KEY (`uEA_idUEA`)
    REFERENCES `uamedia`.`uea` (`idUEA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tablaAutor_tablaTipoRol`
    FOREIGN KEY (`tipoRol_idTipoRol`)
    REFERENCES `uamedia`.`tiporol` (`idTipoRol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`recurso` (
  `idRecurso` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreRecurso` VARCHAR(100) NULL DEFAULT NULL,
  `descripcionRecurso` MEDIUMTEXT NULL DEFAULT NULL,
  `fechaPublicacion` VARCHAR(8) NULL DEFAULT NULL,
  `calificacionPromedio` INT(11) NULL DEFAULT NULL,
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `licencia` VARCHAR(45) NULL DEFAULT NULL,
  `tipoRecurso` VARCHAR(45) NULL DEFAULT NULL,
  `temaGeneral` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idRecurso`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`comentario` (
  `idComentario` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(500) NULL DEFAULT NULL,
  `recurso_idRecurso` INT(10) UNSIGNED NOT NULL,
  `Autor_idAutor` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idComentario`),
  INDEX `fk_tablaComentarios_tablaRecurso1_idx` (`recurso_idRecurso` ASC),
  INDEX `fk_Comentarios_Autor1_idx` (`Autor_idAutor` ASC),
  CONSTRAINT `fk_Comentarios_Autor1`
    FOREIGN KEY (`Autor_idAutor`)
    REFERENCES `uamedia`.`autor` (`idAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tablaComentarios_tablaRecurso1`
    FOREIGN KEY (`recurso_idRecurso`)
    REFERENCES `uamedia`.`recurso` (`idRecurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`publicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`publicacion` (
  `idPublicacion` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Autor_idAutor` INT(10) UNSIGNED NOT NULL,
  `Recurso_idRecurso` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idPublicacion`),
  INDEX `fk_tablaPublicaciones_tablaAutor1_idx` (`Autor_idAutor` ASC),
  INDEX `fk_tablaPublicaciones_tablaRecurso1_idx` (`Recurso_idRecurso` ASC),
  CONSTRAINT `fk_tablaPublicaciones_tablaAutor1`
    FOREIGN KEY (`Autor_idAutor`)
    REFERENCES `uamedia`.`autor` (`idAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tablaPublicaciones_tablaRecurso1`
    FOREIGN KEY (`Recurso_idRecurso`)
    REFERENCES `uamedia`.`recurso` (`idRecurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`recursouea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`recursouea` (
  `idRecursoUEA` VARCHAR(45) NOT NULL,
  `UEA_idUEA` INT(11) NOT NULL,
  `Recurso_idRecurso` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idRecursoUEA`),
  INDEX `fk_RecursoUEA_UEA1_idx` (`UEA_idUEA` ASC),
  INDEX `fk_RecursoUEA_Recurso1_idx` (`Recurso_idRecurso` ASC),
  CONSTRAINT `fk_RecursoUEA_Recurso1`
    FOREIGN KEY (`Recurso_idRecurso`)
    REFERENCES `uamedia`.`recurso` (`idRecurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RecursoUEA_UEA1`
    FOREIGN KEY (`UEA_idUEA`)
    REFERENCES `uamedia`.`uea` (`idUEA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `uamedia`.`valoracion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uamedia`.`valoracion` (
  `idValoracion` INT(11) NOT NULL,
  `valoracion` DECIMAL(10,0) NULL DEFAULT NULL,
  `recurso_idRecurso` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idValoracion`),
  INDEX `fk_tablaValoraciones_tablaRecurso1_idx` (`recurso_idRecurso` ASC),
  CONSTRAINT `fk_tablaValoraciones_tablaRecurso1`
    FOREIGN KEY (`recurso_idRecurso`)
    REFERENCES `uamedia`.`recurso` (`idRecurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
