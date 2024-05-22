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
    dm.prof_id = "insira o id do professor";

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
    t.id_tcc = "insira o id do tcc";
