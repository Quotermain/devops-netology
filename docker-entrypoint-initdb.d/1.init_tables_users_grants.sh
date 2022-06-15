#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL

	CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    наименование TEXT,
    цена INT
  );

  CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    фамилия TEXT,
    "страна проживания" TEXT,
    заказ INT REFERENCES orders
  );

  CREATE INDEX client_country_idx ON clients("страна проживания");

  GRANT ALL PRIVILEGES ON DATABASE "test_db" TO "test-admin-user";

  CREATE USER "test-simple-user";

  GRANT SELECT, INSERT, UPDATE, DELETE ON "orders" TO "test-simple-user";
  GRANT SELECT, INSERT, UPDATE, DELETE ON "clients" TO "test-simple-user";

  INSERT INTO orders(наименование, цена) VALUES('Шоколад', 10);
  INSERT INTO orders(наименование, цена) VALUES('Принтер', 3000);
  INSERT INTO orders(наименование, цена) VALUES('Книга', 500);
  INSERT INTO orders(наименование, цена) VALUES('Монитор', 7000);
  INSERT INTO orders(наименование, цена) VALUES('Гитара', 4000);

  INSERT INTO clients(фамилия, "страна проживания") VALUES('Иванов', 'USA');
  INSERT INTO clients(фамилия, "страна проживания") VALUES('Петров', 'Canada');
  INSERT INTO clients(фамилия, "страна проживания") VALUES('Бах', 'Japan');
  INSERT INTO clients(фамилия, "страна проживания") VALUES('Дио', 'Russia');
  INSERT INTO clients(фамилия, "страна проживания") VALUES('Blackmore', 'Russia');

EOSQL
