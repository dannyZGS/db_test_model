-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id_author` int unsigned NOT NULL,
  `author_full_name` varchar(100) NOT NULL,
  `date_birth` date NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `birth_place` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `written_works` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_author`),
  UNIQUE KEY `author_full_name` (`author_full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Arthur Schopenhauer','1788-02-22','M','Danzig, Republica de las dos Naciones','2023-04-20 12:28:01',1),(2,'William Shakespeare','1564-04-23','M','Reino Unido Inglaterra','2023-04-20 12:38:33',1),(3,'Oscar Wilde','1854-10-16','M','Dublin Irlanda','2023-04-20 12:52:27',2),(4,'Virginia Woolf','1882-01-25','F','Londres Reino Unido','2023-04-20 12:52:27',1),(5,'Marcel Proust','1871-07-10','M','Paris Francia','2023-04-20 12:52:27',1),(6,'Herman Melville','1819-08-01','M','Nueva York, Estados Unidos','2023-04-20 12:52:27',1),(7,'Félix Lope de Vega Carpio','1562-11-25','M','Madrid Spain','2023-04-20 12:54:11',1),(8,'Franz Kafka','1883-07-03','M','Klosterneuburg Austria','2023-04-20 12:55:00',1),(9,'James Joyce','1882-02-02','M','Dublin Reino Unido de Gran Bretaña','2023-04-20 12:55:00',1),(10,'Ernest Miller Hemingway','1899-07-21','M','Ketchum Estados Unidos','2023-04-20 12:55:02',2),(11,'David Goggins','1975-02-17','M','Nueva York Estados Unidos','2023-04-20 21:57:46',1),(12,'Arthur C Clarke','1917-12-16','M','Minehead Reino Unido','2023-04-20 21:58:05',1),(13,'William Blake','1757-11-28','M','Londres Reino Unido','2023-04-20 22:03:21',1),(14,'Ken Follet','1949-06-05','M','Londres Reino Unido','2023-04-20 22:03:21',1),(15,'Carlo Rovelli','1956-05-03','M','Verona, Italia','2023-04-20 22:03:22',1),(16,'ALbert Camus','1913-11-07','M','Villeblevin Francia','2023-04-20 22:15:08',1),(17,'Platon','0347-05-19','M','Grecia','2023-04-20 22:15:08',1),(18,'Jean-Paul Sartre','1905-06-21','M','Paris Francia','2023-04-20 22:15:08',1),(19,'Jean-Jacques Rousseau','1712-06-28','M','Ermenonville Francia','2023-04-20 22:15:08',1),(20,'Friedrich Wilhelm Nietzsche','1844-10-15','M','Alemania','2023-04-20 23:26:15',1),(21,'Jorge Luis Borges','1899-08-24','M','Buenos Aires, Argentina','2023-04-21 22:37:38',1),(22,'Mario Benedetti','1920-09-14','M','Paso de los Toros, Uruguay','2023-04-21 22:37:38',1),(23,'Julio Cortazar','1914-08-26','M','Ixelles, Belgica','2023-04-21 22:37:38',1),(24,'Federico Garcia Lorca','1898-06-05','M','Fuente Vaqueros, Spain','2023-04-21 22:38:20',1),(25,'Miguel de Cervantes','1547-01-10','M','Alcala de Henares, Spain','2023-04-21 22:49:03',1),(26,'Charles Dickens','1812-02-07','M','Landport Reino Unido','2023-04-21 23:09:01',1),(27,'Fiódor Dostoyevski','1821-11-11','M','Moscu, Rusia','2023-04-21 23:09:01',1),(28,'Edgar Allan Poe','1849-10-19','M','Boston, Estados Unidos','2023-04-21 23:09:01',1),(29,'Julio Verne','1828-02-08','M','Nantes, Francia','2023-04-21 23:11:46',1),(30,'Stephen King','1947-09-21','M','Portland, Estados Unidos','2023-04-21 23:14:45',1),(31,'George Orwell','1903-06-25','M','Motihari, India','2023-04-22 12:02:03',1),(32,'William Faulkner','1897-09-25','M','Misisipi, Estados Unidos','2023-04-22 12:02:03',1),(33,'Alexandre Dumas','1802-07-25','M','Sena Maritimo, Francia','2023-04-22 12:02:03',1),(34,'León Tolstói','1828-09-09','M','Polyana, Rusia','2023-04-22 12:02:03',1),(35,'Johann Wolfgang von Goethe','1749-08-28','M','Weimar, Alemania','2023-04-22 12:02:04',1),(36,'Margaret Atwood','1939-11-18','F','Ottwa, Canada','2023-04-22 12:02:04',1),(37,'William Butler Yeats','1865-06-13','M','Sandymount, Irlanda','2023-04-22 12:02:04',1),(38,'Aldous Huxley','1894-07-26','M','Godalming, Reino Unido','2023-04-22 11:32:28',1),(39,'Charles Bukowski','1920-08-16','M','Andernach, Alemania','2023-04-22 11:32:28',1),(40,'Howard Phillips Lovecraft','1890-08-20','M','Rhode Island, Estados Unidos','2023-04-22 11:32:28',1),(41,'J. R. R. Tolkien','1892-01-03','M','Bloemfontein, Sudáfrica','2023-04-22 11:32:28',1),(42,'Truman Capote','1924-09-30','M','Luisiana, Estados Unidos','2023-04-22 11:32:28',1),(43,'Dante Alighieri','1265-05-29','M','Florencia, Italia','2023-04-22 11:32:28',1),(44,'Jane Austen','1775-12-16','F','Steventon, Reino Unido','2023-04-22 11:32:28',1),(45,'Haruki Murakami','1949-01-12','M','Kioto, Japon','2023-04-22 11:32:28',1),(46,'Arthur Conan Doyle','1859-05-22','M','Edimburgo, Reino Unido','2023-04-22 11:32:28',1),(47,'Charles Darwin','1809-02-12','M','Shrewsbury, Reino Unido','2023-04-22 11:32:28',1),(48,'Mary Wollstonecraft','1759-04-27','F','Londres, Reino Unido','2023-04-22 11:32:28',1),(49,'Stephen Hawking','1942-01-08','M','Oxford, Reino Unido','2023-04-22 11:32:28',1),(50,'Albert Einstein','1879-03-14','M','Ulm, Alemania','2023-04-22 11:32:30',1);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id_book` int NOT NULL,
  `id_author` int unsigned NOT NULL,
  `author` varchar(100) NOT NULL,
  `tittle_book` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publication_date` date NOT NULL,
  PRIMARY KEY (`id_book`),
  UNIQUE KEY `tittle_book` (`tittle_book`),
  KEY `id_author` (`id_author`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'Arthur Schopenhauer','El Mundo Como Voluntad y Representacion','Filosofia, descripcion del super yo y del entorno en conocimiento abstractos y reflexivo.','1818-01-20'),(2,10,'Ernest Miller Hemingway','El Viejo y el Mar','\nSi tenemos unos objetivos claros, podemos establecer que es importante y que no. Que es urgente y que no lo es.','1951-09-01'),(3,10,'Ernest Miller Hemingway','Por Quien Doblan las Campanas','Ernest Hemingway, participó en la guerra civil española como corresponsal, pudiendo ver los acontecimientos que se sucedieron durante la contienda.','1940-10-21'),(4,2,'William Shakespeare','Hamlet','La obra transcurre en Dinamarca, y trata de los acontecimientos posteriores al asesinato del rey Hamlet (padre del príncipe Hamlet), a manos de su hermano Claudio. El fantasma del rey pide a su hijo que se vengue de su asesino.','1603-01-20'),(5,3,'Oscar Wilde','El Retrato de Dorian Gray','\nEl libro narra la historia de un muchacho llamado Dorian Gray, poseedor de una belleza física extraordinaria.','1890-07-20'),(6,4,'Virginia Woolf','Orlando','Orlando: una biografía es la sexta novela de Virginia Woolf, publicada el 11 de octubre de 1928.','1928-10-11'),(7,5,'Marcel Proust','En Busca Del Tiempo Perdido','la vida tal como la experimenta cada persona desde su cuerpo y su espiritualidad únicas. Se desenvuelve, por tanto, en el ámbito de las emociones, de lo subjetivo y lo irracional.','1913-03-22'),(8,6,'Herman Melville','Moby Dick','Narra la travesía del barco ballenero Pequod, comandado por el capitán Ahab, junto a Ismael y el arponero Queequeg en la obsesiva y autodestructiva persecución de un gran cachalote blanco.','1851-10-18'),(9,7,'Felix Lope de Vega Carpio','La Dorotea','La Dorotea, publicada en 1632, es una narración en prosa enteramente dialogada de Lope de Vega.','1632-01-20'),(10,8,'Franz Kafka','La Metamorfosis','La metamorfosis es una novela corta escrita por Franz Kafka en 1915. La historia trata sobre Gregorio Samsa, cuya repentina transformación en un enorme insecto dificulta cada vez más la comunicación de su entorno social con él.','1915-05-20'),(11,9,'James Joyce','Ulises','la búsqueda simbólica de un hijo por parte de Bloom y a la conciencia emergente de Dedalus de dedicarse a la escritura.','1920-12-19'),(12,11,'David Goggins','No puedes Lastimarme','Auto ayuda, superacion personal, alcanzar objetivos personales.','2018-11-15'),(13,12,'Arthur C Clarke','Cita con Rama','Cita con Rama es una novela de ciencia ficción escrita por Arthur C. Clarke en 1972. Es una de las obras más premiadas del género.','1973-06-15'),(14,13,'William Blake','El Libro de Urizen','The Book of Urizen es uno de los llamados Libros proféticos de William Blake. Ilustrado con sus propias planchas de grabados a buril.','1794-01-16'),(16,15,'Carlo Rovelli','El Orden Del Tiempo','\nLos misterios del tiempo explicados por un eminente físico que, además, es un gran divulgador. Un ensayo apasionante.','2017-05-25'),(17,16,'Albert Camus','El Extranjero','El extranjero es una novela publicada en 1942, la primera del escritor francés Albert Camus. El extranjero suele asociarse a la filosofía del absurdo y al existencialismo, aunque Camus siempre se distanció de esta última etiqueta.','1942-04-22'),(18,17,'Platon','La Republica','\nPlatón expone en República cuál sería el gobierno ideal para las polis (ciudades - Estado) y da cuenta de aspectos tales como la educación que deberían recibir estos ciudadanos, la participación que tendrían en los asuntos de la ciudad','0370-01-10'),(19,18,'Jean-Paul Sartre','La Nausea','Los temas más importantes que destacan en esta novela de Sartre son la muerte, la historia, el progreso, el automatismo y la rebelión, entre otros.','1938-05-22'),(20,19,'Jean-Jacques Rousseau','El Contrato Social','El contrato social: o los principios del derecho político, más conocido como El contrato social, es un libro escrito por Jean-Jacques Rousseau.','1762-04-19'),(21,20,'Friedrich Wilhelm Nietzsche','La genealogía de la moral','\nLa genealogía de la moral: Un escrito polémico es una obra del filósofo alemán Friedrich Nietzsche, publicada en 1887. Fue un intento de suplementar y clarificar el punto de vista de su libro anterior, Más allá del bien y del mal.','1887-02-22'),(22,21,'Jorge Luis Borges','La Biblioteca de Babel','La biblioteca de Babel es un cuento del escritor argentino Jorge Luis Borges. Fue publicado por primera vez en la colección de relatos El jardín de senderos que se bifurcan, colección que más tarde fue incluida en Ficciones.','1941-03-19'),(23,22,'Mario Benedetti','La Tregua','\nLa tregua es una novela del escritor uruguayo Mario Benedetti, que narra la vida de Martín Santomé, un hombre viudo y cercano a jubilarse, que se enamora perdidamente de su compañera de trabajo.','1960-01-15'),(24,23,'Julio Cortazar','La Noche Boca Arriba','«La noche boca arriba» es un cuento del escritor argentino Julio Cortázar. Apareció en Final del juego publicado en 1955 —primera edición en México— y posteriormente en 1964 —segunda edición aumentada.','1956-02-22'),(25,24,'Federico Garcia Lorca','Sonetos Del Amor Oscuro','Los Sonetos del amor oscuro, o simplemente Sonetos, son una colección de sonetos escritos durante sus últimos años de vida por el poeta y dramaturgo español Federico García Lorca, recopilados y publicados póstumamente.','1983-04-23'),(26,25,'Miguel de Cervantes','Don Quijote de la Mancha','Don Quijote de la Mancha​ es una novela escrita por el español Miguel de Cervantes Saavedra. Publicada su primera parte con el título de El ingenioso hidalgo don Quijote de la Mancha.','1605-01-16'),(27,26,'Charles Dickens','Oliver Twist','Narra las aventuras y desventuras de un niño huérfano que vive en un hospicio hasta que es lo suficientemente mayor para empezar a trabajar como ayudante de un fabricante de ataúdes.','1838-05-11'),(28,27,'Fiódor Dostoyevski','Crimen y Castigo','Crimen y castigo es una novela de carácter psicológico escrita por el autor ruso Fiódor Dostoyevski. Fue publicada por primera vez, por entregas, en la revista El mensajero ruso','1866-02-10'),(29,28,'Edgar Allan Poe','El Cuervo','El cuervo es un poema narrativo escrito por Edgar Allan Poe, publicado por primera vez en 1845. Constituye su composición poética más famosa, ya que le dio reconocimiento internacional.','1845-01-29'),(30,29,'Julio Verne','La Vuelta al Mundo en Ochenta Dias','La vuelta al mundo en ochenta días es una novela del escritor francés Julio Verne publicada por entregas en Le Temps.','1872-12-22'),(31,30,'Stephen King','El Resplandor','El resplandor es la tercera novela de terror del escritor estadounidense Stephen King, publicada en 1977. El título se inspiró en la canción de John Lennon Instant Karma!.','1977-01-28'),(32,31,'George Orwell','Rebelion en la Granja','Rebelión en la granja es una novela corta satírica del escritor británico George Orwell. Publicada en 1945, la obra es una fábula mordaz sobre cómo el régimen soviético de Iósif Stalin corrompe el socialismo.','1945-08-17'),(33,32,'William Faulkner','El Ruido y la Furia','La vida es una sombra andante, un pobre jugador / que alardea y duda un momento sobre el escenario / y luego nadie oye: es un relato / narrado por un idiota, lleno de sonido y furia.','1929-01-10'),(34,33,'Alexandre Dumas','El Conde De Montecristo','El conde de Montecristo es una novela de aventuras clásica de Alexandre Dumas.​ Esta obra se suele considerar como el mejor trabajo de Dumas, y a menudo se incluye en las listas de las mejores novelas de todos los tiempos.','1846-01-15'),(35,34,'León Tolstói','Guerra y Paz','Guerra y paz, también conocida como La guerra y la paz, es una novela del escritor ruso León Tolstói, que comenzó a escribir en una época de convalecencia tras romperse el brazo al caerse de un caballo en una partida de caza en 1864.','1867-02-10'),(36,35,'Johann Wolfgang von Goethe','Prometeo','Prometeo es un poema escrito por Goethe entre 1772 y 1774. El yo poético del texto es el personaje mítico Prometeo, quien se dirige de manera desafiante a Zeus, defendiendo la liberación del ser humano frente al culto de lo divino.','1785-02-11'),(37,36,'Margaret Atwood','El Cuento de la Criada','El cuento de la criada, publicada en 1985, es una novela distópica y una de las obras más importantes de la escritora canadiense Margaret Atwood.','1985-01-15'),(38,37,'William Butler Yeats','Poesia Reunida','Yeats, proteico y en continua evolución, ofrece una obra coherente y tan variada como única: lo popular y lo elevado, lo íntimo y lo colectivo, lo sobrenatural y lo político, las raíces y la mirada al futuro,lo atemporal y la historia se unen es esas espirales que el poeta integró en su cosmovisión.','1906-03-17'),(39,38,'Aldous Huxley','Un Mundo Feliz','Un mundo feliz es la novela más famosa del escritor británico Aldous Huxley, publicada por primera vez en 1932. La novela es una distopía que anticipa el desarrollo en tecnología reproductiva, cultivos humanos e hipnopedia.','1932-04-19'),(40,39,'Charles Bukowski','La Senda del Perdedor','Una novela autobiográfica, contundente como un preciso uppercut, que nos muestra una visión bien distinta del «Sueño Americano», una visión «desde abajo», desde los pisoteados y humillados.','1982-09-01'),(41,40,'Howard Phillips Lovecraft','La Llamada de Cthulhu','La llamada de Cthulhu es un relato corto en estructura de novelette escrito por H. P. Lovecraft en el año 1926. La obra fue publicada por primera vez en febrero de 1928 por la editorial de pulp Weird Tales.','1928-02-10'),(42,41,'J. R. R. Tolkien','El señor de los anillos','El Señor de los Anillos es una novela de fantasía épica escrita por el filólogo y escritor británico J. R. R. Tolkien.','1954-07-29'),(43,42,'Truman Capote','A Sangre Fria','A sangre fría es una novela testimonio del periodista y escritor estadounidense Truman Capote.','1965-01-10'),(44,43,'Dante Alighieri','Divina Comedia','Considerada como la obra más perfecta de la humanidad por Jorge L. Borges, La Divina Comedia ofrece al lector un viaje alegórico y filosófico por el infierno, el purgatorio y el paraíso.','1472-01-10'),(45,44,'Jane Austen','Orgullo y Prejuicio','Jane Austen fue una novelista británica que vivió durante la época georgiana.','1813-01-28'),(46,45,'Haruki Murakami','Tokio Blues','La novela es una historia nostálgica que trata los temas de la pérdida y la sexualidad.','1987-02-11'),(47,46,'Arthur Conan Doyle','Las aventuras de Sherlock Holmes','Las aventuras de Sherlock Holmes es una colección de doce cuentos escritos por Arthur Conan Doyle, en los que el personaje principal es el detective de ficción Sherlock Holmes.','1892-10-14'),(48,47,'Charles Darwin','El Origen de las Especies','considerado uno de los trabajos precursores de la literatura científica y el fundamento de la teoría de la biología evolutiva.','1859-11-24'),(49,48,'Mary Wollstonecraft','Vindicación de los derechos de la mujer','La obra de Mary Wollstonecraft, Vindicación de los derechos de la mujer, cuyo título original en inglés es: A Vindication of the Rights of Woman: with Strictures on Political and Moral Subjects','1792-01-05'),(50,49,'Stephen Hawking','La Teoria del Todo: Origen y Destino','La teoría del todo es una serie de conferencias impartidas por Stephen Hawking. El objetivo de estas conferencias es esbozar lo que los científicos creen que es la historia del universo.','2002-01-10'),(51,50,'Albert Einstein','Teoria de la Relativida',' la relatividad afirmaba que las leyes de la física no podían depender de la velocidad a la que te movieras; todo lo que podías medir era la velocidad de un objeto en relación a otro.','1915-11-15'),(52,3,'Oscar Wilde','El ruiseñor y la rosa','El ruiseñor y la rosa es un cuento de hadas escrito por el poeta, escritor y dramaturgo británico-irlandés Oscar Wilde.','1888-02-16');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sgzdServer`@`%`*/ /*!50003 TRIGGER `after_insert_books_update` AFTER INSERT ON `books` FOR EACH ROW BEGIN

  UPDATE author SET written_works = written_works + 1 WHERE id_author = NEW.id_author;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `id_edit` int unsigned NOT NULL,
  `name_editorial` varchar(100) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `tittle_book` varchar(100) NOT NULL,
  `author_book` varchar(100) NOT NULL,
  `price_book` float NOT NULL,
  `stock_book` int unsigned NOT NULL DEFAULT '10',
  `in_book` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Linea Filologica','calle efimera #616 edificio libertad','El Mundo Como Voluntad y Representacion','Arthur Schopenhauer',9.99,11,'2023-04-21 18:25:41'),(2,'Eclipse Del Lector','street luciernaga oscura #454 casa distante','El Viejo y el Mar','Ernest Miller Hemingway',12.5,19,'2023-04-21 18:24:49'),(3,'book Magic','Av paginas entre lineas #888 edificio offline','Hamlet','William Shakespeare',18.8,9,'2023-04-22 14:46:07'),(4,'Listen Books','street sky on fire #222 store fly','El Retrato de Dorian Gray','Oscar Wilde',23.33,13,'2023-04-22 14:56:03'),(5,'Moon Dark Book','Space in the morning #454 edificio no way','Orlando','Virginia Woolf',29.11,11,'2023-04-22 15:01:05'),(6,'House Books','Street Fly in the winter #655 house blue','En Busca Del Tiempo Perdido','Marcel Proust',32.22,12,'2023-04-22 15:01:06'),(7,'Kings Books','Avenida Filantropia #222 casa los mares','Moby Dick','Herman Melville',27.66,15,'2023-04-22 15:10:06'),(8,'Coffe Break','Calle de la intriga #000 edificio Free','La Dorotea','Felix Lope de Vega Carpio',28.99,5,'2023-04-22 15:10:06'),(9,'Morning and Lesson','Av the liberty #111 casa black point','La Metamorfosis','Franz Kafka',37.44,17,'2023-04-22 15:10:06'),(10,'Club House Books','Pasaje y cruce del centro of city #2333','Ulises','James Joyce',24.55,7,'2023-04-22 15:10:07'),(11,'Books Mountains','Blue Stone #444 edificio perpendicular','No Puedes Lastimarme','David Goggins',28.11,14,'2023-04-22 15:25:31'),(12,'Forest and Books','Green Hell #999 the Mountains','Cita con Rama','Arthur C Clarke',29.88,12,'2023-04-22 15:25:32'),(13,'Not Home, Books coming','Street fruits and joyce #555','El Libro de Urizen','William Blake',32.22,9,'2023-04-22 15:25:32'),(14,'Venus and Pages','Gold walk #233 edificio marmol','Los Pilares de la Tierra','Ken Follet',31.5,13,'2023-04-22 15:25:33'),(15,'Space and MoonBooks','street lotto #888 house in the middle','El Orden Del Tiempo','Carlo Rovelli',19.99,14,'2023-04-22 15:28:51'),(16,'Kind Books','University Moonday #787 centerville','El Extranjero','Albert Camus',34.55,11,'2023-04-22 15:51:01'),(17,'Books In Now','Time listening Reads #232 edificio readbook','La Republica','Platon',43.22,10,'2023-04-22 15:51:01'),(18,'Library Dirty','street usa and england #111 Home Pages','La Nausea','Jean-Paul Sartre',28.33,11,'2023-04-22 15:51:01'),(19,'Books On Desert','fly street #989 house porto','El Contrato Social','Jean-Jacques Rousseau',32.1,10,'2023-04-22 15:51:01'),(20,'Simple Books','Otawa and Toronto #866 edificio happines','La Genealogía de la Moral','Friedrich Nietzsche',29.8,17,'2023-04-22 15:51:02'),(21,'Circles Books','calle estambul y mayorca #401 store unity','La Biblioteca de Babel','Jorge Luis Borges',19.8,33,'2023-04-22 16:16:50'),(22,'Reading in Circles','street light #678 edificio sky','La Tregua','Mario Benedetti',18.8,5,'2023-04-22 16:16:50'),(23,'Quiet Books','yellow street #212 park library summer','La Noche Boca Arriba','Julio Cortazar',18.8,12,'2023-04-22 16:16:50'),(24,'Ateneo Books','Free street #1090 Metropolis house','Sonetos Del Amor Oscuro','Federico Garcia Lorca',17.9,9,'2023-04-22 16:16:50'),(25,'Simple Minds','Aveneu Display #5423 home moon','Don Quijote de la Mancha','Miguel de Cervantes',35.5,18,'2023-04-22 16:16:51'),(26,'Library Books Zero','calle first and second life #4544','Oliver Twist','Charles Dickens',24.5,12,'2023-04-22 17:18:45'),(27,'Gold books','Av Prometeo #9011 edificio dark','Crimen y Castigo','Fiódor Dostoyevski',25.3,8,'2023-04-22 17:18:45'),(28,'Diamons Books on Table','street Victory #8123 home el dragon','El Cuervo','Edgar Allan Poe',31.22,5,'2023-04-22 17:18:45'),(29,'Passenger and Books','Aveneu Monaco and Paris #5412 office drake','La Vuelta al Mundo en Ochenta Dias','Julio Verne',29.9,14,'2023-04-22 17:18:45'),(30,'Grand Splendid Books','calle Conquer and glory #4599 edificio Prestige','El Resplandor','Stephen King',28.77,10,'2023-04-22 17:18:45'),(31,'Monarquia First Books','avenida las americas #6677 house of reads','Rebelión en la Granja','George Orwell',19.9,11,'2023-04-22 17:48:49'),(32,'Academy books','KingLander #4588 edificio Ascendencia','EL Ruido y la Furia','William Faulkner',22.44,12,'2023-04-22 17:48:49'),(33,'Flags Read and Pages','calle Atenas del griego #2199 casa Europa','El Conde de Montecristo','Alexandre Dumas',23.55,7,'2023-04-22 17:48:49'),(34,'Peace Books and Tea','street fly on side sea #3190','Guerra y Paz','León Tolstói',17.77,6,'2023-04-22 17:48:49'),(35,'Divide Books on Papers','Calle Oceano pixelado #8911 store London','Prometeo','Johann Wolfgang von Goethe',26.4,11,'2023-04-22 17:48:49'),(36,'Sun on MoonBook','Calle Alpha #8122 edificio Montalban','El Cuento de la Criada','Margaret Atwood',19.9,3,'2023-04-22 17:48:49'),(37,'Castillo de Libros','street Souls Free #5699 home RiverGold','Poesia Reunida','William Butler',18.8,7,'2023-04-22 17:48:49'),(38,'Times Reads','avenida bridge plate #6199 office glory','Un Mundo Feliz','Aldous Huxley',22.1,8,'2023-04-22 17:48:49'),(39,'Conquer and Books','street marfil #7122 edificio crystal off','La Senda del Perdedor','Charles Bukowski',23.5,6,'2023-04-22 17:48:49'),(40,'District Reads','calle dinamarca #5001 office gribaltar','La Llamada de Cthulhu','Howard Phillips Lovecraft',24.66,8,'2023-04-22 17:48:49'),(41,'Camera Coffe and Books','Av gravity delta #6911 house Rock','El Señor de los Anillos','J.R.R. Tolkien',27.9,4,'2023-04-22 18:55:43'),(42,'Silence in the Bookffice','street bpm # 4211 house the booking books','A Sangre Fria','Truman Capote',21.9,8,'2023-04-22 18:55:43'),(43,'Gravity Books','avenida water wild #8811','Divina Comedia','Dante Alighieri',29.88,3,'2023-04-22 18:55:43'),(44,'Into the Book','Street BelialDamage #6160','Orgullo y Prejuicio','Jane Austen',17.77,9,'2023-04-22 18:55:43'),(45,'El Teatro del Libro','av Astronomy falls #4588','Tokio Blues','Haruki Murakami',22.88,3,'2023-04-22 18:55:43'),(46,'Look the Books','calle esmeralda #4599 edificio first diamond','Las Aventuras De Sherlock Holmes','Arthur Conan Doyle',23.5,3,'2023-04-22 18:55:43'),(47,'Library Coffe and Books On Tables','street toursWorlds #6911','El Origen de las Especies','Charles Darwin',24.5,5,'2023-04-22 18:55:43'),(48,'Books and Essences Read','avenida aristocracia #8911 house red point','Vindicación de los derechos de la mujer','Mary Wollstonecraft',18.9,2,'2023-04-22 18:55:43'),(49,'Biblioteca la Ciencia de leer','calle america #8112 office second change','La Teoría del Todo:Origen y Destino','Stephen Hawking',33.44,5,'2023-04-22 18:55:43'),(50,'Delta Books','street Origin #0541 store campus space','Teoria de la Relativida','Albert Einstein',28.4,5,'2023-04-22 18:55:43');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sgzdServer`@`%`*/ /*!50003 TRIGGER `update_editorial_bu` BEFORE UPDATE ON `editorial` FOR EACH ROW BEGIN

INSERT INTO update_editorial
(id_edit_u, name_editorial_u, addres_u, tittle_book_u, author_book_u, price_book_u, stock_book_u,in_book_u,
n_id_edit_u, n_name_editorial_u, n_addres_u, n_tittle_book_u, n_author_book_u, n_price_book_u, n_stock_book_u, n_in_book_u)

VALUES
(OLD.id_edit, OLD.name_editorial, OLD.addres, OLD.tittle_book, OLD.author_book, OLD.price_book, OLD.stock_book, OLD.in_book,
NEW.id_edit, NEW.name_editorial, NEW.addres, NEW.tittle_book, NEW.author_book, NEW.price_book, NEW.stock_book, NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sgzdServer`@`%`*/ /*!50003 TRIGGER `update_price_editorial_bu` BEFORE UPDATE ON `editorial` FOR EACH ROW BEGIN

  IF(NEW.price_book <= 0) THEN
    SET NEW.price_book=OLD.price_book;

  ELSEIF(NEW.price_book >25.50) THEN
    SET NEW.price_book=NEW.price_book;
  END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `in_editorial`
--

DROP TABLE IF EXISTS `in_editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `in_editorial` (
  `id_edit` int unsigned NOT NULL,
  `name_editorial` varchar(100) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `tittle_book` varchar(100) NOT NULL,
  `author_book` varchar(100) NOT NULL,
  `price_book` float NOT NULL,
  `stock_book` int unsigned NOT NULL DEFAULT '10',
  `in_book` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_editorial`
--

LOCK TABLES `in_editorial` WRITE;
/*!40000 ALTER TABLE `in_editorial` DISABLE KEYS */;
INSERT INTO `in_editorial` VALUES (1,'linea filologica','calle efimera #616 edificio libertad','El Mundo Como Voluntad y Representacion','Arthur Schopenhauer',9.99,11,'2023-04-21 17:39:03'),(2,'Eclipse Lector','street luciernaga oscura #454 casa distante','El Viejo y el Mar','Ernest Miller Hemingway',12.5,19,'2023-04-21 18:24:49'),(3,'book Magic','Av paginas entre lineas #888 edificio offline','Hamlet','William Shakespeare',18.8,9,'2023-04-22 14:46:07'),(4,'Listen Books','street sky on fire #222 store fly','El Retrato de Dorian Gray','Oscar Wilde',23.33,13,'2023-04-22 14:56:03'),(5,'Moon Dark Book','Space in the morning #454 edificio no way','Orlando','Virginia Woolf',29.11,11,'2023-04-22 15:01:05'),(6,'House Books','Street Fly in the winter #655 house blue','En Busca Del Tiempo Perdido','Marcel Proust',32.22,12,'2023-04-22 15:01:06'),(7,'Kings Books','Avenida Filantropia #222 casa los mares','Moby Dick','Herman Melville',27.66,15,'2023-04-22 15:10:06'),(8,'Coffe Break','Calle de la intriga #000 edificio Free','La Dorotea','Felix Lope de Vega Carpio',28.99,5,'2023-04-22 15:10:06'),(9,'Morning and Lesson','Av the liberty #111 casa black point','La Metamorfosis','Franz Kafka',37.44,17,'2023-04-22 15:10:06'),(10,'Club House Books','Pasaje y cruce del centro of city #2333','Ulises','James Joyce',24.55,7,'2023-04-22 15:10:07'),(11,'Books Mountains','Blue Stone #444 edificio perpendicular','No Puedes Lastimarme','David Goggins',28.11,14,'2023-04-22 15:25:31'),(12,'Forest and Books','Green Hell #999 the Mountains','Cita con Rama','Arthur C Clarke',29.88,12,'2023-04-22 15:25:32'),(13,'Not Home, Books coming','Street fruits and joyce #555','El Libro de Urizen','William Blake',32.22,9,'2023-04-22 15:25:32'),(14,'Venus and Pages','Gold walk #233 edificio marmol','Los Pilares de la Tierra','Ken Follet',31.5,13,'2023-04-22 15:25:33'),(15,'Space and MoonBooks','street lotto #888 house in the middle','El Orden Del Tiempo','Carlo Rovelli',19.99,14,'2023-04-22 15:28:51'),(16,'Kind Books','University Moonday #787 centerville','El Extranjero','Albert Camus',34.55,11,'2023-04-22 15:51:01'),(17,'Books In Now','Time listening Reads #232 edificio readbook','La Republica','Platon',43.22,10,'2023-04-22 15:51:01'),(18,'Library Dirty','street usa and england #111 Home Pages','La Nausea','Jean-Paul Sartre',28.33,11,'2023-04-22 15:51:01'),(19,'Books On Desert','fly street #989 house porto','El Contrato Social','Jean-Jacques Rousseau',32.1,10,'2023-04-22 15:51:01'),(20,'Simple Books','Otawa and Toronto #866 edificio happines','La Genealogía de la Moral','Friedrich Nietzsche',29.8,17,'2023-04-22 15:51:02'),(21,'Circles Books','calle estambul y mayorca #401 store unity','La Biblioteca de Babel','Jorge Luis Borges',19.8,33,'2023-04-22 16:16:50'),(22,'Reading in Circles','street light #678 edificio sky','La Tregua','Mario Benedetti',18.8,5,'2023-04-22 16:16:50'),(23,'Quiet Books','yellow street #212 park library summer','La Noche Boca Arriba','Julio Cortazar',18.8,12,'2023-04-22 16:16:50'),(24,'Ateneo Books','Free street #1090 Metropolis house','Sonetos Del Amor Oscuro','Federico Garcia Lorca',17.9,9,'2023-04-22 16:16:50'),(25,'Simple Minds','Aveneu Display #5423 home moon','Don Quijote de la Mancha','Miguel de Cervantes',35.5,18,'2023-04-22 16:16:51'),(26,'Library Books Zero','calle first and second life #4544','Oliver Twist','Charles Dickens',24.5,12,'2023-04-22 17:18:45'),(27,'Gold books','Av Prometeo #9011 edificio dark','Crimen y Castigo','Fiódor Dostoyevski',25.3,8,'2023-04-22 17:18:45'),(28,'Diamons Books on Table','street Victory #8123 home el dragon','El Cuervo','Edgar Allan Poe',31.22,5,'2023-04-22 17:18:45'),(29,'Passenger and Books','Aveneu Monaco and Paris #5412 office drake','La Vuelta al Mundo en Ochenta Dias','Julio Verne',29.9,14,'2023-04-22 17:18:45'),(30,'Grand Splendid Books','calle Conquer and glory #4599 edificio Prestige','El Resplandor','Stephen King',28.77,10,'2023-04-22 17:18:45'),(31,'Monarquia First Books','avenida las americas #6677 house of reads','Rebelión en la Granja','George Orwell',19.9,11,'2023-04-22 17:48:49'),(32,'Academy books','KingLander #4588 edificio Ascendencia','EL Ruido y la Furia','William Faulkner',22.44,12,'2023-04-22 17:48:49'),(33,'Flags Read and Pages','calle Atenas del griego #2199 casa Europa','El Conde de Montecristo','Alexandre Dumas',23.55,7,'2023-04-22 17:48:49'),(34,'Peace Books and Tea','street fly on side sea #3190','Guerra y Paz','León Tolstói',17.77,6,'2023-04-22 17:48:49'),(35,'Divide Books on Papers','Calle Oceano pixelado #8911 store London','Prometeo','Johann Wolfgang von Goethe',26.4,11,'2023-04-22 17:48:49'),(36,'Sun on MoonBook','Calle Alpha #8122 edificio Montalban','El Cuento de la Criada','Margaret Atwood',19.9,3,'2023-04-22 17:48:49'),(37,'Castillo de Libros','street Souls Free #5699 home RiverGold','Poesia Reunida','William Butler',18.8,7,'2023-04-22 17:48:49'),(38,'Times Reads','avenida bridge plate #6199 office glory','Un Mundo Feliz','Aldous Huxley',22.1,8,'2023-04-22 17:48:49'),(39,'Conquer and Books','street marfil #7122 edificio crystal off','La Senda del Perdedor','Charles Bukowski',23.5,6,'2023-04-22 17:48:49'),(40,'District Reads','calle dinamarca #5001 office gribaltar','La Llamada de Cthulhu','Howard Phillips Lovecraft',24.66,8,'2023-04-22 17:48:49'),(41,'Camera Coffe and Books','Av gravity delta #6911 house Rock','El Señor de los Anillos','J.R.R. Tolkien',27.9,4,'2023-04-22 18:55:43'),(42,'Silence in the Bookffice','street bpm # 4211 house the booking books','A Sangre Fria','Truman Capote',21.9,8,'2023-04-22 18:55:43'),(43,'Gravity Books','avenida water wild #8811','Divina Comedia','Dante Alighieri',29.88,3,'2023-04-22 18:55:43'),(44,'Into the Book','Street BelialDamage #6160','Orgullo y Prejuicio','Jane Austen',17.77,9,'2023-04-22 18:55:43'),(45,'El Teatro del Libro','av Astronomy falls #4588','Tokio Blues','Haruki Murakami',22.88,3,'2023-04-22 18:55:43'),(46,'Look the Books','calle esmeralda #4599 edificio first diamond','Las aventuras de Sherlock Holmes','Arthur Conan Doyle',23.5,3,'2023-04-22 18:55:43'),(47,'Library Coffe and Books On Tables','street toursWorlds #6911','El Origen de las Especies','Charles Darwin',24.5,5,'2023-04-22 18:55:43'),(48,'Books and Essences Read','avenida aristocracia #8911 house red point','Vindicación de los derechos de la mujer','Mary Wollstonecraft',18.9,2,'2023-04-22 18:55:43'),(49,'Biblioteca la Ciencia de leer','calle america #8112 office second change','La Teoría del Todo:Origen y Destino','Stephen Hawking',33.44,5,'2023-04-22 18:55:43'),(50,'Delta Books','street Origin #0541 store campus space','Teoria de la Relativida','Albert Einstein',28.4,5,'2023-04-22 18:55:43');
/*!40000 ALTER TABLE `in_editorial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sgzdServer`@`%`*/ /*!50003 TRIGGER `insert_in_editorial_bi` BEFORE INSERT ON `in_editorial` FOR EACH ROW BEGIN 
INSERT INTO editorial(id_edit, name_editorial, addres, tittle_book, author_book, price_book, stock_book, in_book)
VALUES (NEW.id_edit, NEW.name_editorial, NEW.addres, NEW.tittle_book, NEW.author_book, NEW.price_book, NEW.stock_book, NEW.in_book); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `update_editorial`
--

DROP TABLE IF EXISTS `update_editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `update_editorial` (
  `id_edit_u` int unsigned NOT NULL,
  `name_editorial_u` varchar(100) NOT NULL,
  `addres_u` varchar(100) NOT NULL,
  `tittle_book_u` varchar(100) NOT NULL,
  `author_book_u` varchar(100) NOT NULL,
  `price_book_u` float NOT NULL,
  `stock_book_u` int unsigned NOT NULL DEFAULT '10',
  `in_book_u` datetime DEFAULT CURRENT_TIMESTAMP,
  `n_id_edit_u` int unsigned DEFAULT NULL,
  `n_name_editorial_u` varchar(100) NOT NULL,
  `n_addres_u` varchar(100) NOT NULL,
  `n_tittle_book_u` varchar(100) NOT NULL,
  `n_author_book_u` varchar(100) NOT NULL,
  `n_price_book_u` float NOT NULL,
  `n_stock_book_u` int unsigned NOT NULL DEFAULT '10',
  `n_in_book_u` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_edit_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_editorial`
--

LOCK TABLES `update_editorial` WRITE;
/*!40000 ALTER TABLE `update_editorial` DISABLE KEYS */;
INSERT INTO `update_editorial` VALUES (1,'linea filologica','calle efimera #616 edificio libertad','El Mundo Como Voluntad y Representacion','Arthur Schopenhauer',9.99,11,'2023-04-21 18:25:41',1,'Linea Filologica','calle efimera #616 edificio libertad','El Mundo Como Voluntad y Representacion','Arthur Schopenhauer',9.99,11,'2023-04-21 20:29:12'),(2,'Eclipse Lector','street luciernaga oscura #454 casa distante','El Viejo y el Mar','Ernest Miller Hemingway',12.5,19,'2023-04-21 18:24:49',2,'Eclipse Del Lector','street luciernaga oscura #454 casa distante','El Viejo y el Mar','Ernest Miller Hemingway',12.5,19,'2023-04-21 20:31:16'),(3,'book Magic','Av paginas entre lineas #888 edificio offline','Hamlet','William Shakespeare',18.8,9,'2023-04-22 14:46:07',3,'book Magic','Av paginas entre lineas #888 edificio offline','Hamlet','William Shakespeare',-11.11,9,'2023-04-23 12:55:09'),(4,'Listen Books','street sky on fire #222 store fly','El Retrato de Dorian Gray','Oscar Wilde',23.33,13,'2023-04-22 14:56:03',4,'Listen Books','street sky on fire #222 store fly','El Retrato de Dorian Gray','Oscar Wilde',-11.11,13,'2023-04-23 12:55:33'),(22,'Reading in Circles','street light #678 edificio sky','La Tregua','Mario Benedetti',18.8,5,'2023-04-22 16:16:50',22,'Reading in Circles','street light #678 edificio sky','La Tregua','Mario Benedetti',-11.11,5,'2023-04-23 12:54:24'),(46,'Look the Books','calle esmeralda #4599 edificio first diamond','Las aventuras de Sherlock Holmes','Arthur Conan Doyle',23.5,3,'2023-04-22 18:55:43',46,'Look the Books','calle esmeralda #4599 edificio first diamond','Las Aventuras De Sherlock Holmes','Arthur Conan Doyle',23.5,3,'2023-04-22 20:37:16');
/*!40000 ALTER TABLE `update_editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_books_author`
--

DROP TABLE IF EXISTS `view_books_author`;
/*!50001 DROP VIEW IF EXISTS `view_books_author`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8 */;
/*!50001 CREATE VIEW `view_books_author` AS SELECT 
 1 AS `Identificador del Libro`,
 1 AS `Identificador del Autor`,
 1 AS `Nombre del Escritor`,
 1 AS `Titulo del Libro`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_books_author`
--

/*!50001 DROP VIEW IF EXISTS `view_books_author`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Danny_db_test_run`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_books_author` AS select ltrim(rtrim(`B`.`id_book`)) AS `Identificador del Libro`,ltrim(rtrim(`B`.`id_author`)) AS `Identificador del Autor`,ltrim(rtrim(`B`.`author`)) AS `Nombre del Escritor`,ltrim(rtrim(`B`.`tittle_book`)) AS `Titulo del Libro` from (`books` `B` join `author` `A` on((`B`.`id_author` = `A`.`id_author`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 16:48:43
