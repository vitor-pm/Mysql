-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blog` DEFAULT CHARACTER SET utf8 ;
USE `db_blog` ;

-- -----------------------------------------------------
-- Table `db_blog`.`tb_tema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_tema` (
  `id_tema` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_tema`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blog`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blog`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `date` DATE NULL,
  `id_tema` BIGINT NOT NULL,
  `id_usuario` BIGINT NOT NULL,
  PRIMARY KEY (`id`, `id_tema`, `id_usuario`),
  INDEX `fk_tb_tema_has_tb_usuarios_tb_usuarios1_idx` (`id_usuario` ASC) VISIBLE,
  INDEX `fk_tb_tema_has_tb_usuarios_tb_tema_idx` (`id_tema` ASC) VISIBLE,
  CONSTRAINT `fk_tb_tema_has_tb_usuarios_tb_tema`
    FOREIGN KEY (`id_tema`)
    REFERENCES `db_blog`.`tb_tema` (`id_tema`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_tema_has_tb_usuarios_tb_usuarios1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `db_blog`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
