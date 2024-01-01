
# Topic
# create a topic
./bin/kafka-topics.sh --bootstrap-server host:port --create --topic name

# display all topic
./bin/kafka-topics.sh --bootstrap-server host:port --list

# delete a topic
./bin/kafka-topics.sh --bootstrap-server host:port --delete --topic name

# Message
# send message to topic
./bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic name

# Consumer
# read message from topic
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic name --from-beginning

# consumer group
./bin/kafka-console-consumer.sh --bootstrap-server host:port --topic name --group name --from-beginning
