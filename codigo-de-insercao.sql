use escolinhadatitiateteca;

INSERT INTO professor VALUES (
0001, 'Bryan Julio Daniel Mendes', '(21)2653-6903', 'Rua Doutor Joaquim Ottoni', '321.620.107-47', '19.346.376-3', 'M02300354');

INSERT INTO disciplina VALUES (
01, 'Matematica');

INSERT INTO prof_disc VALUES (
0001 , 01);

INSERT INTO sala VALUES (
0001, 'Sala 0001', 'Laboratorio de Fisica');

INSERT INTO disc_sala VALUES (
01, 0001);

INSERT INTO turma VALUES (
1001, 'Turma 1001');

INSERT INTO sala_turma VALUES (
1001, 0001);

INSERT INTO disc_turma VALUES (
01, 1001);

INSERT INTO aluno VALUES (
000001, 'Yago Mario Thomas da Mota', 'Rua General Dionisio', 'M02300355', '(21)2927-4423', '42.778.415-3', '611.893.367-74' , 1001);

INSERT INTO avaliacao VALUES (
01 , 000001 , 8.1);
