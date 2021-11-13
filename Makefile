BOOT_IMAGE ?= app:v0.0.1
GATEWAY_IMAGE ?= gateway:v0.0.1

all: boot gateway

boot:
	cd springboot && mvn install && docker build -t ${BOOT_IMAGE} -f Dockerfile-boot .

gateway:
	cd springgateway && mvn install && docker build -t ${GATEWAY_IMAGE} -f Dockerfile-gateway .

clean:
	rm -r springboot/target
	rm -r springgateway/target