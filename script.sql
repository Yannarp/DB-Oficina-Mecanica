-- Criação do banco de dados
CREATE DATABASE OficinaMecanica;
USE OficinaMecanica;

-- Tabela Cliente
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

-- Tabela Veículo
CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(100),
    marca VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela Mecânico
CREATE TABLE Mecânico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255),
    especialidade VARCHAR(50)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Relacionamento entre Mecânico e Equipe
CREATE TABLE Equipe_Mecanico (
    id_equipe INT,
    id_mecanico INT,
    PRIMARY KEY (id_equipe, id_mecanico),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe),
    FOREIGN KEY (id_mecanico) REFERENCES Mecânico(id_mecanico)
);

-- Tabela Ordem de Serviço (OS)
CREATE TABLE OrdemServico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10, 2),
    status VARCHAR(50),
    data_conclusao DATE,
    id_veiculo INT,
    id_equipe INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

-- Tabela Serviço
CREATE TABLE Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    valor_mao_obra DECIMAL(10, 2)
);

-- Relacionamento entre OS e Serviço
CREATE TABLE OrdemServico_Servico (
    id_os INT,
    id_servico INT,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

-- Tabela Peça
CREATE TABLE Peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2)
);

-- Relacionamento entre OS e Peça
CREATE TABLE OrdemServico_Peca (
    id_os INT,
    id_peca INT,
    quantidade INT,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);

