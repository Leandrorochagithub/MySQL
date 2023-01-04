use registration;

alter table people
add column occupation varchar (10); /*foi adicionado no fim da lista ta tabela. Quero após Username*/

alter table people
drop column occupation; /* was deleted */

alter table people
add column occupation varchar (10) after username;

alter table people
add column code int first; /*Não existe BEFORE*/

alter table people
modify column occupation varchar(20);
/* Origiralmente era NULL, para alterar para NOT NULL é preciso acrescentar default '' ou remover a constraint*/
desc people; /*Abreviação de describe*/

alter table people
change occupation career varchar(20); /* Renomeiar a coluna. é preciso inserir o nome velho seguido pelo novo*/
alter table people
change career occupation varchar(20);
/*alter table people
rename to newname; Para novo nome da tabela*/

/* CREATE OTHER TABLE */

create table if not exists course( /* IF NOT EXISTS = criar só se não existir If EXISTS = Só se existir*/
c_name varchar(30) not null unique, /*unique = só único, diferente de pk*/
c_description text, /*TEXT = mais complexo que varchar, texto maior*/
workload int unsigned,
totalclass int,
c_year year default "2016"
) default charset utf8;
desc course;

alter table course
add column idcourse int first;

alter table course
add primary key (idcourse)