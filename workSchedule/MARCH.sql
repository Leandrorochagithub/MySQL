use workschedule;
select * from march;
insert into march values 
(default,'2023/03/28','Ceilândia','Drogacenter',24,'Talita','','20:00',default,default,default),
(default,'2023/03/30','JK Shopping','Drogaria Dedicar',15,'Dayana','João Lucas','22:00',default,default,default);

update march set id=11 where id =12;

select * from march order by dia asc;

delete from march  where id=18;

select * from funcionarios;
insert into funcionarios values
(default,'Drogacenter',18,'Luana','Maria'),
(default,'Drogacenter',8,'Lorraine','Matheus'),
(default,'Drogacenter',21,'Joceli','Sara'),
(default,'Drogacenter',24,'Talita',''),
(default,'Drogaria Dedicar',15,'Dayana','João Lucas');