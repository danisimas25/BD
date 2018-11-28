create database `sistema`;
drop table contatos;
use `sistema`;
create table Contatos (
id bigint not null auto_increment, 
nome varchar(200) not null, 
email varchar(200) not null, 
endereco varchar (500) not null,
dataNascimento date not null,
primary key (id)
);