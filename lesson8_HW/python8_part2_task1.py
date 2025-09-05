# Упражнение 1: Функции без параметров

# Создайте функцию без параметров show_current_time() — печатает
# текущие дату и время (используйте модуль datetime).

import datetime # Импортируем модуль datetime

def show_current_time(): # Создаем функцию без параметров
    current_time = datetime.datetime.now() # Получаем текущие дату и время
    print(f"Текущие дата и время: {current_time}")

show_current_time() # Вызываем функцию
