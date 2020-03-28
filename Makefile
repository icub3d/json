IMAGE ?= icub3d/json

build:
	docker build -t ${IMAGE} .
.PHONY: build

push:
	docker push ${IMAGE}
.PHONY: push