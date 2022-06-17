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

4. Запросы с результатами:   
![](screenshots/update_clients.png)   
Запрос измененных клиентов:   
![](screenshots/select_updates.png)

5. Информация по выполнению запроса:   
![](screenshots/explain.png)   
Данная информация используется для оценки скорости выполнения запроса и включает его план. Seq scan свидетельствует о том, что в запросе применяется последовательный поиск вместо индексного. В скобках приводится "стоимость" запроса (в единицах измерения, выбираемых пользователем из вариантов, предлагаемых Postgres), оценочное число возвращаемых строк и их ширина. Также указывается условие фильтрации.   

6. Для создания бэкапа использовал команду:   
```
pg_dump -U test-admin-user test_db > backup_volume/test_db.sql
```   
Восстанавливался из бэкапа с помощью команды:   
```
psql -U test-admin-user test_db < backup_volume/test_db.sql
```
