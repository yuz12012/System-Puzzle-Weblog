FROM python:3.7

ENV PYTHONUNBUFFERED 1
COPY requirements_ingestion.txt .
COPY weblogs.log .
COPY ingestion.py .
COPY utilss.py .
RUN pip install -r requirements_ingestion.txt
EXPOSE 5672
RUN ls
CMD ["python", "ingestion.py"]
