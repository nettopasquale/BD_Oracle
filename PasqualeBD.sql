select sysdate from dual;

// formato de data dd/mm/yyyy:hh24:mi:ss

SELECT to_char(sysdate, 'dd/mm/yyyy:hh24:mi:ss') from dual;

SELECT to_char(sysdate, 'dd:hh24:mi:ss') from dual;


//extract

select extract (year from sysdate) from dual;

// subtração de datas

select sysdate - 30 from dual; // subtração é feita em DIAS!

select add_months(sysdate, -1) from dual; // subtrai meses

select add_months(sysdate, +1) from dual;
select add_months(sysdate, +2) from dual;


// diferença entre datas
select sysdate - datanascimento from autor;

//calcular quantos dias eu já vivi
select sysdate - to_date('15-10-1992','dd/mm/yyyy') from dual;

// Calcular minha idade exata
select (sysdate - to_date('15-10-1992','dd/mm/yyyy'))/365.25 from dual;


SELECT titulo FROM livro  WHERE titulo LIKE '%BANCO de DADOS%';

SELECT titulo FROM livro  WHERE titulo = '-------- de DADOS%';

SELECT codAssunto, count(*) as quantidade from Livro
Group by codAssunto; 

Select count(codassunto) from livro; //não conta conteúdos nulos!


SELECT codAutor, count(*) as quantidade
FROM AutorLivro
GROUP BY CodAutor
HAVING COUNT(*) >=2; // filtra a contagem apenas aos valores que tiverem mais de 2

select * from livro;
select * from autor;

SELECT autor.nomeautor, codAutor, count(*) as quantidade
FROM AutorLivro INNER JOIN Autor
ON AutorLivro.codautor = autor.codautor
GROUP BY autorlivro.codautor, autor.nomeautor
HAVING COUNT(*) >=2;






