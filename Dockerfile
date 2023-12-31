# Взять официальный базовый образ Python платформы Docker
FROM python:3.10.6

# Задать переменные среды
ENV PYTHONDONTWRITEBYTECODE=1 
ENV PYTHONUNBUFFERED=1

# Задать рабочий каталог
WORKDIR /code

COPY requirements.txt /code/

# Установить зависимости
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /code/