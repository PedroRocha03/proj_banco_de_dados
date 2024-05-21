CREATE TABLE Departamento (
  id_dept TEXT PRIMARY KEY,
  nome_dept TEXT,
  id_chefe INT
);

CREATE TABLE Professor (
  prof_id INT PRIMARY KEY,
  nome TEXT,
  id_dept TEXT,
  FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept)
);

ALTER TABLE Departamento
ADD CONSTRAINT id_chefe
FOREIGN KEY (id_chefe) REFERENCES Professor(prof_id);


CREATE TABLE Curso (
  id_curso TEXT PRIMARY KEY,
  nome_curso TEXT,
  id_dept TEXT,
  FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept)
);

CREATE TABLE Aluno (
  aluno_id TEXT PRIMARY KEY, 
  nome TEXT,
  id_curso TEXT,
  FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);


CREATE TABLE Disciplinas (
  id_disc TEXT PRIMARY KEY,
  nome_disc TEXT,
  id_dept TEXT,
  prof_id INT,
  FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept),
  FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);

CREATE TABLE Disciplina_ministrada (
  prof_id INT,
  id_disc TEXT,
  semestre INT,
  ano INT,
  FOREIGN KEY (prof_id) REFERENCES Professor(prof_id),
  FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc)
);

CREATE TABLE Matriz (
  id_curso TEXT,
  id_disc TEXT,
  semestre INT,
  ano INT,
  FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
  FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc)
);

CREATE TABLE Historico (
  aluno_id TEXT,
  id_disc TEXT,
  semestre INT,
  ano INT,
  nota DECIMAL(4,2),
  FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id),
  FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc)
);

CREATE TABLE TCC (
  id_tcc INT PRIMARY KEY,
  orientador_id INT,
  titulo TEXT,
  FOREIGN KEY (orientador_id) REFERENCES Professor(prof_id)
);

CREATE TABLE Grupo_TCC (
  id_tcc INT, 
  aluno_id TEXT,
  FOREIGN KEY (id_tcc) REFERENCES TCC(id_tcc),
  FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id)
);
