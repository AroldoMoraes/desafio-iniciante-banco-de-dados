# Desafio Iniciante - Banco de Dados (SQL Server)

Resolução do desafio iniciante de banco de dados: criação de uma tabela de produtos,
manipulação de dados (INSERT, UPDATE, SELECT, DELETE) em **T-SQL (SQL Server)**.

## Enunciado

1. Criar a tabela `Produto` com os campos: `ID_Produto`, `Nome`, `Preco_Custo` e `Preco_Venda`.
2. Inserir 10 produtos na tabela.
3. Atualizar o preço de venda de um produto.
4. Consultar e exibir o nome e o preço de venda dos 5 produtos mais caros em ordem decrescente (`ORDER BY DESC`).
5. Excluir os produtos em prejuízo (onde `Preco_Custo > Preco_Venda`).

## Arquivo

- [`produtos.sql`](produtos.sql) - script completo com todas as etapas.

## Como executar

### SQL Server Management Studio (SSMS)

1. Abra o SSMS e conecte-se a uma instância (ex.: `localhost\SQLEXPRESS`).
2. Abra o arquivo `produtos.sql`.
3. Execute o script inteiro (`F5`).

### Linha de comando (sqlcmd)

```bash
sqlcmd -S "localhost\SQLEXPRESS" -E -C -d SeuBanco -i produtos.sql -W
```

> Se o SQL Server estiver com certificado autoassinado, o `-C` (trust server certificate) evita o erro de SSL.

## Saída esperada

**5 produtos mais caros (após o UPDATE):**

| Nome   | Preco_Venda |
|--------|-------------|
| Cafe   | 20.00       |
| Arroz  | 18.00       |
| Feijao | 12.00       |
| Oleo   | 10.00       |
| Acucar | 9.00        |

**Produtos removidos por prejuízo:** `Sal` (custo 3.00 / venda 2.00) e `Farinha` (custo 5.00 / venda 4.00) - 2 linhas afetadas.

**Tabela final (8 produtos):**

| ID_Produto | Nome     | Preco_Custo | Preco_Venda |
|------------|----------|-------------|-------------|
| 1          | Arroz    | 10.00       | 18.00       |
| 2          | Feijao   | 8.00        | 12.00       |
| 3          | Macarrao | 5.00        | 8.00        |
| 4          | Leite    | 4.00        | 6.00        |
| 5          | Cafe     | 15.00       | 20.00       |
| 6          | Acucar   | 6.00        | 9.00        |
| 7          | Oleo     | 7.00        | 10.00       |
| 10         | Bolacha  | 4.00        | 7.00        |

## Conceitos praticados

- `CREATE TABLE` com chave primária (`PRIMARY KEY`) e tipos `INT`, `VARCHAR`, `DECIMAL`.
- `INSERT INTO ... VALUES` com múltiplas linhas.
- `UPDATE ... WHERE` para alterar um registro específico.
- `SELECT TOP N ... ORDER BY ... DESC` para ranking.
- `DELETE ... WHERE` com filtro condicional (comparação entre colunas).
