.PHONY: build\
	push\
	up\
	login

build:
	docker build .

push: login
	docker push dockervic/orbis-training-docker:1.0.6

up:
	docker-compose up

login:
	docker login