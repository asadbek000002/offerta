# Python bazaviy imidjidan foydalanamiz
FROM python:3.11-slim

# Ishchi katalog yaratamiz
WORKDIR /offerta

# Zarur fayllarni ko‘chiramiz
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Django loyihasini ko‘chiramiz
COPY . .

# Default port
EXPOSE 8000

# Django serverni ishga tushirish
CMD python manage.py collectstatic --noinput && \
    python manage.py runserver 0.0.0.0:8000