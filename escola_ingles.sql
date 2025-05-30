create database escola_inglês;
use escola_inglês;

create table aluno (
id bigint auto_increment primary key,
nome varchar(100),
email varchar(50) unique,
data_nascimento date
);

create table curso (
id bigint auto_increment primary key,
nome varchar(100),
descricao text,
carga_horaria int
);

create table professor (
id bigint auto_increment primary key,
nome varchar(100),
email varchar(50) unique,
especialidade varchar(100)
);

insert into aluno (nome, email, data_nascimento)
values ('Sabrina Caldas', 'sabrinacaldas@caldas.com', '1995-09-13'),
('Kamila Caldas', 'kamilac@kamila.com', '1994-08-25'),
('João Victor', 'Joaocaldas@joao.com', '2002-05-20');

insert into curso (nome, descricao, carga_horaria)
values ('inglês básico', 'curso para iniciantes', '40'),
('inglês avançado', ' curso para alunos avançados', '60'),
('inglês intermediario', 'curso para alunos', '50');

insert into professor (nome, email, especialidade)
values ('Maria Oliveira', 'maria@maria.com', 'Gramática'),
('Rogeria Lima', 'rogeria@rogeria.com', 'Conversação'),
('Thaline Moreira', 'thaline@thaline.com', 'gramática');

select *from aluno;
select *from curso;
select *from professor;

alter table curso add column professor_id bigint;
alter table curso add constraint fk_professor foreign key (professor_id)
references professor_id; 

insert into professor (nome, email, especialidade)
values ('Keith Praia', 'keith@praia.com', 'Grámatica'),
('Josefa Caldas', 'josefa@caldas.com', 'Conversação');

insert into cursos (nome, descricao, carga_horaria, professor_id)
values ('Inglês Básico', 'Curso para iniciantes', 40, 1),
('Inglês Avançado', 'Curso para avançados', 60, 2); 

create table matricula (
id bigint auto_increment primary key,
aluno_id bigint,
curso_id bigint,
data_matricula date,
foreign key (aluno_id) references aluno(id),
foreign key (curso_id) references curso(id)
);

insert into matricula(aluno_id, curso_id, data_matricula)
values (1, 1, '2014-01-10'),
(2, 1, '2014-01-15'),
(3, 2, '2014-01-20'),
(1, 2, '2014-02-05'),
(2, 3, '2014-02-10'),
(3, 3, '2014-03-01');


SELECT aluno.nome, matricula.data_matricula 
FROM matricula 
JOIN aluno ON matricula.aluno_id = aluno.id
WHERE MONTH(matricula.data_matricula) = 1 AND YEAR(matricula.data_matricula) = 2014;

select curso.nome
from curso
where curso.professor_id = 2;

select *from professor;

select aluno.nome
from matricula
join aluno on matricula.aluno_id = aluno.id
where matricula.curso_id = 2;

create index idx_aluno_email on aluno(email);

create index idx_curso_nome on curso(nome);

create index idx_matricula_aluno on matricula(aluno_id);

create index idx_matricula_curso on matricula(curso_id);

alter table matricula add column statuss varchar (20) default 'ativo';

alter table aluno add column telefone varchar (20);

update aluno set telefone ='9998541244' where id = 1;

update aluno set nome ='vanessa Caldas'  where id = 1;

select * from curso;

insert into aluno (nome, email, data_nascimento)
values ('Carine Pereira', 'carine@carine.com', '1990-09-08'),
('Thaline Barros', 'thaline@thaline.com', '1995-08-25'),
('Walace Silvestre', 'walace@silvestre.com', '1988-02-05');


insert into aluno (nome, email, data_nascimento)
values ('Sabrina Caldadsdss', 'sabrindssdsacaldas@caldas.com', '1995-09-13'),
('Kamila Caldadsdss', 'kamilaasasc@kamila.com', '1994-08-25'),
('João Victorss', 'Jossaocaldas@joao.com', '2002-05-20');

select * from aluno;
update aluno set telefone ='9998541244' where id = 1;

update aluno set telefone ='699854848' where id = 2;

select * from aluno;

update matricula set status = 'Concluído' where aluno_id = 2 and curso_id = 1;

select * from curso;

update curso set professor_id = 1 where id = 1;

update curso set professor_id = 2 where id = 3;

update curso set professor_id = 3 where id = 2;

select * from curso;

alter table matricula add column valor_pago decimal (10,2);

select * from aluno;

update matricula set valor_pago =500.61 where aluno_id = 1;
update matricula set valor_pago =700.61 where aluno_id = 2;
update matricula set valor_pago =700.00 where aluno_id = 3;
update matricula set valor_pago =600.61 where aluno_id = 4;
update matricula set valor_pago =500.00 where aluno_id = 5;
update matricula set valor_pago =400.61 where aluno_id = 6;
update matricula set valor_pago =300.61 where aluno_id = 7;
update matricula set valor_pago =200.61 where aluno_id = 8;
update matricula set valor_pago =100.61 where aluno_id = 9;

select * from matricula;

SELECT SUM(valor_pago) AS total_recebido FROM matricula;

SELECT AVG(valor_pago) AS media_valor_pago FROM matricula;

SELECT data_matricula, SUM(valor_pago) AS total_recebido 
FROM matricula 
GROUP BY data_matricula 
ORDER BY data_matricula;

select nome 
from aluno 
where id in (select distinct aluno_id from matricula);

