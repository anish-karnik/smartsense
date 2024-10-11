FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
COPY app.py . 
COPY anirban.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV HUGGINGFACEHUB_API_TOKEN=<your_hf_api_token>

EXPOSE 7860

ENV HUGGINGFACEHUB_API_TOKEN="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"

CMD ["python", "app.py"]
