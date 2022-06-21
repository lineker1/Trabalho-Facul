create database universade_bd;
use universade_bd;

create table ALUNO(
id integer primary key auto_increment,
nome varchar(45),
cpf varchar(14),
endereco varchar(60)
);

create table PROFESSOR(
id integer primary key auto_increment,
nome varchar(45),
cpf varchar(14),
salario float,
cargahr integer
);

create table CURSO(
id integer primary key auto_increment,
nome varchar(45)
);

create table MATRICULA(
id integer primary key auto_increment,
id_ALUNO integer,
id_CURSO integer,
foreign key (id_ALUNO) references ALUNO(id),
foreign key (id_CURSO) references CURSO(id)
);

insert into ALUNO(nome, cpf, endereco) values("João", "10.222.555.35", "Rua avenida");
insert into PROFESSOR(nome, cpf, salario, cargahr) values("Carlos", "10.333.666.85", 1000, 48);
insert into CURSO(nome) values("Análise e desenvolvimento de sistemas");
insert into ALUNO(nome, cpf, endereco) values("Marcos", "50.222.555.35", "Rua alto nivel");
insert into MATRICULA(id_ALUNO, id_CURSO) values(1,1);
insert into MATRICULA(id_ALUNO, id_CURSO) values(2,1);

select m.id as matricula, a.nome as aluno, c.nome as curso from ALUNO a
join MATRICULA m
on a.id = m.id_ALUNO
join CURSO c