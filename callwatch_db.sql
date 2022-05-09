drop database if exists callwatch_db;
create database callwatch_db;
use callwatch_db;


drop table if exists category_user;
create table category_user(
id int primary key not null auto_increment,
nombre varchar(30)
);

insert into category_user (nombre) 
values ("Bronce"),
("Plata"),
("Oro"),
("Platino");


drop table if exists user;
create table user (
id int primary key not null auto_increment,
nombre varchar(50) not null,
usuario varchar(25) not null,
email varchar(50) not null unique,
password varchar(250) not null,
imagen text(200),
category_user_id int,
constraint FK_category_user_id foreign key (category_user_id) references category_user(id) 
);

insert into user (nombre, usuario, email, password, imagen, category_user_id)
values ("Lucas Sequeira","LuquitasHD","lucas123@gmail.com","lucasss12", null, 1),
("Gonzalo Rozas","GonzaHD","gonza123@gmail.com","gonzaaa34", null, 2),
("Braian Romero","BraianHD","braian123@gmail.com","braiannn56", null, 3),
("Valentina Espindola","ValenHD","valen123@gmail.com","valennn78", null, 4),
("Boris Gallegos","BorisHD","boris123@gmail.com","borisss910", null, 1);



drop table if exists talle;
create table talle(
id int primary key not null auto_increment,
talle tinyint not null
);

insert into talle (talle)
values (34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46);


drop table if exists category_product;
create table category_product(
id int primary key not null auto_increment,
nombre varchar(35) not null
);

insert into category_product (nombre) 
values ("Unisex"),
("Mujer"),
("Hombre"),
("Niños"),
("Smart Watch"),
("Vintage");


drop table if exists color;
create table color(
id int primary key not null auto_increment,
color varchar(20) not null
);

insert into color(color)
values ("Marrón"),
("Negro"),
("Azul"),
("Blanco"),
("Verde"),
("Rojo");


drop table if exists product;
create table product(
id int primary key not null auto_increment,
nombre varchar(100) not null,
descripcion text not null,
imagen text(200),
precio int not null,
category_product_id int,
constraint FK_category_product_id_category_product foreign key (category_product_id) references category_product(id)
);

insert into product (nombre, descripcion, imagen, precio, category_product_id)
values("Callwatch Fendi P-98", "1 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null,25730 , 1),
("Callwatch Sauza Silver", "2 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 26440,2),
("Callwatch Sprouts", "3 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 24610,  3),
("Callwatch Platinium Grape", "4 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 20550,4),
("Callwatch Kieths N-900", "5 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 19949, 5),
("Callwatch Golden-Cherry", "6 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 28650, 6),
("Callwatch Toku Katsuo", "7 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 19490, 6),
("Callwatch Peach P-200", "8 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 15950, 5),
("Callwatch Blue Brizard", "9 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 13960, 4),
("Callwatch Margarine F-670", "10 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 24690, 3),
("Callwatch Pink SmartWatch P-90", "11 Con un diseño sobrio y ultradelgado, el Master Callwatch superará sus expectativas siendo una de las mejores opciones en el mercado. Este reloj captura el ADN de la marca gracias a su forma arquitectónica de caja.  Este reloj minimalista de dos agujas se asegura con una pulsera de malla o una correa de cuero suave.", null, 15000, 2);



drop table if exists product_color;
create table product_color(
id int primary key not null auto_increment,
product_id int,
color_id int,
constraint FK_product_id_product foreign key (product_id) references product(id),
constraint FK_color_id_color foreign key (color_id) references color(id)
);

insert into product_color (product_id, color_id)
values ( 1, 1),
( 2, 2),
( 3, 3),
( 4, 4),
( 5, 5),
( 6, 6),
( 7, 1),
( 8, 2),
( 9, 3),
( 10, 4),
( 11, 5);

drop table if exists product_talle;
create table product_talle (
id int primary key not null auto_increment,
productt_id int,
talle_id int,
constraint FK_productt_id_product foreign key (productt_id) references product(id),
constraint FK_talle_id_talle foreign key (talle_id) references talle(id)
);

insert into product_talle (productt_id, talle_id)
values ( 1, 13),
( 2, 12),
( 3, 11),
( 4, 10),
( 5, 9),
( 6, 8),
( 7, 7),
( 8, 6),
( 9, 5),
( 10, 4),
( 11, 3);


/* select productt_id , nombre, descripcion, imagen, precio, category_product_id, talle_id 
from product_talle pt  
inner join talle t  on talle_id = t.id 
inner join product p on productt_id = p.id */


/* select product_id , nombre, descripcion, imagen, precio, category_product_id, color_id 
from product_color pc  
inner join color c  on color_id = c.id 
inner join product p on product_id = p.id
order by product_id */ 



