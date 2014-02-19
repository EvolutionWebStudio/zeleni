SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `zeleni` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `zeleni` ;

-- -----------------------------------------------------
-- Table `zeleni`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `alias` VARCHAR(45) NULL,
  `link` VARCHAR(45) NULL,
  `parentCategory` VARCHAR(45) NULL,
  `order` INT NULL,
  `lang` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zeleni`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`post` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `content` TEXT NULL,
  `lang` VARCHAR(45) NULL,
  `link` VARCHAR(45) NULL,
  `linkText` VARCHAR(45) NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_post_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_post_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `zeleni`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zeleni`.`slider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`slider` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `titleBig` VARCHAR(45) NULL,
  `title` VARCHAR(45) NULL,
  `content` TEXT NULL,
  `img` VARCHAR(45) NULL,
  `lang` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zeleni`.`banner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`banner` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `title` VARCHAR(45) NULL,
  `content` TEXT NULL,
  `img` VARCHAR(45) NULL,
  `lang` VARCHAR(45) NULL,
  `link` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zeleni`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
