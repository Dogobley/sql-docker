FROM python:3.9.1

RUN apt-get install -y wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py 


ENTRYPOINT [ "python", "ingest_data.py" ]