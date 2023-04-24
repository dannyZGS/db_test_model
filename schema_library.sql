-- MySQL Script generated by MySQL Workbench
-- Mon 24 Apr 2023 03:22:29 PM -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `library` ;

-- -----------------------------------------------------
-- Table `library`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`author` (
  `id_author` INT UNSIGNED NOT NULL,
  `author_full_name` VARCHAR(100) NOT NULL,
  `date_birth` DATE NOT NULL,
  `gender` ENUM('M', 'F') NOT NULL,
  `birth_place` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `written_works` INT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_author`),
  UNIQUE INDEX `author_full_name` (`author_full_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`books` (
  `id_book` INT NOT NULL,
  `id_author` INT UNSIGNED NOT NULL,
  `author` VARCHAR(100) NOT NULL,
  `tittle_book` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  `publication_date` DATE NOT NULL,
  PRIMARY KEY (`id_book`),
  UNIQUE INDEX `tittle_book` (`tittle_book` ASC) VISIBLE,
  INDEX `id_author` (`id_author` ASC) VISIBLE,
  CONSTRAINT `books_ibfk_1`
    FOREIGN KEY (`id_author`)
    REFERENCES `library`.`author` (`id_author`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`editorial` (
  `id_edit` INT UNSIGNED NOT NULL,
  `name_editorial` VARCHAR(100) NOT NULL,
  `addres` VARCHAR(100) NOT NULL,
  `tittle_book` VARCHAR(100) NOT NULL,
  `author_book` VARCHAR(100) NOT NULL,
  `price_book` FLOAT NOT NULL,
  `stock_book` INT UNSIGNED NOT NULL DEFAULT '10',
  `in_book` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`in_editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`in_editorial` (
  `id_edit` INT UNSIGNED NOT NULL,
  `name_editorial` VARCHAR(100) NOT NULL,
  `addres` VARCHAR(100) NOT NULL,
  `tittle_book` VARCHAR(100) NOT NULL,
  `author_book` VARCHAR(100) NOT NULL,
  `price_book` FLOAT NOT NULL,
  `stock_book` INT UNSIGNED NOT NULL DEFAULT '10',
  `in_book` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`update_editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`update_editorial` (
  `id_edit_u` INT UNSIGNED NOT NULL,
  `name_editorial_u` VARCHAR(100) NOT NULL,
  `addres_u` VARCHAR(100) NOT NULL,
  `tittle_book_u` VARCHAR(100) NOT NULL,
  `author_book_u` VARCHAR(100) NOT NULL,
  `price_book_u` FLOAT NOT NULL,
  `stock_book_u` INT UNSIGNED NOT NULL DEFAULT '10',
  `in_book_u` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `n_id_edit_u` INT UNSIGNED NULL DEFAULT NULL,
  `n_name_editorial_u` VARCHAR(100) NOT NULL,
  `n_addres_u` VARCHAR(100) NOT NULL,
  `n_tittle_book_u` VARCHAR(100) NOT NULL,
  `n_author_book_u` VARCHAR(100) NOT NULL,
  `n_price_book_u` FLOAT NOT NULL,
  `n_stock_book_u` INT UNSIGNED NOT NULL DEFAULT '10',
  `n_in_book_u` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit_u`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `library` ;

-- -----------------------------------------------------
-- Placeholder table for view `library`.`view_books_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`view_books_author` (`Identificador del Libro` INT, `Identificador del Autor` INT, `Nombre del Escritor` INT, `Titulo del Libro` INT);

-- -----------------------------------------------------
-- View `library`.`view_books_author`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `library`.`view_books_author`;
USE `library`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`sgzdServer`@`%` SQL SECURITY DEFINER VIEW `library`.`view_books_author` AS select ltrim(rtrim(`B`.`id_book`)) AS `Identificador del Libro`,ltrim(rtrim(`B`.`id_author`)) AS `Identificador del Autor`,ltrim(rtrim(`B`.`author`)) AS `Nombre del Escritor`,ltrim(rtrim(`B`.`tittle_book`)) AS `Titulo del Libro` from (`library`.`books` `B` join `library`.`author` `A` on((`B`.`id_author` = `A`.`id_author`)));
USE `library`;

DELIMITER $$
USE `library`$$
CREATE
DEFINER=`sgzdServer`@`%`
TRIGGER `library`.`after_insert_books_update`
AFTER INSERT ON `library`.`books`
FOR EACH ROW
BEGIN

  UPDATE author SET written_works = written_works + 1 WHERE id_author = NEW.id_author;

END$$

USE `library`$$
CREATE
DEFINER=`sgzdServer`@`%`
TRIGGER `library`.`update_editorial_bu`
BEFORE UPDATE ON `library`.`editorial`
FOR EACH ROW
BEGIN

INSERT INTO update_editorial
(id_edit_u, name_editorial_u, addres_u, tittle_book_u, author_book_u, price_book_u, stock_book_u,in_book_u,
n_id_edit_u, n_name_editorial_u, n_addres_u, n_tittle_book_u, n_author_book_u, n_price_book_u, n_stock_book_u, n_in_book_u)

VALUES
(OLD.id_edit, OLD.name_editorial, OLD.addres, OLD.tittle_book, OLD.author_book, OLD.price_book, OLD.stock_book, OLD.in_book,
NEW.id_edit, NEW.name_editorial, NEW.addres, NEW.tittle_book, NEW.author_book, NEW.price_book, NEW.stock_book, NOW());

END$$

USE `library`$$
CREATE
DEFINER=`sgzdServer`@`%`
TRIGGER `library`.`update_price_editorial_bu`
BEFORE UPDATE ON `library`.`editorial`
FOR EACH ROW
BEGIN

  IF(NEW.price_book <= 0) THEN
    SET NEW.price_book=OLD.price_book;

  ELSEIF(NEW.price_book >25.50) THEN
    SET NEW.price_book=NEW.price_book;
  END IF;

END$$

USE `library`$$
CREATE
DEFINER=`sgzdServer`@`%`
TRIGGER `library`.`insert_in_editorial_bi`
BEFORE INSERT ON `library`.`in_editorial`
FOR EACH ROW
BEGIN 
INSERT INTO editorial(id_edit, name_editorial, addres, tittle_book, author_book, price_book, stock_book, in_book)
VALUES (NEW.id_edit, NEW.name_editorial, NEW.addres, NEW.tittle_book, NEW.author_book, NEW.price_book, NEW.stock_book, NEW.in_book); 
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
