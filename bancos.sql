create table usuario(
	idusuario		serial			primary key,
	nome			varchar(150)	not null,
	email 			varchar(40)		not null,
	senha			varchar(20)		not null
);

Select * from usuario

ALTER TABLE usuario
alter COLUMN senha type varchar(40);