[![](https://badge.imagelayers.io/rounds/10m-base:latest.svg)](https://imagelayers.io/?images=rounds/10m-base:latest 'Get your own badge on imagelayers.io')

Base 10M docker
===============
This is the master branch of the tree, all other images inherit from it either directly or by cascade inheritance.

Any change here should cause a cascade rebuild of the entire tree.

Ways to use locally
==================
Some of the images now have makefiles that allow the following: (example usage: make build)
```
build         - Build docker image with tagging the right name like it has been published - Know what this means before using!
build-cascade - Will cascade the builds from base until your current image locally, see notes on build.
clean         - Remove local image by current directory (forced) - this allows you to clean a local build so you will grub the offical ones out of the public repos next time around.
clean-cascade - Removes all images cascading from here up the tree - this allows you to clean all local builds so you will grub the offical ones out of the public repos next time around.
run           - Run the current image in bash - very usfull for testing.
update        - On images that are reusing from public ones. This will update the local image to match the public one with the needed changes. NOTE: If on Mac/iOS need gnu-sed.
private       - Changes all the repo to put $LOCAL_DOCKER_REGISTRY as the base instead of 'rounds'.
push          - Build and push image on current directory.
push-cascade  - Build and push full tree up to current direcoty.
push-only     - push without build. (the reason default push builds is to avoid confusion when doing 'private' or similar)
```
