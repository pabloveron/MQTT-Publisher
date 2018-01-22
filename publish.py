# -*- coding: utf-8 -*-
import paho.mqtt.client as mqtt
import sys

mqttc = mqtt.Client(client_id="python_pub", clean_session=False)
mqttc.connect("162.0.0.10", 1883)
mqttc.publish("broker/messages", sys.argv[1], qos=1)
mqttc.loop(2) #timeout = 2s
