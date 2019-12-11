FROM puckel/docker-airflow:1.10.6

RUN $(which pip) install --user  kubernetes cryptography airflow-exporter

COPY script/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
