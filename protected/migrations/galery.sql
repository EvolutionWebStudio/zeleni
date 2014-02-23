SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `zeleni` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `zeleni` ;



-- -----------------------------------------------------
-- Table `zeleni`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`album` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `folder` VARCHAR(45) NULL,
  `number` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `zeleni`.`image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `link` VARCHAR(45) NULL,
  `album_id` INT NOT NULL,
  `caption` VARCHAR(255) NULL,
  `number` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_image_album1_idx` (`album_id` ASC),
  CONSTRAINT `fk_image_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `zeleni`.`album` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
