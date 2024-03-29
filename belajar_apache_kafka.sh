
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

# Offset
# see offset
./bin/kafka-consumer-groups.sh --bootstrap-server host:port --all-groups --all-topics --describe

# Partition
# create topic with partitions
./bin/kafka-topics.sh --bootstrap-server host:port --create --topic name --partitions number

# change topic already exists
./bin/kafka-topics.sh --bootstrap-server host:port --alter --topic name --partitions number

# topic info
./bin/kafka-topics.sh --bootstrap-server hoserverst:port --describe --topic name

# routing
./bin/kafka-console-producer.sh --bootstrap-server host:port --topic name --property "parse.key=true" --property "key.separator={whatever this}"
./bin/kafka-console-consumer.sh --bootstrap-server host:port --topic name --group name --from-beginning --property "print.key=true"
