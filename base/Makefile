IMAGE_NAME=rounds/10m-base

include ../include/docker_images_common.mk

build-cascade: build

clean-cascade: clean

push-cascade: push

private:
	find ~ -name Dockerfile -exec sed -e "s|^FROM .*/|FROM $(LOCAL_DOCKER_REGISTRY)/|" -i {} +
	find ~ -name Makefile -exec sed -e "s|^IMAGE_NAME=.*/|IMAGE_NAME=$(LOCAL_DOCKER_REGISTRY)/|" -i {} +
