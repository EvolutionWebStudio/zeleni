-- -----------------------------------------------------
-- Table `zeleni`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zeleni`.`Menu` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `item` VARCHAR(45) NULL,
  `category_id` INT NULL,
  `lang` VARCHAR(10) NULL,
  `parent_item` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Menu_category1_idx` (`category_id` ASC),
  INDEX `fk_Menu_Menu1_idx` (`parent_item` ASC),
  CONSTRAINT `fk_Menu_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `zeleni`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Menu_Menu1`
    FOREIGN KEY (`parent_item`)
    REFERENCES `zeleni`.`Menu` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
