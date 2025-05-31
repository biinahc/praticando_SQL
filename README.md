Sistema de Gerenciamento de Escola de Inglês (MySQL)
Este repositório contém um script SQL para criar e gerenciar um banco de dados simples para uma Escola de Inglês. O projeto foi desenvolvido como parte dos meus estudos no curso de Banco de Dados e SQL da AlgaWorks, com o objetivo de praticar a criação de tabelas, inserção de dados, relacionamentos entre tabelas, e manipulação de dados em MySQL.

🚀 Funcionalidades
O script SQL aborda as seguintes funcionalidades:

Criação de Banco de Dados e Tabelas: Estrutura para alunos, cursos, professores e matrículas.
Inserção de Dados: Popular as tabelas com dados de exemplo.
Relacionamentos: Estabelecimento de chaves estrangeiras entre as tabelas (curso e professor, matricula e aluno, matricula e curso).
Consultas Básicas: SELECT para recuperar dados de todas as tabelas.
Alteração de Tabelas: Adição de novas colunas e restrições.
Atualização de Dados: Modificação de registros existentes.
Indexação: Criação de índices para otimizar o desempenho das consultas.
Consultas Avançadas: Exemplos de JOINs, filtros (WHERE), agregações (SUM, AVG) e agrupamentos (GROUP BY).
🛠️ Tecnologias Utilizadas
MySQL: Sistema de gerenciamento de banco de dados relacional.
📂 Estrutura do Código
O script SQL (nome_do_seu_arquivo.sql - você pode renomeá-lo) é executado sequencialmente e inclui:

Criação do Banco de Dados: escola_inglês.
Definição das Tabelas:
aluno: id, nome, email, data_nascimento, telefone.
curso: id, nome, descricao, carga_horaria, professor_id.
professor: id, nome, email, especialidade.
matricula: id, aluno_id, curso_id, data_matricula, status, valor_pago.
Inserts Iniciais: Dados de exemplo para cada tabela.
ALTER TABLE: Adição de colunas e chaves estrangeiras.
UPDATE: Atualização de dados existentes.
CREATE INDEX: Criação de índices para colunas específicas.
SELECT de Demonstração: Consultas para exemplificar a recuperação e manipulação dos dados.