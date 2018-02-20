FROM python:3.6.4-jessie
ENV TZ=Asia/Tokyo

RUN apt-get update && apt-get install -y vim

RUN mkdir djangogirls
WORKDIR djangogirls

RUN python -m venv myvenv
COPY entrypoint.sh entrypoint.sh

CMD ["chmod", "+x", "/djangogirls/entrypoint.sh"]