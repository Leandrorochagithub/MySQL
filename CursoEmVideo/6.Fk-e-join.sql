/*CHAVES ESTRANGEIRAS E JOIN*/
use registration;
select * from people;
describe people;

 alter table people add column preferred_course int;
 /*ADICIONANDO FK*/
 ALTER table people 
 add foreign key (preferred_course)
 references course(idcourse); /*De onde vem a chave*/
 
 /*ADICIONANDO UM CURSO A UMA PESSOA*/
 /*Se tentat apagar um curso que tem um relacionamento com pessoas, eu não consigo pela integridade refencial*/
 
 update people set preferred_course = '3' where id = '1';
 
 /*JOIN*/
 /*INNER*/
 select userName, preferred_course from people;
 select c_name,c_year from course;
 /*Quero unir essas informações numa só consulta*/
 
 select people.userName, course.c_name, course.c_year
 from people join course /*inner join*/
 /*Assim, retorna todas as pessoas com todos os cursos */
 on course.idcourse = people.preferred_course;
 /*o ON me retorna somente aqueles que têm um id de curso relacionado com pessoas*/
 
  select p.userName, c.c_name, c.c_year
 from people as p join course as c /*APELIDANDO PARA REDUZIR O CÓDIGO*/
 /*Assim, retorna todas as pessoas com todos os cursos cujo relacionamento existe*/
 on c.idcourse = p.preferred_course;
 /*o ON me retorna somente aqueles que têm um id de curso relacionado com pessoas*/
 /*OUTER*/
  select p.userName, c.c_name, c.c_year
 from people as p left outer join course as c /*APELIDANDO PARA REDUZIR O CÓDIGO*/
 /*Assim, retorna todas as pessoas com todos os cursos independente de relaciomento*/
 /*LEFT para ter como referência inicial a coluna da esquerda, RIGTH, a da direito*/
 on c.idcourse = p.preferred_course;
 /*o ON me retorna somente aqueles que têm um id de curso relacionado com pessoas*/
 
 /*CRIANDO TABELA EXTRA DA RELAÇÃO N:N ENTRE CURSOS E PESSOAS*/
 create table people_watch_course(
 id int auto_increment,
 data date,
 idpeople int,
 idcourse int,
 primary key (id),
 foreign key (idpeople) references people(id),
 foreign key (idcourse) references course(idcourse)
 ) default charset= utf8;
 
 insert into people_watch_course value
 (default, '2013-03-01', '1', '2');
 select * from course;
 select * from people;
 select * from people_watch_course;
 
 select * from people p join people_watch_course w 
 on p.id = w.idcourse;
 
 select p.username, w.idcourse, c.c_name from people p join people_watch_course w
 on p.id = w.idcourse
 join course c
 on c.idcourse = w.idcourse
 order by p.username; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 