FROM python:3.10-alpine

ENV TZ=America/Sao_Paulo

RUN mkdir /app
WORKDIR /app

RUN apk add --no-cache tzdata
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

RUN pip install --upgrade pip 
RUN pip install python-dotenv

ADD . .

RUN pip install -r requirements.txt
CMD ["flask", "run"]