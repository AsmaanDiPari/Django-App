FROM python:3.12

# Set environment variables
ARG SECRET_KEY
ENV SECRET_KEY=${SECRET_KEY}

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
