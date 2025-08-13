# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies (بدون software-properties-common)
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Command to run Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]