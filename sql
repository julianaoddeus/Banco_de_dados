CREATE DATABASE sistema_ensino;
CREATE TABLE escola(
    cnpj        VARCHAR(21)     PRIMARY KEY,
    nome        VARCHAR(100)    NOT NULL,
    logradouro  VARCHAR(150)   NOT NULL,
    bairro      VARCHAR(50)     NOT NULL,
    cidade      VARCHAR(100)    NOT NULL,
    estado      VARCHAR(2)      NOT NULL,
    cep         VARCHAR(15)     NOT NULL,
    complemento VARCHAR(50)     NOT NULL
);

CREATE TABLE disciplina(
    codigo          SERIAL          PRIMARY KEY,
    ementa          TEXT            NOT NULL,
    nome            VARCHAR(100)    NOT NULL,
    carga_horaria   INT             NOT NULL
);

CREATE TABLE telefone_escola(
    codigo          SERIAL          PRIMARY KEY,
    ddi             VARCHAR(2)      NOT NULL,
    ddd             VARCHAR(2)      NOT NULL,
    numero          VARCHAR(20)     NOT NULL,   
   cnpj_escola      VARCHAR(21)     NOT NULL,

   CONSTRAINT fk_telefone_escola FOREIGN KEY (cnpj_escola) REFERENCES escola(cnpj)
);

CREATE TABLE turma(
    codigo      SERIAL          PRIMARY KEY,
    sala        VARCHAR(50)     NOT NULL,
    turno       VARCHAR(20)    NOT NULL,
    cnpj_escola VARCHAR(21)     NOT NULL,   
    
    CONSTRAINT fk_turma_escola FOREIGN KEY (cnpj_escola) REFERENCES escola(cnpj)
);

CREATE TABLE turma_disciplina(
    codigo              SERIAL   PRIMARY KEY,
    codigo_turma        INT      NOT NULL,
    codigo_disciplina   INT      NOT NULL,
    data_inicio         DATE     NOT NULL,
    data_termino        DATE     NOT NULL,

    CONSTRAINT fk_turma_disciplina_turma FOREIGN KEY (codigo_turma) REFERENCES turma(codigo),
    CONSTRAINT fk_turma_disciplina_disciplina FOREIGN KEY (codigo_disciplina) REFERENCES disciplina(codigo)
);

CREATE TABLE professor(
    cpf                 VARCHAR(21)     PRIMARY KEY,
    nome                VARCHAR(100)    NOT NULL,  
    cnpj_escola         VARCHAR(21)     NOT NULL,
    codigo_disciplina   INT             NOT NULL,

    CONSTRAINT fk_professor_escola FOREIGN KEY (cnpj_escola) REFERENCES escola(cnpj) ,
    CONSTRAINT fk_professor_disciplina FOREIGN KEY (codigo_disciplina) REFERENCES disciplina(codigo)   
);

CREATE TABLE aluno(
    matricula       SERIAL          PRIMARY KEY,
    nome            VARCHAR(100)    NOT NULL,
    cpf             VARCHAR(21)     NOT NULL,
    cnpj_escola     VARCHAR(21)     NOT NULL,
    codigo_turma    INT             NOT NULL,

    CONSTRAINT fk_aluno_escola FOREIGN KEY (cnpj_escola) REFERENCES escola(cnpj),    
    CONSTRAINT fk_aluno_turma FOREIGN KEY (codigo_turma) REFERENCES turma(codigo) 
);

CREATE TABLE endereco(
    codigo          SERIAL          PRIMARY KEY,   
    logradouro      VARCHAR(150)    NOT NULL,
    bairro          VARCHAR(50)     NOT NULL,
    cidade          VARCHAR(100)    NOT NULL,
    estado          VARCHAR(2)      NOT NULL,
    cep             VARCHAR(15)     NOT NULL,
    complemento     VARCHAR(50)     NOT NULL,
    matricula       INT             NOT NULL,
    cpf_professor   VARCHAR(21)     NOT NULL,

    CONSTRAINT fk_endereco_professor FOREIGN KEY (cpf_professor) REFERENCES professor(cpf),
    CONSTRAINT fk_endereco_aluno FOREIGN KEY (matricula) REFERENCES aluno(matricula)    
);

CREATE TABLE telefone(
    codigo          SERIAL          PRIMARY KEY,
    ddi             VARCHAR(2)      NOT NULL,
    ddd             VARCHAR(2)      NOT NULL,
    numero          VARCHAR(20)     NOT NULL,
    matricula       INT             NOT NULL,
    cpf_professor   VARCHAR(21)     NOT NULL,

    CONSTRAINT fk_telefone_professor FOREIGN KEY (cpf_professor) REFERENCES professor(cpf),
    CONSTRAINT fk_telefone_aluno FOREIGN KEY (matricula) REFERENCES aluno(matricula)      
);
