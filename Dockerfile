FROM python:3.14-alpine
WORKDIR /app
RUN pip install --no-cache-dir --upgrade pip && pip install fastapi[standard]
COPY app.py .
EXPOSE 8000
CMD [ "fastapi", "run", "app.py", "--port", "8080" ]