-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`TipoRol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoRol` (
  `idTipoRol` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreRol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoRol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Division`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Division` (
  `idDivision` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreDivision` VARCHAR(45) NULL,
  PRIMARY KEY (`idDivision`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carrera` (
  `idCarrera` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreCarrera` VARCHAR(100) NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UnidadUAM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UnidadUAM` (
  `idUnidadUAM` INT NOT NULL,
  `nombreUnidadUAM` VARCHAR(100) NULL,
  PRIMARY KEY (`idUnidadUAM`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carrera` (
  `idCarrera` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreCarrera` VARCHAR(100) NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Division`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Division` (
  `idDivision` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreDivision` VARCHAR(45) NULL,
  PRIMARY KEY (`idDivision`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UEA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UEA` (
  `idUEA` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `Carrera_idCarrera` INT UNSIGNED NOT NULL,
  `Division_idDivision` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idUEA`),
  INDEX `fk_UEA_Carrera1_idx` (`Carrera_idCarrera` ASC),
  INDEX `fk_UEA_Division1_idx` (`Division_idDivision` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Autor` (
  `idAutor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nick` VARCHAR(45) NULL,
  `nombre` VARCHAR(100) NULL,
  `matricula` INT NULL,
  `correo` VARCHAR(45) NULL,
  `sexo` TINYINT(1) NULL,
  `fechaNacimiento` DATE NULL,
  `contraseña` BLOB NULL,
  `tipoRol_idTipoRol` INT UNSIGNED NOT NULL,
  `division_idDivision` INT UNSIGNED NOT NULL,
  `carrera_idCarrera` INT UNSIGNED NOT NULL,
  `unidadUAM_idUnidadUAM` INT NOT NULL,
  `uEA_idUEA` INT NOT NULL,
  PRIMARY KEY (`idAutor`),
  INDEX `fk_tablaAutor_tablaTipoRol_idx` (`tipoRol_idTipoRol` ASC),
  INDEX `fk_tablaAutor_tablaDivision1_idx` (`division_idDivision` ASC),
  INDEX `fk_tablaAutor_tablaCarrera1_idx` (`carrera_idCarrera` ASC),
  INDEX `fk_tablaAutor_tablaUnidadUAM1_idx` (`unidadUAM_idUnidadUAM` ASC),
  INDEX `fk_Autor_UEA1_idx` (`uEA_idUEA` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recurso` (
  `idRecurso` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombreRecurso` VARCHAR(100) NULL,
  `descripcionRecurso` MEDIUMTEXT NULL,
  `fechaPublicacion` DATE NULL,
  `calificacionPromedio` INT NULL,
  `url` VARCHAR(300) NULL,
  `licencia` VARCHAR(45) NULL,
  PRIMARY KEY (`idRecurso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comentarios` (
  `idtablaComentarios` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(500) NULL,
  `recurso_idRecurso` INT UNSIGNED NOT NULL,
  `Autor_idAutor` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idtablaComentarios`),
  INDEX `fk_tablaComentarios_tablaRecurso1_idx` (`recurso_idRecurso` ASC),
  INDEX `fk_Comentarios_Autor1_idx` (`Autor_idAutor` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Valoraciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Valoraciones` (
  `idtablaValoraciones` INT NOT NULL,
  `valoracion` DECIMAL(10,0) NULL,
  `recurso_idRecurso` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idtablaValoraciones`),
  INDEX `fk_tablaValoraciones_tablaRecurso1_idx` (`recurso_idRecurso` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Publicaciones` (
  `idPublicaciones` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Autor_idAutor` INT UNSIGNED NOT NULL,
  `Recurso_idRecurso` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idPublicaciones`),
  INDEX `fk_tablaPublicaciones_tablaAutor1_idx` (`Autor_idAutor` ASC),
  INDEX `fk_tablaPublicaciones_tablaRecurso1_idx` (`Recurso_idRecurso` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RecursoUEA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RecursoUEA` (
  `idRecursoUEA` VARCHAR(45) NOT NULL,
  `UEA_idUEA` INT NOT NULL,
  `Recurso_idRecurso` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idRecursoUEA`),
  INDEX `fk_RecursoUEA_UEA1_idx` (`UEA_idUEA` ASC),
  INDEX `fk_RecursoUEA_Recurso1_idx` (`Recurso_idRecurso` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
