IMAGE_REGISTRY := quay.io/nordstrom
IMAGE_NAME := baseimage-alpine
IMAGE_TAG := 3.6

ifdef http_proxy
IMAGE_BUILD_ARGS += --build-arg http_proxy=$(http_proxy)
IMAGE_BUILD_ARGS += --build-arg https_proxy=$(http_proxy)
endif

.PHONY: push/image
push/image: tag/image
	docker push $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: tag/image
tag/image: build/image
	docker tag $(IMAGE_NAME) $(IMAGE_REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: build/image
build/image: Dockerfile pull/from_image
	docker build -t $(IMAGE_NAME) $(IMAGE_BUILD_ARGS) .

.PHONY: pull/from_image
pull/from_image:
	docker pull alpine:$(IMAGE_TAG)
