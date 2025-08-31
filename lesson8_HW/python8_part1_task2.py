# Упражнение 2: Методы написания строк и форматинг

# Дано: email = " USER@DOMAIN.COM "
# 1. Очистить и отформатировать до вида: "user@domain.com"
# 2. Разделить на имя пользователя и домен
# 3. Используя f-строку, создать: "Username: user, Domain: domain.com"

email = " USER@DOMAIN.COM "
# 1. Очистка и форматирование
cleaned_email = email.lower().strip()
print(cleaned_email) 

# 2. Разделение на имя пользователя и домен
username, domain = cleaned_email.split('@')
print(username, domain)

# 3. Форматирование с использованием f-строки
formatted_email = f"Username: {username}, Domain: {domain}"
print(formatted_email)
