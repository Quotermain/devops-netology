1. Прилагаю ссылку на [docker-compose манифест](docker-compose.yml).

2. Список БД:   
![](screenshots/db_list.png)   
Описание таблицы orders:   
![](screenshots/orders_describe.png)   
Описание таблицы clients:
![](screenshots/clients_describe.png)   
SQL-запрос для выдачи списка пользователей с правами над таблицами test_db с результатом этого запроса:   
![](screenshots/users_and_privs.png)

3. Приведу по одному запросу для наполнения таблицы с целью экономии пространства.   
Для orders:   
```sql
INSERT INTO orders(наименование, цена) VALUES('Шоколад', 10);
```
![](screenshots/count_orders_again.png)   
Для clients:   
```sql
INSERT INTO clients(фамилия, "страна проживания") VALUES('Иванов', 'USA');
```   
![](screenshots/count_clients.png)
