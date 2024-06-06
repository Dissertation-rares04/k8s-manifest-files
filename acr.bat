@echo off

echo Logging in to acr
CALL az acr login --name disertation

echo Tagging core-app
CALL docker tag core-app:latest disertation.azurecr.io/core-app:latest

echo Tagging header-app
CALL docker tag header-app:latest disertation.azurecr.io/header-app:latest

echo Tagging main-app
CALL docker tag main-app:latest disertation.azurecr.io/main-app:latest

echo Tagging contentmanagementservice-api
CALL docker tag contentmanagementservice-api:latest disertation.azurecr.io/contentmanagementservice-api:latest

echo Tagging recommendationmanagementservice-workerservice
CALL docker tag recommendationmanagementservice-workerservice:latest disertation.azurecr.io/recommendationmanagementservice-workerservice:latest

echo Tagging notificationmanagementservice-workerservice
CALL docker tag notificationmanagementservice-workerservice:latest disertation.azurecr.io/notificationmanagementservice-workerservice:latest

echo Tagging confluentinc/cp-kafka
CALL docker tag confluentinc/cp-kafka:7.6.1 disertation.azurecr.io/confluentinc/cp-kafka:7.6.1

echo Tagging rabbitmq
CALL docker tag rabbitmq:3.12.14-management disertation.azurecr.io/rabbitmq:3.12.14-management


echo Pushing core-app
CALL docker push disertation.azurecr.io/core-app:latest

echo Pushing header-app
CALL docker push disertation.azurecr.io/header-app:latest

echo Pushing main-app
CALL docker push disertation.azurecr.io/main-app:latest

echo Pushing contentmanagementservice-api
CALL docker push disertation.azurecr.io/contentmanagementservice-api:latest

echo Pushing recommendationmanagementservice-workerservice
CALL docker push disertation.azurecr.io/recommendationmanagementservice-workerservice:latest

echo Pushing notificationmanagementservice-workerservice
CALL docker push disertation.azurecr.io/notificationmanagementservice-workerservice:latest

echo Pushing confluentinc/cp-kafka
CALL docker push disertation.azurecr.io/confluentinc/cp-kafka:7.6.1

echo Pushing rabbitmq
CALL docker push disertation.azurecr.io/rabbitmq:3.12.14-management

pause