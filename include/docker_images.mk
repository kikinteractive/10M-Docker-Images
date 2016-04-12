SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

include $(SELF_DIR)/docker_images_common.mk

build-cascade: build-parent build

clean-cascade: clean clean-parent

push-cascade: push-parent push
