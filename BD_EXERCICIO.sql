CREATE SCHEMA `bd_exercicio`;
use bd_exercicio;
 Create table `bd_exercicio`.`tb_funcionario` (
 `func_codigo` int not null primary key,
 `func_nome` varchar(60) null,
 `func_cpf` varchar(13) null,
 `forn_end` varchar (90) null,
 `forn_salario` numeric,
 `ger_depto_cod` int,
 `trab_depto_cod` int,
 `proj_cod` int 
 );
 
 create table `bd_exercicio`.`tb_departamento` (
 `depto_codigo` int not null primary key,
 `depto_nome` varchar(60) null,
 `local_cod` int);

create table `bd_exercicio`.`tb_projeto` (
`proj_codigo` int not null primary key,
`proj_numero` int,
`depto_cod` int,
`local_cod` int);

create table `bd_exercicio`.`tb_local` (
`local_codigo` int not null primary key,
`local_desc` varchar(60) null 
);

alter table `bd_exercicio`.`tb_funcionario`
add index `fk_ger_depto_cod_idx` (`ger_depto_cod` asc);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_ger_depto_cod`
foreign key (`ger_depto_cod`)
references `bd_exercicio`.`tb_departamento` (`depto_codigo`);

alter table `bd_exercicio`.`tb_funcionario`
add index `fk_trab_depto_cod_idx` (`trab_depto_cod` asc)

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_trab_depto_cod`
foreign key (`trab_depto_cod`)
references `bd_exercicio`.`tb_departamento` (`depto_codigo`);



alter table `bd_exercicio`.`tb_funcionario`
add index `fk_proj_cod_idx` (`proj_cod` asc)

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_proj_cod`
foreign key (`proj_cod`)
references `bd_exercicio`.`tb_projeto` (`proj_codigo`);



alter table `bd_exercicio`.`tb_departamento`
add index `fk_local_depto_cod_idx` (`local_cod` asc)

alter table `bd_exercicio`.`tb_departamento`
add constraint `fk_depto_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local` (`local_codigo`);




alter table `bd_exercicio`.`tb_projeto`
add index `fk_local_proj_cod_idx` (`local_cod` asc)

alter table `bd_exercicio`.`tb_projeto`
add constraint `fk_proj_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local` (`local_codigo`);



insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (1, 'Sao Paulo');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (2, 'Minas Gerais');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (3, 'Rio de Janeiro');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (4, 'Bahia');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (5, 'Rio Grande do Sul');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (6, 'Paraná');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (7, 'Ceará');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (8, 'Pernambuco');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (9, 'Santa Catarina');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (10, 'Paraíba');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (11, 'Espírito Santo');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (12, 'Acre');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (13, 'Amazonas');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (14, 'Bahia');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (15, 'Maranhão');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (16, 'Tocantins');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (17, 'Alagoas');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (18, 'Sergipe');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (19, 'Rondônia');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (20, 'Roraima');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (21, 'Piauí');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (22, 'Amapá');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (23, 'Distrito Federal');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (24, 'Goiás');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (25, 'Mato Grosso');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (26, 'Mato Grosso do Sul');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (27, 'São Paulo - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (28, 'Rio de Janeiro - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (29, 'Minas Gerais - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (30, 'Bahia - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (31, 'Santa Catarina - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (32, 'Paraná - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (33, 'Sergipe - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (34, 'Alagoas - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (35, 'Maranhão - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (36, 'Ceará - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (37, 'Pernambuco - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (38, 'Tocantins - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (39, 'Rondônia - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (40, 'Roraima - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (41, 'Amapá - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (42, 'Distrito Federal - Centro');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (43, 'Goiás - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (44, 'Mato Grosso - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (45, 'Mato Grosso do Sul - Interior');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (46, 'São Paulo - Capital');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (47, 'Rio de Janeiro - Capital');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (48, 'Minas Gerais - Capital');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (49, 'Bahia - Capital');
insert into `bd_exercicio`.`tb_local` (local_codigo, local_desc) values (50, 'Santa Catarina - Capital');

insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (1, 'TI', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (2, 'RH', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (3, 'ADM', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (4, 'Financeiro', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (5, 'Marketing', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (6, 'Vendas', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (7, 'Suporte', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (8, 'Logística', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (9, 'Pesquisa e Desenvolvimento', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (10, 'Qualidade', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (11, 'Atendimento ao Cliente', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (12, 'Desenvolvimento', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (13, 'Gestão de Projetos', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (14, 'Jurídico', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (15, 'Compliance', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (16, 'Treinamento', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (17, 'Infraestrutura', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (18, 'Serviços Gerais', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (19, 'Relações Públicas', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (20, 'E-commerce', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (21, 'Estratégia', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (22, 'Desenvolvimento de Produto', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (23, 'Dados e Análise', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (24, 'Manutenção', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (25, 'Segurança da Informação', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (26, 'Suprimentos', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (27, 'Relacionamento com Fornecedores', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (28, 'Expansão', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (29, 'Inteligência de Mercado', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (30, 'Projetos Especiais', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (31, 'Análise Financeira', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (32, 'Planejamento Estratégico', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (33, 'Eventos', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (34, 'Sustentabilidade', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (35, 'Capacitação', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (36, 'Administração de Contratos', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (37, 'Comunicação Interna', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (38, 'Desenvolvimento Organizacional', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (39, 'Gestão de Talentos', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (40, 'Pesquisa de Mercado', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (41, 'Experiência do Cliente', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (42, 'Gestão de Risco', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (43, 'Engenharia', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (44, 'Gestão de Crise', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (45, 'Desenvolvimento Sustentável', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (46, 'Atividades Culturais', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (47, 'Desempenho e Resultados', 2);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (48, 'Gestão de Fornecedores', 3);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (49, 'Inovação', 1);
insert into `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod) values (50, 'Empreendedorismo', 2);

INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero , depto_cod, local_cod) values (1,11,1,1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero , depto_cod, local_cod) values (2,22,2,2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (4, 44, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (5, 55, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (6, 66, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (7, 77, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (8, 88, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (9, 99, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (10, 100, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (11, 111, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (12, 122, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (13, 133, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (14, 144, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (15, 155, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (16, 166, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (17, 177, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (18, 188, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (19, 199, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (20, 200, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (21, 211, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (22, 222, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (23, 233, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (24, 244, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (25, 255, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (26, 266, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (27, 277, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (28, 288, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (29, 299, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (30, 300, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (31, 311, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (32, 322, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (33, 333, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (34, 344, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (35, 355, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (36, 366, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (37, 377, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (38, 388, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (39, 399, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (40, 400, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (41, 411, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (42, 422, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (43, 433, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (44, 444, 2, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (45, 455, 3, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (46, 466, 4, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (47, 477, 5, 2);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (48, 488, 6, 3);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (49, 499, 1, 1);
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod) VALUES (50, 500, 2, 2);

-- inserindo funcionario que trabalha no depto 1 w projeto 1, este funcionario nao gerencia um departamento--

INSERT INTO `bd_exercicio`.`tb_funcionario` (func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
VALUES
(1, 'Jose Silva', '12312312344', 'Endereco 1', 2000, NULL, 1, 1),
(2, 'Maria Souza', '23423423455', 'Endereco 2', 2100, NULL, 1, 1),
(3, 'Carlos Santos', '34534534566', 'Endereco 3', 2200, NULL, 1, 1),
(4, 'Fernanda Lima', '45645645677', 'Endereco 4', 2300, NULL, 1, 1),
(5, 'Joao Oliveira', '56756756788', 'Endereco 5', 2400, NULL, 1, 1),
(6, 'Camila Araujo', '67867867899', 'Endereco 6', 2500, NULL, 1, 1),
(7, 'Rafael Correia', '78978978911', 'Endereco 7', 2600, NULL, 1, 1),
(8, 'Paula Almeida', '89089089022', 'Endereco 8', 2700, NULL, 1, 1),
(9, 'Tiago Pinto', '90190190133', 'Endereco 9', 2800, NULL, 1, 1),
(10, 'Renata Costa', '01201201244', 'Endereco 10', 2900, NULL, 1, 1),
(11, 'Lucas Gomes', '12312312355', 'Endereco 11', 3000, NULL, 1, 1),
(12, 'Isabela Martins', '23423423466', 'Endereco 12', 3100, NULL, 1, 1),
(13, 'Leonardo Rocha', '34534534577', 'Endereco 13', 3200, NULL, 1, 1),
(14, 'Juliana Santos', '45645645688', 'Endereco 14', 3300, NULL, 1, 1),
(15, 'Gabriel Cardoso', '56756756799', 'Endereco 15', 3400, NULL, 1, 1),
(16, 'Bianca Ribeiro', '67867867811', 'Endereco 16', 3500, NULL, 1, 1),
(17, 'Felipe Silva', '78978978922', 'Endereco 17', 3600, NULL, 1, 1),
(18, 'Daniela Mendes', '89089089033', 'Endereco 18', 3700, NULL, 1, 1),
(19, 'Ricardo Souza', '90190190144', 'Endereco 19', 3800, NULL, 1, 1),
(20, 'Amanda Lopes', '01201201255', 'Endereco 20', 3900, NULL, 1, 1),
(21, 'Bruno Machado', '12312312366', 'Endereco 21', 4000, NULL, 1, 1),
(22, 'Larissa Dias', '23423423477', 'Endereco 22', 4100, NULL, 1, 1),
(23, 'Eduardo Teixeira', '34534534588', 'Endereco 23', 4200, NULL, 1, 1),
(24, 'Patricia Ramos', '45645645699', 'Endereco 24', 4300, NULL, 1, 1),
(25, 'Marcelo Faria', '56756756711', 'Endereco 25', 4400, NULL, 1, 1),
(26, 'Sabrina Fonseca', '67867867822', 'Endereco 26', 4500, NULL, 1, 1),
(27, 'Vinicius Nunes', '78978978933', 'Endereco 27', 4600, NULL, 1, 1),
(28, 'Mariana Carvalho', '89089089044', 'Endereco 28', 4700, NULL, 1, 1),
(29, 'Roberto Silva', '90190190155', 'Endereco 29', 4800, NULL, 1, 1),
(30, 'Julio Pereira', '01201201266', 'Endereco 30', 4900, NULL, 1, 1),
(31, 'Carla Santos', '12312312377', 'Endereco 31', 5000, NULL, 1, 1),
(32, 'Antonio Barros', '23423423488', 'Endereco 32', 5100, NULL, 1, 1),
(33, 'Vitor Alves', '34534534599', 'Endereco 33', 5200, NULL, 1, 1),
(34, 'Cristina Dias', '45645645611', 'Endereco 34', 5300, NULL, 1, 1),
(35, 'Pedro Silva', '56756756722', 'Endereco 35', 5400, NULL, 1, 1),
(36, 'Michele Pires', '67867867833', 'Endereco 36', 5500, NULL, 1, 1),
(37, 'Caio Campos', '78978978944', 'Endereco 37', 5600, NULL, 1, 1),
(38, 'Aline Castro', '89089089055', 'Endereco 38', 5700, NULL, 1, 1),
(39, 'Otavio Santana', '90190190166', 'Endereco 39', 5800, NULL, 1, 1),
(40, 'Monica Rezende', '01201201277', 'Endereco 40', 5900, NULL, 1, 1),
(41, 'Renato Braga', '12312312388', 'Endereco 41', 6000, NULL, 1, 1),
(42, 'Nathalia Vieira', '23423423499', 'Endereco 42', 6100, NULL, 1, 1),
(43, 'Anderson Costa', '34534534511', 'Endereco 43', 6200, NULL, 1, 1),
(44, 'Flavia Rocha', '45645645622', 'Endereco 44', 6300, NULL, 1, 1),
(45, 'Alex Ribeiro', '56756756733', 'Endereco 45', 6400, NULL, 1, 1),
(46, 'Elaine Borges', '67867867844', 'Endereco 46', 6500, NULL, 1, 1),
(47, 'Rodrigo Mendes', '78978978955', 'Endereco 47', 6600, NULL, 1, 1),
(48, 'Luciana Duarte', '89089089066', 'Endereco 48', 6700, NULL, 1, 1),
(49, 'Thiago Ferreira', '90190190177', 'Endereco 49', 6800, NULL, 1, 1),
(50, 'Sonia Silva', '01201201288', 'Endereco 50', 6900, NULL, 1, 1);


-- inserindo funcionario que trabalha e gerencia o departamento 2 , e trabalha tambem no projeto 2--

INSERT INTO `bd_exercicio`.`tb_funcionario` (func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
VALUES
(51, 'Ana Silva', '12345678944', 'Endereco 1', 3000, 2, 2, 2),
(52, 'Luis Santos', '23456789155', 'Endereco 2', 3100, 2, 2, 2),
(53, 'Rita Pereira', '34567891266', 'Endereco 3', 3200, 2, 2, 2),
(54, 'Marcos Alves', '45678912377', 'Endereco 4', 3300, 2, 2, 2),
(55, 'Sara Costa', '56789123488', 'Endereco 5', 3400, 2, 2, 2),
(56, 'Mario Souza', '67891234599', 'Endereco 6', 3500, 2, 2, 2),
(57, 'Andre Silva', '78912345611', 'Endereco 7', 3600, 2, 2, 2),
(58, 'Vera Santos', '89012346722', 'Endereco 8', 3700, 2, 2, 2),
(59, 'Adriana Souza', '90123457833', 'Endereco 9', 3800, 2, 2, 2),
(60, 'Joana Rocha', '01234568944', 'Endereco 10', 3900, 2, 2, 2),
(61, 'Henrique Lima', '12345679955', 'Endereco 11', 4000, 2, 2, 2),
(62, 'Claudia Mendes', '23456781066', 'Endereco 12', 4100, 2, 2, 2),
(63, 'Paulo Barreto', '34567892177', 'Endereco 13', 4200, 2, 2, 2),
(64, 'Fabiana Torres', '45678903288', 'Endereco 14', 4300, 2, 2, 2),
(65, 'Gustavo Pinto', '56789124399', 'Endereco 15', 4400, 2, 2, 2),
(66, 'Helena Nunes', '67891235411', 'Endereco 16', 4500, 2, 2, 2),
(67, 'Felipe Moreira', '78912346522', 'Endereco 17', 4600, 2, 2, 2),
(68, 'Cecilia Antunes', '89012347633', 'Endereco 18', 4700, 2, 2, 2),
(69, 'Rodrigo Martins', '90123458744', 'Endereco 19', 4800, 2, 2, 2),
(70, 'Fernanda Dias', '01234569855', 'Endereco 20', 4900, 2, 2, 2),
(71, 'Marcelo Cardoso', '12345670966', 'Endereco 21', 5000, 2, 2, 2),
(72, 'Lilian Araújo', '23456781077', 'Endereco 22', 5100, 2, 2, 2),
(73, 'Alex Teixeira', '34567892188', 'Endereco 23', 5200, 2, 2, 2),
(74, 'Rafaela Sousa', '45678903299', 'Endereco 24', 5300, 2, 2, 2),
(75, 'Miguel Santos', '56789124311', 'Endereco 25', 5400, 2, 2, 2),
(76, 'Tatiana Gomes', '67891235422', 'Endereco 26', 5500, 2, 2, 2),
(77, 'Lucas Rocha', '78912346533', 'Endereco 27', 5600, 2, 2, 2),
(78, 'Beatriz Carvalho', '89012347644', 'Endereco 28', 5700, 2, 2, 2),
(79, 'Julio Costa', '90123458755', 'Endereco 29', 5800, 2, 2, 2),
(80, 'Camila Faria', '01234569866', 'Endereco 30', 5900, 2, 2, 2),
(81, 'Renan Almeida', '12345670977', 'Endereco 31', 6000, 2, 2, 2),
(82, 'Priscila Oliveira', '23456781088', 'Endereco 32', 6100, 2, 2, 2),
(83, 'Fábio Ribeiro', '34567892199', 'Endereco 33', 6200, 2, 2, 2),
(84, 'Simone Rezende', '45678903211', 'Endereco 34', 6300, 2, 2, 2),
(85, 'Elias Sousa', '56789124322', 'Endereco 35', 6400, 2, 2, 2),
(86, 'Juliana Tavares', '67891235433', 'Endereco 36', 6500, 2, 2, 2),
(87, 'Danilo Freitas', '78912346544', 'Endereco 37', 6600, 2, 2, 2),
(88, 'Letícia Santos', '89012347655', 'Endereco 38', 6700, 2, 2, 2),
(89, 'Joaquim Costa', '90123458766', 'Endereco 39', 6800, 2, 2, 2),
(90, 'Marina Almeida', '01234569877', 'Endereco 40', 6900, 2, 2, 2),
(91, 'Emanuel Pinto', '12345670988', 'Endereco 41', 7000, 2, 2, 2),
(92, 'Patricia Silva', '23456781099', 'Endereco 42', 7100, 2, 2, 2),
(93, 'Renato Barros', '34567892111', 'Endereco 43', 7200, 2, 2, 2),
(94, 'Marta Oliveira', '45678903222', 'Endereco 44', 7300, 2, 2, 2),
(95, 'Ivan Ferreira', '56789124333', 'Endereco 45', 7400, 2, 2, 2),
(96, 'Diana Sousa', '67891235444', 'Endereco 46', 7500, 2, 2, 2),
(97, 'Eduarda Lima', '78912346555', 'Endereco 47', 7600, 2, 2, 2),
(98, 'Gustavo Cunha', '89012347666', 'Endereco 48', 7700, 2, 2, 2),
(99, 'Clara Mello', '90123458777', 'Endereco 49', 7800, 2, 2, 2),
(100, 'Leonardo Batista', '01234569888', 'Endereco 50', 7900, 2, 2, 2);


select func_nome, depto_nome, proj_numero
from `bd_exercicio`.`tb_funcionario`
inner join `bd_exercicio`.`tb_departamento` on depto_codigo = trab_depto_cod
inner join `bd_exercicio`.`tb_projeto` on proj_codigo = proj_cod



