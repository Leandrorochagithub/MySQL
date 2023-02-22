create database workSchedule;
use workSchedule;
create table january(
id int not null auto_increment,
dia date,
localizacao varchar(30),
empresa varchar(30),
horario time,
pagamento decimal(10,2) default 80,
va decimal(10,2),
vt decimal(10,2),
primary key (id)
) default charset utf8;
describe january;
/* INSERT */
insert into january (dia, localizacao, empresa, horario,pagamento,va,vt) values
('2023/01/07', 'Taguatinga', 'Drogafuji-10', '22:00',default, '2700','1100');
select * from january;



