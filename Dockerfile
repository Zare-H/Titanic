# تصویر پایه سبک پایتون
FROM python:3.9-slim

# مسیر کاری در کانتینر
WORKDIR /app

# نصب پکیج‌های مورد نیاز سیستم (build tools و git)
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# کپی کردن تمام فایل‌های پروژه به کانتینر
COPY . /app

# بروزرسانی pip و نصب کتابخانه‌های پایتون
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# فرمان پیش‌فرض برای اجرای اپلیکیشن Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]