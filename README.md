# Sistema de Banco de Dados para Oficina Mecânica

## Descrição do Projeto
Este projeto visa criar um banco de dados relacional para o gerenciamento eficiente das operações de uma oficina mecânica. O sistema foi modelado para registrar e controlar informações de clientes, veículos, ordens de serviço (OS), serviços realizados, peças utilizadas, mecânicos responsáveis e pagamentos.

O objetivo é fornecer uma estrutura robusta para armazenar e recuperar dados com eficiência, facilitando a execução de consultas e análises detalhadas.

### Estrutura do Projeto
Modelagem Conceitual

Diagrama ER (Entidade-Relacionamento) representando todas as entidades, atributos e seus relacionamentos.
Principais entidades:
Cliente
Veículo
Ordem de Serviço (OS)
Serviço
Peça
Equipe de Mecânicos
Pagamento
Modelagem Lógica

Conversão do modelo conceitual para o modelo relacional com tabelas normalizadas.
Definição de chaves primárias e chaves estrangeiras para manter a integridade dos dados.
Implementação SQL

Script SQL contendo:
Criação das tabelas com os respectivos atributos, tipos de dados, PK e FK.
Inserção de dados (persistência) para testes.
Consultas SQL com as cláusulas:

<li>SELECT</li>
<li>WHERE</li>
<li>ORDER BY</li>
<li>GROUP BY</li>
<li>HAVING</li>
<li>JOIN(junção entre tabelas)</li>

### Estrutura do Banco de Dados

O modelo inclui as seguintes entidades:
1. Cliente
2. Veículo
3. Ordem de Serviço (OS)
4. Equipe
5. Mecânico
6. Serviço
7. Peça
   
### Consultas SQL de Exemplo
Recuperação de todas as Ordens de Serviço abertas:

SELECT * 
FROM Ordem_de_Serviço 
WHERE Status = 'Aberta';

Total gasto em peças por Ordem de Serviço:

SELECT ID_OS, SUM(Quantidade * Preço_Unitário) AS Total_Pecas
FROM Peça
GROUP BY ID_OS
HAVING SUM(Quantidade * Preço_Unitário) > 0;


   

