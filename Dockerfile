FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY app/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app code
COPY . /app

# Expose the port
EXPOSE 8000

# Command to run application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
