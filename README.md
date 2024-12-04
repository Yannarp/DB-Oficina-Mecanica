# Sistema de Controle de Ordens de Serviço para Oficina Mecânica

## Descrição do Projeto
Este projeto é um modelo conceitual para o gerenciamento de ordens de serviço em uma oficina mecânica. 
Ele abrange o registro de clientes, veículos, equipes de mecânicos, serviços e peças utilizadas em cada ordem de serviço.

### Narrativa
O sistema foi projetado com base na seguinte narrativa:
- Os clientes levam veículos à oficina para consertos ou revisões.
- Cada veículo é designado a uma equipe de mecânicos, que identifica os serviços necessários e preenche uma OS.
- A partir da OS, calcula-se o valor dos serviços e peças, com base em tabelas de referência.
- A execução dos serviços é realizada pela equipe atribuída.

### Esquema Conceitual
O modelo inclui as seguintes entidades:
1. Cliente
2. Veículo
3. Ordem de Serviço (OS)
4. Equipe
5. Mecânico
6. Serviço
7. Peça

