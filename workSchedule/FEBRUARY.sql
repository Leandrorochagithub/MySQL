use workschedule;
create table february(
id int not null auto_increment,
dia date,
localizacao varchar(30),
empresa varchar(30),
horario time,
pagamento decimal(10,2) default 80,
va decimal(10,2),
vt decimal(10,2),
primary key(id)
);
insert into february  (dia, localizacao, empresa, horario,pagamento,va,vt) values
('2023/02/02', 'Águas Claras', 'Bio Mundo', '21:00',default, '27','11'),
('2023/02/05', 'Noroeste', 'Drogaria Basil-24', '21:00',default, '27','11');
select * from february;