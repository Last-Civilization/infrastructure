sleep 60
vault secrets disable secret
vault secrets enable -path=secret kv
vault write secret/application eureka.instance.hostname=localhost \ eureka.client.service-url.defaultZone=http://last-civilization:last-civilization@localhost:8761/eureka/
vault write secret/discovery-service spring.security.user.name=last-civilization \ spring.security.user.password=last-civilization \ spring.security.user.roles=ADMIN
vault write secret/user-read-service spring.datasource.url=jdbc:postgresql://localhost:5433/last-civilization_user_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/user-write-service spring.datasource.url=jdbc:postgresql://localhost:5432/last-civilization_user_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization  \ spring.rabbitmq.host=localhost \ spring.rabbitmq.port=5672 \ spring.rabbitmq.username=last-civilization \ spring.rabbitmq.password=last-civilization
vault write secret/payment-read-service spring.datasource.url=jdbc:postgresql://localhost:5435/last-civilization_payment_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/payment-write-service spring.datasource.url=jdbc:postgresql://localhost:5434/last-civilization_payment_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/stats-read-service spring.datasource.url=jdbc:postgresql://localhost:5437/last-civilization_stats_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/stats-write-service spring.datasource.url=jdbc:postgresql://localhost:5436/last-civilization_stats_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/items-read-service spring.datasource.url=jdbc:postgresql://localhost:5439/last-civilization_items_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization
vault write secret/items-write-service spring.datasource.url=jdbc:postgresql://localhost:5438/last-civilization_items_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization