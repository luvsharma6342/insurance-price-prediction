# base image
FROM python:3.11-slim

# Working directory
WORKDIR /app

# copy
COPY . /app

# run
RUN pip install --no-cache-dir -r requirements.txt

# port
EXPOSE 8000

# command to start FastAPI application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "8000"]