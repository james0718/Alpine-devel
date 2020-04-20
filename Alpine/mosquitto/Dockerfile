FROM eclipse-mosquitto:1.4.12
COPY ./pwfile /etc/mosquitto/pwfile
RUN chmod 777 /etc/mosquitto/pwfile && mosquitto_passwd -U /etc/mosquitto/pwfile
