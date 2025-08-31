# Упражнение 3: Методы списка

# Исходный список: fruits = ["apple", "banana"]
# Выполните следующие операции по порядку:
# 1. Добавьте "orange" в конец списка
# 2. Вставьте "grape" по индексу 1
# 3. Удалите "banana"
# 4. Отсортируйте список
# 5. Переверните список
# Выводите список на печать после каждого шага

fruits = ["apple", "banana"]
print(f"Исходный список: {fruits}")

fruits.append("orange")  # Добавляем "orange" в конец списка
print(f"Список после добавления 'orange': {fruits}") 

fruits.insert(1, "grape")  # Вставляем "grape" по индексу 1
print(f"Список после вставки 'grape' по индексу 1: {fruits}")

fruits.remove("banana")  # Удаляем "banana"
print(f"Список после удаления 'banana': {fruits}")

fruits.sort()  # Сортируем список
print(f"Список после сортировки: {fruits}")

fruits.reverse()  # Переворачиваем список
print(f"Список после переворота: {fruits}")
