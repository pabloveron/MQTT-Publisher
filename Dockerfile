FROM resin/raspberry-pi-python:latest
# Enable systemd
ENV INITSYSTEM on

RUN pip install paho-mqtt

COPY publish.sh /root
COPY publish.py /root

RUN chmod a+x /root/publish.sh
RUN chmod a+x /root/publish.py

ENTRYPOINT ["/root/publish.sh"]
CMD ["hello"]  