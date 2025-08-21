-- Таблица клиентов
CREATE TABLE dim_customer (
	customer_sk  SERIAL PRIMARY KEY,   -- Суррогатный ключ
	customer_id  INT UNIQUE NOT NULL,  -- Исходный ID клиента
	full_name    TEXT NOT NULL,
	phone        TEXT,	
	email        TEXT
);

-- Таблица дат
CREATE TABLE dim_date (
	date_sk      SERIAL PRIMARY KEY,   -- Суррогатный ключ
	full_date    DATE UNIQUE NOT NULL, -- Дата бронирования
	year         TEXT NOT NULL,
	quarter      SMALLINT NOT NULL,	
	month        SMALLINT NOT NULL,
	day_of_week  SMALLINT NOT NULL,
	hour_of_day  SMALLINT UNIQUE NOT NULL
);

-- Таблица столиков
CREATE TABLE dim_table (
	table_sk     SERIAL PRIMARY KEY,   -- Суррогатный ключ
	table_id     INT UNIQUE NOT NULL,  -- Исходный ID столика
	table_number INT NOT NULL,
	capacity     INT NOT NULL,	
	location     TEXT
);

-- Таблица блюд
CREATE TABLE dim_menu_item (
	menu_item_sk SERIAL PRIMARY KEY,   -- Суррогатный ключ
	menu_item_id INT UNIQUE NOT NULL,  -- Исходный ID блюда
	name         TEXT NOT NULL,
	price        NUMERIC(10,2) NOT NULL,	
	description  TEXT
);


