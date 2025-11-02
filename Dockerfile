# Use official Python image as base
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy all project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask default port
EXPOSE 5001

# Run the Flask app
CMD ["python", "app.py"]
