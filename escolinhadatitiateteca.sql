use escoladatitiateteca;	

CREATE TABLE professor (
idprofessor INT,
nome VARCHAR(50),
telefone VARCHAR(15),
endereco VARCHAR(50),
cpf VARCHAR(17),
rg VARCHAR(15),
matriculaprof VARCHAR(10),
PRIMARY KEY (idprofessor)
);

CREATE TABLE disciplina (
iddisc INT,
nome VARCHAR(50),
PRIMARY KEY (iddisc)
);

CREATE TABLE prof_disc (
idprofessor INT,
iddisc INT,
FOREIGN KEY (idprofessor) REFERENCES professor (idprofessor),  
FOREIGN KEY (iddisc) REFERENCES disciplina (iddisc),
PRIMARY KEY (idprofessor, iddisc)
);

CREATE TABLE sala (
idsala INT,
nome VARCHAR(50),
descricao VARCHAR(100),
PRIMARY KEY (idsala)
);

CREATE TABLE disc_sala (
iddisc INT,
idsala INT,
FOREIGN KEY (iddisc) REFERENCES disciplina (iddisc),
FOREIGN KEY (idsala) REFERENCES sala (idsala),
PRIMARY KEY (iddisc, idsala)
);

CREATE TABLE turma (
idturma INT,
nome VARCHAR(50),
PRIMARY KEY (idturma)
);

CREATE TABLE sala_turma (
idturma INT,
idsala INT,
FOREIGN KEY (idturma) REFERENCES turma (idturma),
FOREIGN KEY (idsala) REFERENCES sala (idsala),
PRIMARY KEY (idturma,idsala)
);


CREATE TABLE disc_turma(
iddisc INT,
idturma INT,
FOREIGN KEY (idturma) REFERENCES turma (idturma),
FOREIGN KEY (iddisc) REFERENCES disciplina (iddisc),
PRIMARY KEY (idturma , iddisc)
);


CREATE TABLE aluno (
idaluno INT , 
nome VARCHAR(50),
endereco VARCHAR(100) ,
matricula VARCHAR(10),
telefone VARCHAR(15), 
rg VARCHAR(17),
cpf VARCHAR(17), 
idturma INT,
FOREIGN KEY (idturma) REFERENCES turma (idturma),
PRIMARY KEY (idaluno)
);
	  
	  
CREATE TABLE avaliacao (
iddisc INT, 
idaluno INT,
nota FLOAT,
FOREIGN KEY (iddisc) REFERENCES disciplina (iddisc), 
FOREIGN KEY (idaluno) REFERENCES aluno (idaluno),
PRIMARY KEY (idaluno, iddisc)
);

ALTER TABLE aluno
ALTER COLUMN idturma INT NOT NULL; 

ALTER TABLE avaliacao
ALTER COLUMN iddisc INT NOT NULL;

ALTER TABLE avaliacao
ALTER COLUMN idaluno INT NOT NULL;

ALTER TABLE disc_turma
ALTER COLUMN idturma INT NOT NULL;

ALTER TABLE disc_turma
ALTER COLUMN iddisc INT NOT NULL;

ALTER TABLE sala_turma
ALTER COLUMN idsala INT NOT NULL;

ALTER TABLE sala_turma
ALTER COLUMN idturma INT NOT NULL;

ALTER TABLE prof_disc
ALTER COLUMN idprofessor INT NOT NULL;

ALTER TABLE prof_disc
ALTER COLUMN iddisc INT NOT NULL;

ALTER TABLE disc_sala
ALTER COLUMN iddisc INT NOT NULL;

ALTER TABLE disc_sala
ALTER COLUMN idsala INT NOT NULL;