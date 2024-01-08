-- GERENCIANDO CONSTRAINTS

--1. ADICIONAR CONSTRAINTS
--2. RENOMEAR CONSTRAINTS
--3. REMOVER CONSTRAINTS

--Remova a constraint PK da tabela fContratos
ALTER TABLE fContratos
DROP CONSTRAINT fContratos_id_contratos_PK

--Remova a constraint FK Cliente na tabela fContratos
ALTER TABLE fContratos
DROP CONSTRAINT fContratos_id_cliente_FK

--Adicione a constraint PK id_venda na tabela fContratos
ALTER TABLE fContratos
ADD CONSTRAINT fContratos_id_contrato_PK PRIMARY KEY(id_contrato)

--Adicionar a constraint FK id_cliente na tabela de VENDAS
ALTER TABLE fContratos
ADD CONSTRAINT fContratos_id_cliente_FK FOREIGN KEY(id_cliente) REFERENCES dCliente(id_cliente)

--Alterar o nome de uma constaint criada

