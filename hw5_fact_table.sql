-- Таблица фактов бронирования
CREATE TABLE fact_reservations (
	reservation_sk SERIAL PRIMARY KEY,   -- Суррогатный ключ факта
	
	-- Внешние ключи на таблицы измерений
	
	customer_sk  INT NOT NULL REFERENCES dim_customer(customer_sk),
	date_sk      INT NOT NULL REFERENCES dim_date(date_sk),
	table_sk     INT NOT NULL REFERENCES dim_table(table_sk),	
	menu_item_sk INT NOT NULL REFERENCES dim_menu_item(menu_item_sk),
	
	-- Метрики
	guests_count     INT NOT NULL,
	quantity_ordered INT NOT NULL,
	total_price      NUMERIC(10,2) NOT NULL
);
