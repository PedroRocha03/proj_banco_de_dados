CREATE TABLE Departamento (
  id_dept TEXT PRIMARY KEY,
  nome_dept TEXT,
  id_chefe INT
);

CREATE TABLE Professor (
  prof_id INT PRIMARY KEY,
  nome TEXT,
  id_dept TEXT
);

CREATE TABLE Curso (
  id_curso TEXT PRIMARY KEY,
  nome_curso TEXT,
  id_dept TEXT
);

CREATE TABLE Aluno (
  aluno_id TEXT PRIMARY KEY, 
  nome TEXT,
  id_curso TEXT
);


CREATE TABLE Disciplinas (
  id_disc TEXT PRIMARY KEY,
  nome_disc TEXT,
  id_dept TEXT,
  prof_id INT
);

CREATE TABLE Disciplina_ministrada (
  prof_id INT,
  id_disc TEXT,
  semestre INT,
  ano INT
);

CREATE TABLE Matriz (
  id_curso TEXT,
  id_disc TEXT,
  semestre INT,
  ano INT
);

CREATE TABLE Historico (
  aluno_id TEXT,
  id_disc TEXT,
  semestre INT,
  ano INT,
  nota DECIMAL(4,2)
);

CREATE TABLE TCC (
  id_tcc INT PRIMARY KEY,
  orientador_id INT,
  titulo TEXT
);

CREATE TABLE Grupo_TCC (
  id_tcc INT, 
  aluno_id TEXT
);
