sleep 5
vault secrets disable secret
vault secrets enable -path=secret kv
vault write secret/application eureka.instance.hostname=localhost \ eureka.client.service-url.defaultZone=http://last-civilization:last-civilization@localhost:8761/eureka/
vault write secret/discovery-service spring.security.user.name=last-civilization \ spring.security.user.password=last-civilization \ spring.security.user.roles=ADMIN
vault write secret/user-write-service spring.datasource.url=jdbc:postgresql://localhost:5432/last-civilization_user_db \ spring.datasource.username=last-civilization \ spring.datasource.password=last-civilization