ALTER TABLE Departamento
ADD CONSTRAINT id_chefe
FOREIGN KEY (id_chefe) REFERENCES Professor(prof_id);

ALTER TABLE Professor
ADD CONSTRAINT id_dept
FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept);

ALTER TABLE Curso
ADD CONSTRAINT id_dept
FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept);

ALTER TABLE Aluno
ADD CONSTRAINT id_curso
FOREIGN KEY (id_curso) REFERENCES Curso(id_curso);

ALTER TABLE Disciplinas
ADD CONSTRAINT id_dept
FOREIGN KEY (id_dept) REFERENCES Departamento(id_dept);


ALTER TABLE Disciplinas
ADD CONSTRAINT prof_id
FOREIGN KEY (prof_id) REFERENCES Professor(prof_id);

ALTER TABLE Disciplina_ministrada
ADD CONSTRAINT prof_id
FOREIGN KEY (prof_id) REFERENCES Professor(prof_id);

ALTER TABLE Disciplina_ministrada
ADD CONSTRAINT id_disc
FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc);

ALTER TABLE Matriz
ADD CONSTRAINT id_curso
FOREIGN KEY (id_curso) REFERENCES Curso(id_curso);

ALTER TABLE Matriz
ADD CONSTRAINT id_disc
FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc);

ALTER TABLE Historico
ADD CONSTRAINT aluno_id
FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id);

ALTER TABLE Historico
ADD CONSTRAINT id_disc
FOREIGN KEY (id_disc) REFERENCES Disciplinas(id_disc);


ALTER TABLE TCC
ADD CONSTRAINT orientador_id
FOREIGN KEY (orientador_id) REFERENCES Professor(prof_id);

ALTER TABLE Grupo_TCC
ADD CONSTRAINT id_tcc
FOREIGN KEY (id_tcc) REFERENCES TCC(id_tcc);

ALTER TABLE Grupo_TCC
ADD CONSTRAINT aluno_id
FOREIGN KEY (aluno_id) REFERENCES Aluno(aluno_id);
