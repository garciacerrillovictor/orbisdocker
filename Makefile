include makefiles/task.mk
include makefiles/gh-pages.mk
#include deply-aws.mk
NAME_IMAGE ?= dockervic/orbis-training-docker
DOCKER_TAG ?= 1.0.6
DOCKER_IMAGE ?= dockervic/orbis-training-docker:1.0.6
NAME ?= "angelo victor"

.PHONY: install\
	start\
	release\
	greet

install:
	docker run --rm -v ${PWD}:/app ${NAME_IMAGE}:1.0.6 npm install

start:
	docker run --rm -v ${PWD}:/app -p 3030:3030 -p 35729:35729 ${DOCKER_IMAGE} npm start

release:
	docker run --rm -v ${PWD}:/app ${DOCKER_IMAGE} npm run release

greet:
	docker run --rm -v ${PWD}:/app dockervic/orbis-training-docker:1.0.6 bash ./resources/example.sh saludo ${NAME}

docexam:
	@echo 'Hola recursos!'

build-jenkins:
	docker build -t ${NAME_IMAGE}/jenkins-deploy:0.1.0 docker/jenkins

jenkins:
	docker run --rm \
    -u root \
    -p 8080:8080 \
    -v ${PWD}/jenkins-data:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    ${NAME_IMAGE}/jenkins-deploy:0.1.0

project-workspace:
	docker run --rm -it -d -v ${PWD}:/app -p 3030:3030 -p 35729:35729 ${DOCKER_IMAGE}

curl:
	docker run --net=docexam_default node:10.10.0-slim curl http://node_app:3030/