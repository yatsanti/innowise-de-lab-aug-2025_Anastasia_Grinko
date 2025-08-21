-- Определить топ-10 блюд по выручке
SELECT 
	dmi.name,                                -- Название блюда
	SUM(fr.total_price) AS total_profit      -- Сумма выручки по каждому блюду
FROM fact_reservations fr
JOIN dim_menu_item dmi ON fr.menu_item_sk = dmi.menu_item_sk 
GROUP BY dmi.menu_item_id, dmi.name
ORDER BY total_profit DESC
LIMIT 10;

-- Посчитать коэффициент загрузки по часам и дням недели
SELECT
	dd.day_of_week,                          -- День недели
	dd.hour_of_day,                          -- Время суток
	SUM(fr.guests_count) AS total_guests,    -- Общее кол-во гостей
	SUM(dt.capacity) AS total_capacity,      -- Вся вместимость
	(SUM(fr.guests_count)*1.0) /                   
	CASE 
		WHEN SUM(dt.capacity) = 0 THEN NULL
		ELSE SUM(dt.capacity)
	END AS load_factor                       -- Коэффициент загрузки
FROM fact_reservations fr
JOIN dim_date dd ON fr.date_sk = dd.date_sk 
JOIN dim_table dt ON fr.table_sk = dt.table_sk 
GROUP BY dd.day_of_week, dd.hour_of_day
ORDER BY dd.day_of_week , dd.hour_of_day;

-- Найти клиентов, которые делали бронирование 3 раза и больше
SELECT
	dc.full_name,                            --    
	dc.email, 
	dc.phone,
	COUNT(fr.reservation_sk) AS total_reservations
FROM fact_reservations fr 
JOIN dim_customer dc ON fr.customer_sk = dc.customer_sk 
GROUP BY dc.customer_sk, dc.full_name, dc.email, dc.phone 
HAVING COUNT(fr.reservation_sk) >= 3
ORDER BY total_reservations DESC;
	
-- Найти топ-5 столиков по суммарной занятости
SELECT
	dt.table_number,                         -- Номер столика
	dt.capacity,                             -- Его вместимость
	dt.location,                             -- Его расположение
	COUNT(fr.reservation_sk) AS booking_count  -- Кол-во бронирований для каждого столика
FROM fact_reservations fr 
JOIN dim_table dt ON fr.table_sk = dt.table_sk 
GROUP BY dt.table_sk, dt.table_number, dt.capacity, dt.location
ORDER BY booking_count DESC
LIMIT 5;