-- Histórico de alunos retornando nome, aluno_id, id_disc, nome_disc, semestre, ano e nota (pelo id do aluno)
SELECT 
  A.aluno_id AS id_aluno, A.nome AS nome_aluno, 
  H.id_disc AS id_disc, D.nome_disc AS nome_disc, 
  H.semestre AS semestre, H.ano AS ano, H.nota as nota
FROM 
  Historico H
  JOIN Aluno A ON H.aluno_id = A.aluno_id
  JOIN Disciplinas D ON H.id_disc = D.id_disc
WHERE
  H.aluno_id = 'inserir id do aluno';

-- Disciplinas ministradas pelo professor de escolha (pelo id) 
SELECT
    d.id_disc AS id_disc,
    d.nome_disc AS nome_disc,
    dm.semestre,
    dm.ano
FROM
    Disciplina_ministrada dm
    JOIN Disciplinas d ON dm.id_disc = d.id_disc
WHERE
    dm.prof_id = 'insira o id do professor';

-- Professores que são chefes de um departamento e seus respectivos nomes

SELECT P.nome AS nome_professor, D.nome_dept AS nome_departamento
FROM Professor AS P
JOIN Departamento AS D ON P.id_dept = D.id_dept
WHERE P.prof_id = D.id_chefe;

-- Grupo de TCC de tais alunos e seu professor orientador

SELECT
    t.id_tcc,
    t.titulo,
    p.nome AS nome_orientador,
    a.aluno_id,
    a.nome AS nome_aluno
FROM
    TCC t
    JOIN Grupo_TCC ta ON t.id_tcc = ta.id_tcc
    JOIN Aluno a ON ta.aluno_id = a.aluno_id
    JOIN Professor p ON t.orientador_id = p.prof_id
WHERE
    t.id_tcc = 'insira o id do tcc';
