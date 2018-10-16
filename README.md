docker run --rm -it -v $PWD:/app dockervic/orbis-training-docker:1.0.6 npm install
docker run --rm -it -v $PWD:/app -p 3030:3030 -p 35729:35729 dockervic/orbis-training-docker:1.0.6 npm start
docker run --rm -it -v $PWD:/app -p 1042:3030 -p 35729:35729 dockervic/orbis-training-docker:1.0.6 npm start
docker run -it --net=docexam_default node:10.10.0-slim curl http://node_app:3030/
docker run --rm -it -v $PWD:/app dockervic/orbis-training-docker:1.0.6 bash ./resources/example.sh saludo
docker run --rm -it -v $PWD:/app dockervic/orbis-training-docker:1.0.6 bash ./resources/example.sh saludo "docker"
