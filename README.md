```# Serment
Using Database service in a standalone mode .i.e Relation Database Service and the other service is to maintain the db using microservice(Elastic Kubernetes Service/Elastic Container Service)
Implementing/Automating the changes using Python
ElasticSearch,Logstash,Kibana(AWS service) has to be integrated with Database(either in standalone/microservices) and data has to be visualised in UI
Maintaining the complete Infra in private mode by enabling https protocol.
Creating VPN gateway inorder to ensure Product is inaccessible to the outside Network
Injection of  sql data on regular basis using Lambda(AWS service)


##create eks cluster using command
  eksctl create cluster --name demo-cluster --region us-east-1 --fargate

Identity provider will be attached to theIdentity broker
