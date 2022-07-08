#TAG=mysql-5.7.15-20220528-1726
TAG=mariadb-10.7.4-focal-20220617-1341

REPO=dlll-paas-base-image

docker build -t pudding/$REPO:$TAG -t latest . && docker push pudding/$REPO:$TAG && docker rmi pudding/$REPO:$TAG