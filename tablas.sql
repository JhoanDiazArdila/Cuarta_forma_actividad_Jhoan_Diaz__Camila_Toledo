CREATE DATABASE universidad;

USE universidad;

CREATE TABLE IF NOT EXISTS asignaturas(
id_asignatura INT AUTO_INCREMENT,
PRIMARY KEY (id_asignatura),
nombre VARCHAR(100),
UNIQUE(nombre)
);
CREATE TABLE IF NOT EXISTS estudiantes(
id_estudiante INT AUTO_INCREMENT,
PRIMARY KEY (id_estudiante),
nombre VARCHAR (100) NOT NULL,
telefono INT NOT NULL,
UNIQUE(telefono)
);
CREATE TABLE IF NOT EXISTS cursos(
id_curso INT AUTO_INCREMENT,
PRIMARY KEY (id_curso),
nombre VARCHAR (100) NOT NULL,
UNIQUE (nombre),
id_asignatura INT NOT NULL,
FOREIGN KEY(id_asignatura) REFERENCES asignaturas(id_asignatura),
fecha_inicio DATETIME NOT NULL,
fecha_fin DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS docentes(
id_docente INT AUTO_INCREMENT,
PRIMARY KEY (id_docente),
nombre VARCHAR (100) NOT NULL,
telefono INT NOT NULL,
UNIQUE (telefono)
);
CREATE TABLE IF NOT EXISTS aulas(
id_aula INT AUTO_INCREMENT,
PRIMARY KEY (id_aula),
nombre VARCHAR (100) NOT NULL,
UNIQUE (nombre)
);
CREATE TABLE IF NOT EXISTS horarios(
id_horario INT AUTO_INCREMENT,
PRIMARY KEY (id_horario),
hora_inicio DATETIME NOT NULL,
hora_fin DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS cursos_aulas(
id_curso_aula INT AUTO_INCREMENT,
PRIMARY KEY (id_curso_aula),
id_curso INT NOT NULL,
FOREIGN KEY(id_curso) REFERENCES cursos(id_curso),
id_aula INT NOT NULL,
FOREIGN KEY(id_aula) REFERENCES aulas(id_aula)
);
CREATE TABLE IF NOT EXISTS cursos_estudiantes(
id_curso_estudiante INT AUTO_INCREMENT,
PRIMARY KEY (id_curso_estudiante),
id_curso INT NOT NULL,
FOREIGN KEY(id_curso) REFERENCES cursos(id_curso),
id_estudiante INT NOT NULL,
FOREIGN KEY(id_estudiante) REFERENCES estudiantes(id_estudiante)
);
CREATE TABLE IF NOT EXISTS cursos_docentes(
id_curso_docente INT AUTO_INCREMENT,
PRIMARY KEY (id_curso_docente),
id_curso INT NOT NULL,
FOREIGN KEY(id_curso) REFERENCES cursos(id_curso),
id_docente INT NOT NULL,
FOREIGN KEY(id_docente) REFERENCES docentes(id_docente)
);
CREATE TABLE IF NOT EXISTS horarios_cursos_aulas(
id_horarios_cursos_aulas INT AUTO_INCREMENT,
PRIMARY KEY (id_horarios_cursos_aulas),
id_horario INT NOT NULL,
FOREIGN KEY(id_horario) REFERENCES horarios(id_horario),
id_curso_aula INT NOT NULL,
FOREIGN KEY(id_curso_aula) REFERENCES cursos_aulas(id_curso_aula)
);

