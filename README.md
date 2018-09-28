docker run --rm -it -v $PWD:/app dockervic/orbis-training-docker:1.0.6 npm install
docker run --rm -it -v $PWD:/app -p 3030:3030 -p 35729:35729 dockervic/orbis-training-docker:1.0.6 npm start
