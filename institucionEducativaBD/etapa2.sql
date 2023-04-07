DROP DATABASE IF EXISTS BDinstitucion_educativa;
CREATE DATABASE BDinstitucion_educativa;
USE BDinstitucion_educativa;
-- tabla persona
CREATE TABLE persona (
id_persona INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_p VARCHAR(50) NOT NULL,
apellidos_p VARCHAR(50) NOT NULL,
email_p VARCHAR(100) NOT NULL,
direccion_p VARCHAR(200),
telefono_p VARCHAR(20),
sexo_p ENUM('M', 'F') NOT NULL,
ciudad_p VARCHAR(50) NOT NULL
);
-- tabla facultad
CREATE TABLE facultad (
id_facultad INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_f VARCHAR(100) NOT NULL,
id_estudiante INT UNSIGNED NOT NULL,
FOREIGN KEY (id_estudiante) REFERENCES persona(id_persona)
);
-- tabla profesor
CREATE TABLE profesor (
id_profesor INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_facultad INT UNSIGNED NOT NULL,
nombre_profesor VARCHAR(100) NOT NULL,
capacidades_c VARCHAR(200),
FOREIGN KEY (id_facultad) REFERENCES facultad(id_facultad)
);
-- tabla nivel academico
CREATE TABLE nivel_academico (
id_nivel INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_estudiante INT UNSIGNED NOT NULL,
FOREIGN KEY (id_estudiante) REFERENCES persona(id_persona)
);
-- tabla ciclo escolar
CREATE TABLE ciclo_escolar (
id_ciclo INT UNSIGNED NOT NULL PRIMARY KEY,
inicio_c DATE NOT NULL,
fin_c DATE NOT NULL
);
-- tabla materia
CREATE TABLE materia (
id_materia INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
creditos_m INT UNSIGNED NOT NULL,
ciclo VARCHAR(50) NOT NULL,
id_profesor INT UNSIGNED NOT NULL,
id_nivel INT UNSIGNED NOT NULL,
nombre_materia VARCHAR(100) NOT NULL,
FOREIGN KEY (id_profesor) REFERENCES profesor(id_profesor),
FOREIGN KEY (id_nivel) REFERENCES nivel_academico(id_nivel)
);
-- tabla estudiante_ciclo
CREATE TABLE estudiante_ciclo (
id_ciclo INT UNSIGNED NOT NULL,
id_estudiante INT UNSIGNED NOT NULL,
id_materia INT UNSIGNED NOT NULL,
PRIMARY KEY (id_ciclo, id_estudiante),
FOREIGN KEY (id_ciclo) REFERENCES ciclo_escolar(id_ciclo),
FOREIGN KEY (id_estudiante) REFERENCES persona(id_persona),
FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
);


