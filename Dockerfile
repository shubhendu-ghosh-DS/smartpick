# Use an official Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy application code
COPY . /app

# Install dependencies
RUN pip install --upgrade pip \
    && pip install flask

# Expose the port used by the app
EXPOSE 7860

# Command to run the app
CMD ["python", "app/app.py"]
