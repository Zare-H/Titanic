# از تصویر پایه پایتون استفاده می‌کنیم
FROM python:3.9-slim

# مسیر کاری در کانتینر
WORKDIR /app

# نصب پکیج‌های لازم
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# کپی کردن فایل‌های پروژه به کانتینر
COPY . /app

# نصب کتابخانه‌های پایتون
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# فرمان پیش‌فرض اجرای اپلیکیشن
CMD ["streamlit", "run", "app.py"]