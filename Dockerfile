FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
COPY src/app.py . 
COPY dataset/anirban.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV HUGGINGFACEHUB_API_TOKEN=<your_hf_api_token>

EXPOSE 7860
# Add your token here
ENV HUGGINGFACEHUB_API_TOKEN="" 

CMD ["python", "app.py"]
