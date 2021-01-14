# Installing python
FROM python:3.7

# Copy to app from current directory
COPY . /app

# Now working directory is app
WORKDIR /app

# Installing dependancies
RUN pip install -r requirements.txt

# It means it will expose it in  5000 port
EXPOSE 5000

# Now it's time to run this python file
CMD ["python", "/app/main.py"]