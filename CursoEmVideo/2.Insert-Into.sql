/*INSERT DATA*/
use registration;
insert into people
(UserName, BirthDate, UserGender, UserWeigth, UserHeigth, UserNacionality)
/*Ou (id, UserName, BirthDate, UserGender, UserWeigth, UserHeigth, UserNacionality);
(DEFAULT, UserName, BirthDate, UserGender, UserWeigth, UserHeigth, DEFAULT)*/
values
('Godofredo','1984-01-02','M','78.5','1.83','Brasil');
insert into people values
(default,'Maria','1999-05-30','F','50.5','1.63','Portugal'),
(default,'Carlos','1989-01-07','M','89.9','1.89',default),
(default,'Ana','1997-08-03','F','55.0','1.60','Germany');
select * from people;


