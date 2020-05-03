docker-compose exec ktools bash
kafka-topics.sh --bootstrap-server kafka:9092     --create     --topic my-topic     --replication-factor 1     --partitions 2
kafka-console-consumer.sh --bootstrap-server kafka:9092 --group my-group --topic my-topic --from-beginning
kafka-producer-perf-test.sh --topic my-topic --num-records 1000000 --throughput 10000 --record-size 1000 --producer-props bootstrap.servers=kafka:9092
