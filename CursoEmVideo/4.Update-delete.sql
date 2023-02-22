use registration;
select * from course;

insert into course (idcourse, c_name, c_description, workload, totalclass, c_year) values
(11, 'Yputuber','',5,2,2018);

update course set c_year = 2015 where c_name = 'Java';
update course set c_name = 'Youtuber' where c_name = 'Yputuber';
update course set c_name = 'HTML5	' where idcourse = 1;
update course set c_name = 'PHP', c_year= 2015 where idcourse = 6; /*Altera duas informações ao mesmo tempo*/
update course set c_year = 2020 where c_year= 2018; /*Muda todos os cursos qye tenha o ano de 2018*/
update course set c_year = 2020 where c_year= 2018 limit 1;/*Muda só a primeira linha que tenha ano 2018*/

delete from course where idcourse= 9;
delete from course where c_year= 2018 limit 2;

/*
TRUNCATE TABLE COURSE vai apagar todas linhas da tabela
*/

