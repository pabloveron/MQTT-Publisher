# MQTT-Publisher
Docker virtualizing Raspbian and running python publisher

# Build
docker build -t mqtt-publisher .

# Run

docker run --net=mqttbridge -t mqtt-publisher message_1
