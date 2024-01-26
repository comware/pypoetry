.PHONY: lint format version load slack app hooks build-embeddings release-patch
SHELL := /bin/bash
IMAGE_NAME := comware/pypoetry
IMAGE_TAG := latest

docker-build:
	@docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .

docker-push:
	@docker push "${IMAGE_NAME}:${IMAGE_TAG}"
