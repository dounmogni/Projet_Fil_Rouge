FROM python:3.6-alpine
LABEL maintainer="Nicolas DOUNMOGNI"
WORKDIR /opt
RUN  pip install flask
#copy de tous les fichiers dans l'image
COPY . /opt/   
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
#ENTRYPOINT ["sh", "-c", "source /opt/entrypoint.sh", "-s" ]
#CMD ["python", "app.py"]
ENTRYPOINT ["python", "app.py"]
