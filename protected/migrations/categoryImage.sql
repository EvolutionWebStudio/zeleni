-- -----------------------------------------------------
-- Table `zeleni`.`category_image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`category_image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_category_image_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_category_image_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `zeleni`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;