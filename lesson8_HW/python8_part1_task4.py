# Упражнение 4: List comprehension и словари

# Дано: words = ["hello", "world", "python", "code"]
# 1. Создать список длин слов, используя списковое включение
# 2. Создать список слов длиннее 4 символов
# 3. Создать словарь: {слово: длина} для всех слов

words = ["hello", "world", "python", "code"]
print(f"Список слов: {words}")

# 1. Список длин слов
lengths = [len(word) for word in words]
print(f"Длины слов: {lengths}")

# 2. Список слов длиннее 4 символов
long_words = [word for word in words if len(word) > 4]
print(f"Список слов длиннее 4 символов: {long_words}")

# 3. Словарь {слово: длина}
word_length_dict = {word: len(word) for word in words}
print(f"Словарь: {word_length_dict}")
