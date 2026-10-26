FROM python 3.19-slim-buster
WORKDIR /app
COPY /app
run pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
