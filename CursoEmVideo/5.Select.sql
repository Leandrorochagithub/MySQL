use registration;
select * from people;
select * from course;

/* 
-select * : Seleciona tudo
-order by nome : ordenar a seleção pelo nome escolhido
-describe ou desc : desc course; descreve a tabela
-desc ou asc: ordena do maior para o menor ou do menor para o maior (order by asc ou desc
-
*/

select c_name, c_year from course order by c_year, c_name;
select * from course where c_year != 2014 and workload = 40 order by c_year, c_name;
select c_name, c_year from course where c_year between 2014 and 2016 order by c_year desc, c_name;
select c_name, c_year from course where c_year in (2014, 2016) order by c_year desc, c_name;

insert into course (idcourse,c_name,c_description, workload, totalclass,c_year) values
(11,'CSS3','',50,55,2021),
(12,'Estatistica','',50,12,2022),
(13,'Administracao','',50,35,2021),
(14,'Machinelearn','',50,18,2019),
(15,'AI','',50,30,2019),
(16,'Angular','',50,20,2022);
select * from course where c_year = 2022 order by c_name asc;

select * from course where c_name='php';
select * from course where c_name like 'p%'; /*Comece com p'*/
select * from course where c_name like '%A'; /*Termine com a*/
select * from course where c_name like '%a%'; /*P em algum lugar*/
select * from course where c_name not like '%p%'; 
describe course;
insert into course value
(20,'PHP5','',40,65,'2023');

select * from course where c_name like 'PH%P';
select * from course where c_name like 'PH%P%';
/*AGREGAÇÃO*/
select distinct usernacionality from people order by UserNacionality; /*Remove repetições*/
select count(c_name)from course;
select c_name from course where workload > 40;
select count(c_name) from course where workload > 40;
select max(workload) from course;
select c_name, min(totalclass) from course where c_year = '2020';
select sum(workload) from course;
/*EXRCÍCIOS*/
/*Lista com nomes femininos*/
select UserName from people where UserGender='f';
/*Lista de todos os que nascerem entre 01/01/1997 e 31/12/1999*/
select * from people where BirthDate between '1997/01/01' and '1999/12/31';

alter table people add column Profession varchar(255);
update people set profession='Programming' where id=1;
update people set profession='Programming' where id=2;
update people set profession='Engineer' where id=3;
update people set profession='Doctor' where id=4;

/*Lista de todos que são programadores*/
Select * from people where profession='Programming';
/*Lista cm nome e nacionalidade de quem tem nome terminado em "a" e pesa menos de 55kg*/
select Username,UserNacionality from people where UserName like '%a' and UserWeigth < 55;
/*Lista de quem mora no Brasil e mede mais de 1.85*/
select UserName,UserNacionality from people where UserNacionality='Brasil' and 	UserHeigth > 1.85;
/*Médio de pesode todos cadastrados*/
Select avg(UserWeigth) from people;
/*Diferença entre o uso do DISTINCT e do GROUP BY com HAVING.*/
select distinct workload from course order by workload asc;
select workload from course group by workload;
select workload, count(*) from course group by workload;
select workload, count(*) from course group by workload having count(c_name) > 3;

select workload, count(*) from course
where c_year > 2020
group by workload
having workload > (select avg(workload) from course);

select * from course where c_year> 2020
group by workload;

select avg(workload) from course;
select workload from course where workload > 39 and c_year =2022;
/*Lista com as profissões e quantidades*/
select profession, count(*) from people group by profession;
/*Quantos nasceram após 01/01/1990*/
select userName, birthDate from people where birthDate > '1990/01/01';
/*Quantos nasceram após 01/01/1990, agrupadas dpor gênero*/
select userName, birthDate, userGender, count(*) from people where birthDate > '1990/01/01'
group by userName
having birthDate > '1990/01/01';
/*Quantas pessoas moram fora do Brasil e em quais países*/
select userName, userNacionality, count(*) from people
where not userNacionality  = 'Brasil'
group by userName;
/*Os que têm altura > 1.60 e peso > média dos pesos*/
select userName, userHeigth, userWeigth, count(*) from people
where userHeigth  > '1.60'
group by userHeigth
having userWeigth > (select avg(userWeigth) from people);