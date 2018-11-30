create schema ASK;
use `ASK`;

/*drop schema `ASK`;*/

create table Departamento(
		codigo int not null primary key,
		nome varchar(50) not null,
		sigla varchar(10) not null
);   
create table Funcionario (
		matricula varchar(12) not null, 
		nome varchar(80) not null,
		senha varchar(18)  null,
        codDep int not null,
		primary key (matricula),
        foreign key (codDep) references Departamento (codigo)
);

 

create table Espaco(
    sigla varchar(10) not null primary key,
    tipo char (1)not null,
    qtdeCa int not null,
    capacidade int not null,
    descricao varchar (200) not null,
    depCod int not null, 
    foreign key (depCod) references Departamento (codigo)
);

create table Evento(
		codigo int not null auto_increment,
    	nome varchar (20) not null,
    	organizador varchar (50) not null,
    	descricao varchar (200) not null,
    	horaInicial time not null,
    	horaFinal time not null,
    	dataInicio date not null,
    	dataFim date not null, 
    	funcRegistra varchar(12) not null, 
    	primary key(codigo),
    	foreign key (funcRegistra) references Funcionario (matricula)
);        

create table EspEven(
		siglaE varchar(10) not null,
    	evenCod int not null, 
    	dataInicio date not null, 
    	dataFinal date null,
    	primary key(siglaE, evenCod, dataInicio),
    	foreign key(siglaE) references Espaco(sigla),
		foreign key(evenCod) references Evento(codigo)
);


