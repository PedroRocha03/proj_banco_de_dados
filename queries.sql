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
