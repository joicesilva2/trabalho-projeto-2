-- Criar banco de dados
CREATE DATABASE nome_do_banco;

-- Usar o banco de dados
\c nome_do_banco

-- Criar tabela empresas_parceiras
CREATE TABLE empresas_parceiras (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  endereco VARCHAR(255),
  area VARCHAR(255)
);

-- Inserir algumas empresas parceiras
INSERT INTO empresas_parceiras (nome, endereco, area) VALUES
  ('Empresa A', 'Rua A, 123', 'Tecnologia da informação'),
  ('Empresa B', 'Rua B, 456', 'Logística'),
  ('Empresa C', 'Rua C, 789', 'Telecomunicações');

-- Criar tabela tecnologias_usadas
CREATE TABLE tecnologias_usadas (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  area VARCHAR(255)
);

-- Inserir algumas tecnologias usadas
INSERT INTO tecnologias_usadas (nome, area) VALUES
  ('Tecnologia 1', 'Tecnologia da informação'),
  ('Tecnologia 2', 'Logística'),
  ('Tecnologia 3', 'Telecomunicações');

-- Criar tabela relatorios
CREATE TABLE relatorios (
  id SERIAL PRIMARY KEY,
  data DATE,
  empresa_id INTEGER,
  tecnologia_id INTEGER,
  FOREIGN KEY (empresa_id) REFERENCES empresas_parceiras (id),
  FOREIGN KEY (tecnologia_id) REFERENCES tecnologias_usadas (id)
);
-- Inserir alguns relatórios
INSERT INTO relatorios (data, empresa_id, tecnologia_id) VALUES
  ('2022-01-01', 1, 1),
  ('2022-01-01', 2, 2),
  ('2022-01-01', 3, 3);Tabela "Empresa Parceira":
