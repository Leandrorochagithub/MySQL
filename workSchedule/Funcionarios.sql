USE workschedule;
drop table funcionarios;
create table Funcionarios(
id int auto_increment not null ,
empresa varchar (255) not null,
filial int not null,
responsavel varchar(255) not null,
auxiliar varchar (255),
primary key(id)
);
describe funcionarios;
insert into funcionarios values 
(default,'Drogaria Brasil', 39, 'Lenimar',''),
(default,'Drogaria Brasil', 40, 'Jarlecis',''),
(default,'Drogaria Brasil', 18, 'Cleia','Shellen'),
(default,'Drogaria Brasil', 19, 'Karla',''),
(default,'Drogaria Brasil', 24, 'Claudio',''),
(default,'Drogaria Brasil', 35, 'Francinaldo','Beatriz'),
(default,'Drogafuji', 3, 'Celia',''),
(default,'Drogafuji', 99, 'Nathalia','Edilaine'),
(default,'Drogafuji',69,'Gisele','Maria');

select * from funcionarios where empresa = 'Drogaria Brasil';





