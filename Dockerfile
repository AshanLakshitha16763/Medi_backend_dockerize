# Use the official Python slim image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current project files into the container
COPY . /app

# Install system-level dependencies
# RUN apt-get update && apt-get install -y \
#   gcc \
#    libffi-dev \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install -r requirements.txt
CMD ["python", "medi_backend_gpt2_pipe.py"]
# Expose the application port
EXPOSE 8080