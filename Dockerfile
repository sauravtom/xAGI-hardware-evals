# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any needed dependencies specified in requirements.txt
# We use --no-cache-dir to reduce image size and --upgrade pip to ensure we have the latest pip
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY app.py .
COPY static ./static
COPY templates ./templates

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable for Flask
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

# Run app.py when the container launches using Gunicorn
# Gunicorn is a production-ready WSGI server
# We bind to 0.0.0.0 to allow external connections
# The number of workers can be adjusted based on CPU cores (e.g., 2 * num_cores + 1)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
