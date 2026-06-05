DOCKER_IMAGE=dockette/upstream
DOCKER_TAG?=php-5.6
DOCKER_PLATFORMS?=linux/amd64
DOCKER_CONTEXT?=php/5.6

.PHONY: build
build:
	docker buildx build --platform ${DOCKER_PLATFORMS} -t ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_CONTEXT}

.PHONY: test
test:
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} php -v
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} composer --version

.PHONY: run
run:
	docker run --rm -it -v $${PWD}:/srv ${DOCKER_IMAGE}:${DOCKER_TAG}
