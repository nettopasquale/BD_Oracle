-- Script autor-livro para a lista de revisão
-- inclusão completa  

 -- Criação das tabelas para a Lista de Revisão (lista01_lab)
 
drop table autorlivro;
drop table livro;
drop table autor;
drop table assunto;
    
create table Autor
(CodAutor 		number(5) primary key, 
 Nomeautor	 	varchar2(20),
 datanascimento date,
 CidadeNasc  	varchar2(20),
 sexo 			char(1) );
 
 create table Assunto
(CodAssunto		    number(5) primary key,
 descricao  		varchar2(40),
 descontopromocao	 char(1));

create table Livro 
(CodigoLivro 	number(5) primary key,
 Titulo			varchar2(30),
 Editora		varchar2(20),
 Cidade		    varchar2(30), 
 DataEdicao		date, 
 Versao		    number(3),
 CodAssunto		number(5),
 Preco		    number(5,2),
 DataCadastro	date,
 lancamento     	Char(1) );

create table AutorLivro
( codigoLivro  number(5) not NULL,
  codAutor 	   number(5) not NULL); 

select * from user_constraints;


-- CRIANDO FK  PARA ASSUNTO

ALTER TABLE LIVRO ADD CONSTRAINT FK_LIVRO_CODASSUNTO FOREIGN KEY (CODASSUNTO) REFERENCES ASSUNTO;

--Adicionar uma nova coluna de nome Nacionalidade na tabela Autor.  (inverti a ordem para já cadastrar a nacionalidade)

ALTER TABLE AUTOR ADD NACIONALIDADE VARCHAR2(25);

-- Incluir  dados nas tabelas
  
    INSERT INTO ASSUNTO VALUES(10,'LITERATURA','N');
    INSERT INTO ASSUNTO VALUES(20,'PROGRAMACAO','S');
    INSERT INTO Assunto VALUES(30, 'Estudos Contabilidade', 'S');
    insert into assunto values(40, 'BANCO de DADOS RELACIONAL','N');
    
    INSERT INTO AUTOR VALUES(111,'CLARISSE LISPECTOR','10/12/1920','CHECHELNYK','F','Ucraniana');
    INSERT INTO AUTOR VALUES(222,'JOEL GRUS','31/12/1970','SEATTLE','M', 'Americano');
    INSERT INTO Autor  VALUES(333, 'Marina Souza', TO_DATE('20/01/2000:16:30', 'DD/MM/YYYY:hh24:MI'),'Sorocaba', 'F', 'Brasileira');
    INSERT INTO AUTOR VALUES(444,'ELMASRI','04/02/1970','NOVA DELHI','M', 'Indiano');
    INSERT INTO AUTOR VALUES(445,'NAVATHE','15/07/1965','NOVA DELHI','M', 'Indiano');
 
    INSERT INTO LIVRO VALUES(888,'A HORA DA ESTRELA','ROCCO','RIO DE JANEIRO','04/08/1998','3',10,11.9,'21/08/2020','L');
    INSERT INTO LIVRO VALUES(999,'DATA SCIENCE DO ZERO','ALTA BOOKS','RIO DE JANEIRO','27/06/2016','1',20,43.4,'21/08/2020','L');
    INSERT INTO LIVRO VALUES(555,'A HORA DA ESTRELA','ROCCO','RIO DE JANEIRO','04/08/1998','3',10,11.9,'21/08/2020','L');
    INSERT INTO LIVRO VALUES(855,'INTRODUÇÃO A BANCO DE DADOS','MAKRON BOOK','RIO DE JANEIRO','04/09/2003','4',40,100.0,'21/08/2020','L');
    INSERT INTO Livro VALUES(777, 'Contabilidade para ADS', 'Editora OK','Sorocaba','20/01/2011', 1, 30,25.99, 
           TO_DATE('15/08/2018', 'DD/MM/YYYY'), 'N');
    INSERT INTO Livro VALUES(1010, 'Contabilidade ADS - Parte II ', 'Editora OK','Sorocaba','20/01/2011', 1, 30,25.99, 
           TO_DATE('15/08/2018', 'DD/MM/YYYY'), 'N');

    INSERT INTO AUTORLIVRO VALUES(888,111);
    INSERT INTO AUTORLIVRO VALUES(999,222);
    INSERT INTO AutorLivro VALUES(777, 333);
    INSERT INTO AutorLivro VALUES(1010, 333);
    INSERT INTO AutorLivro VALUES(855, 444);
    INSERT INTO AutorLivro VALUES(855, 445);
    
  -- CHECANDO AS INSERÇÕES        
   
select * from livro;
select * from autorlivro;
select * from autor;
select * from assunto;
