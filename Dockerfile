FROM python:3.11-slim-buster

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose the port your app will run on
EXPOSE 5000

# Start the app
CMD ["python3", "app.py"]
