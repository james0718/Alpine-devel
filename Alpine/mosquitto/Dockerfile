FROM eclipse-mosquitto:1.4.12
RUN rm -rf /mosquitto/config/mosquitto.conf
COPY ./pwfile /etc/mosquitto/pwfile
COPY ./mosquitto.conf /mosquitto/config/mosquitto.conf
RUN chmod 777 /etc/mosquitto/pwfile && mosquitto_passwd -U /etc/mosquitto/pwfile
