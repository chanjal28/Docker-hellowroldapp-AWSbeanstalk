FROM python:3.9-slim

# Set the working directory in the container
WORKDIR app

# Copy the requirements.txt to the container
COPY requirements.txt .


# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set environment variables if needed (optional)
ENV FLASK_APP=app.py

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
