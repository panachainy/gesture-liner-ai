# Use an official Conda base image with Python 3.8
FROM continuumio/miniconda3:23.5.2-0-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a Conda environment based on the environment.yml file
RUN conda env create -f environment.yml

# Activate the Conda environment
SHELL ["conda", "run", "-n", "gesture-liner-ai", "/bin/bash", "-c"]

# Expose port 3800
EXPOSE 3800

# Define environment variable for Flask to run in production mode
ENV FLASK_ENV=production

# Run Gunicorn with your Flask app
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:3800", "app:app"]
