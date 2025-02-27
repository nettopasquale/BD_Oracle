create table aluno
( ra number(5) primary key,
    nomealuno varchar2(40),
    codcurso number(3));

create table curso
( codcurso number(3) primary key,
    nomecurso varchar2(30));
    

INSERT INTO aluno values (12345, 'Pasquale X', 003);
INSERT INTO aluno values (12355, 'Ribervaldo X', 002);

INSERT INTO curso values (001, 'Eletrônica');
INSERT INTO curso values (002, 'Biomédicos');
INSERT INTO curso values (003, 'ADS');


SELECT * from  user_tables;
select * from user_tab_columns;

select * from user_constraints
where table_name = 'CURSO';

select * from user_constraints
where table_name = 'ALUNO';

alter table curso modify nomecurso varchar2(30) not null;

-- Excluindo a PK para criar novamente dando nome à constraint
alter table aluno drop constraint SYS_C00190043;

-- Criando a PK nomeando a constraint

alter table aluno add constraint  PK_ALUNO_RA primary key (ra);

-- verificando

select * from user_constraints
where table_name = 'ALUNO';

-- definindo chave estrangeira
alter table aluno add constraint FK_ALUNO_CODCURSO foreign key (CODCURSO) references CURSO;

-- testando a FK
INSERT INTO aluno values (3333, 'Antonio X', 004);

-- verificando a FK

select * from user_constraints
where table_name = 'ALUNO';
