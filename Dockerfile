# Use Python 3.7 as base image
FROM python:3.7-slim

# Set working directory
WORKDIR /app

# Copy Pipfile and Pipfile.lock
COPY Pipfile Pipfile.lock /app/

# Install dependencies
RUN pip install pipenv && pipenv install --deploy --ignore-pipfile

# Copy application files
COPY . /app/

# Expose the application port
EXPOSE 5000

# Start the Flask application
CMD ["pipenv", "run", "python", "app.py"]
