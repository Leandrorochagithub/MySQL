/* CREATE DATABE AND CREATE TABLE*/

create database registration
default character set utf8 /*Codificação de caractere www*/
default collate utf8_general_ci; /*COLLAGE = agrupar */

use registration;

create table people(
id int not null auto_increment, /*incrementado automaticamente*/
UserName varchar(30) not null, /* varchar usa só a memória dis caracteres utilizados*/
BirthDate date,
UserGender enum('M', 'F'), /*Especificar para só digitar M ou F*/
UserWeigth decimal (5,2), /*5 = n de casas, 2 = n após a vírgula (102,50 kg)*/
UserHeigth decimal (3,2),
UserNacionality varchar(20) default 'Brasil', /*Se não digitarem, o padrão será Brasil*/
primary key (id) /*Definindo 'id' como minha chave primária, que é única*/
) default charset utf8;
describe people;
