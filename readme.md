# Projeto de Banco de Dados - SQL/PostgreSQL

Desenvolvimento de Projeto de Banco de Dados com SQL/PostgreSQL. `Desafios, Questões 01-10, Módulo 01 (SQL).` 

Instituição: [Digital College Brasil](https://digitalcollege.com.br/) (Fortaleza/CE) <br>
Curso: Data Analytics (Turma 18) <br>
Instrutora: [Nayara Wakweski](https://github.com/NayaraWakewski) <br>

<br>

## Etapas de Desenvolvimento

### Enunciado das Questões:
![screenshot](/images/questions_level1.png) <br>
![screenshot](/images/questions_level2.png) <br>
![screenshot](/images/questions_level3.png) <br>    
<br>

## Restore do Banco de Dados
- Criar banco de dados: vendas_desafio (Interface gráfica). <br>
![screenshot](/images/create_database.png) <br>

- Fazer "Restore" do banco de dados (Interface gráfica). <br>
![screenshot](/images/restore.png) <br>

## Questão 1
- Selecione todos os registros da tabela sales.funnel, exibindo as colunas visit_id, customer_id product_id, e store_id. <br>

- Comandos SQL: <br>
```
SELECT visit_id, customer_id, product_id, store_id
FROM sales.funnel;
``` 
<br>

- Visualização: <br>
![screenshot](/images/q1.png)

<br>

## Questão 2
- Liste todos os produtos (product_id) que foram adicionados ao carrinho, exibindo também as datas em que isso ocorreu (add_to_cart_date). <br>

- Comandos SQL: <br>
```
SELECT product_id, add_to_cart_date
FROM sales.funnel
WHERE add_to_cart_date IS NOT NULL
ORDER BY add_to_cart_date;
``` 
<br>

- Visualização: <br>
![screenshot](/images/q2.png)

<br>

## Questão 3
- Recupere todos os registros onde a data de pagamento (paid_date) não é nula. Exiba os campos visit_id, customer_id, e paid_date. <br>

- Comandos SQL: <br>
```
SELECT visit_id, customer_id, paid_date
FROM sales.funnel
WHERE paid_date IS NOT NULL
ORDER BY paid_date;
``` 
<br>

- Visualização: <br>
![screenshot](/images/q3.png)

<br>

## Questão 4
- Liste as visitas onde o cliente iniciou o processo de checkout (start_checkout_date), exibindo as colunas visit_id, customer_id, product_id e start_checkout_date. <br>

- Comandos SQL: <br>
```
SELECT visit_id, customer_id, product_id, start_checkout_date
FROM sales.funnel
WHERE start_checkout_date IS NOT NULL
ORDER BY start_checkout_date;
``` 
<br>

- Visualização: <br>
![screenshot](/images/q4.png)

<br>

## Questão 5
- Encontre as visitas onde o desconto aplicado foi maior do que 20% (discount < -0.20). Exiba as colunas visit_id, product_id, e discount. <br>

- Comandos SQL: <br>
```
SELECT visit_id, product_id, discount
FROM sales.funnel
WHERE discount < -0.20
ORDER BY discount;
``` 
<br>

- Visualização: <br>
![screenshot](images/q5_1.png)

<br>

## Questão 6
- Selecione as visitas feitas por clientes em lojas específicas. Liste todos os registros onde o store_id é 'BF580E604866'. Exiba as colunas visit_id, customer_id, product_id, e store_id. <br>

- Comandos SQL: <br>
```
SELECT visit_id, customer_id, product_id, store_id
FROM sales.funnel
WHERE store_id = 'BF580E604866'
ORDER BY product_id;
``` 
<br>

- Visualização: <br>
![screenshot](images/q6.png)

<br>

## Questão 7
- Calcule a média do desconto aplicado em todas as transações. Exiba a média do campo discount. <br>

- Comandos SQL: <br>
```
SELECT AVG(discount)::NUMERIC(8,4)
FROM sales.funnel;
``` 
<br>

- Visualização: <br>
![screenshot](images/q7.png)

<br>

## Questão 8
- Conte quantas transações foram iniciadas com um processo de checkout (start_checkout_date). Nomeie a contagem como checkout_count. <br>

- Comandos SQL: <br>
```
SELECT COUNT(start_checkout_date) AS checkout_count
FROM sales.funnel;
``` 
<br>

- Visualização: <br>
![screenshot](images/q8.png)

<br>

## Questão 9
- Calcule a taxa de conversão para cada loja. Para isso, obtenha o número total de visitas (COUNT(*)) e o número de transações finalizadas (onde paid_date não é nulo), depois calcule a taxa de conversão (transações finalizadas / total de visitas * 100). Exiba store_id, o total de visitas, transações finalizadas e a taxa de conversão, nomeando a coluna como conversion_rate. <br>

- Comandos SQL: <br>
```
SELECT store_id, 
COUNT(visit_page_date) AS total_visits,
COUNT(CASE WHEN paid_date IS NOT NULL THEN 1 END) AS completed_transactions,
ROUND((COUNT(CASE WHEN paid_date IS NOT NULL THEN 1 END) * 100 / COUNT(visit_page_date)), 1) AS conversion_rate
FROM sales.funnel
GROUP BY store_id
ORDER BY total_visits DESC;
``` 
<br>

- Visualização: <br>
![screenshot](images/q9.png)

<br>

## Questão 10
- Liste os 5 produtos mais vendidos (com transações pagas), exibindo as colunas product_id, paid_date e store_id. Ordene os resultados pela data de pagamento mais recente. <br>

- Comandos SQL: <br>
```
SELECT
    product_id,
    MAX(paid_date) AS last_sale,
    COUNT(*) AS total_sales --PLUS
FROM
    sales.funnel
WHERE
    paid_date IS NOT NULL
GROUP BY
    product_id
ORDER BY
    total_sales DESC
LIMIT 5;
``` 
<br>

- Visualização: <br>
![screenshot](images/q10.png)

<br>

## Meus Contatos

- Business Card - [Renato Albuquerque](https://rma-contacts.vercel.app/)
- Linkedin - [renato-malbuquerque](https://www.linkedin.com/in/renato-malbuquerque/)
- Discord - [Renato Albuquerque#0025](https://discordapp.com/users/992621595547938837)