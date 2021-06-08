netstat -npl

http://localhost:1337
 ------------------
| DevOps Challenge |
 ------------------
Show! ;D Agora pegue o código que está na URI /code.

http://localhost:1337/code

 ------------------
| DevOps Challenge |
 ------------------
Legal! o Código é NDIK
Ele está codificado de maneira simples, você precisa transformar ele em plaintext :D
Acesse /check/[coloque aqui o código que você descobriu]

$ echo 'NDIK' | base64 --decode
42

http://localhost:1337/check/42
 ------------------
| DevOps Challenge |
 ------------------
Muito bem, você conseguiu :D e estamos felizes por isso :D
Agora acesse a URL /nicejob com o header X-OrigemDaVida: 42

http://localhost:1337/nicejob

------------------
| DevOps Challenge |
 ------------------

1) Apartir da app https://github.com/tempestsecurity/simpleapp-python.git:
   Crie um Dockerfile
   Envie a imagem para o dockerhub.

   FROM python:3.9.5-slim-buster
   #Set flask_app as working directory
   WORKDIR /app
   #copy data from current dir into flask_app
   COPY . /app
   #install dependencies
   RUN pip install -r requirements.txt
   #Use this port
   EXPOSE 80
   #run app.py with python 
   CMD ["python","app.py"]

   docker build -t ivisilva/simpleapp-python:v1 .

   docker run -d -p 80:80 --rm --name myapppython ivisilva/simpleapp-python:v1

   docker push ivisilva/simpleapp-python:v1

2) Apartir da imagem criada na questao 1, crie os seguintes yaml(k8s):
   Deployment(simpleapp.yaml) com 1 pod, readiness e liveness utilizando o path /health
   Service(simpleapp-svc.yaml) do tipo ClusterIP
   Configmap(simpleapp-cm.yaml) com valor Code:1337
   Crie um ingress(challenge-ingress.yaml) utilizando o ingress-nginx com as entradas:
	Host: app.prova, Backend: simpleapp
	Host: kibana.prova, Backend: kibana
	Namespace(ns.yaml) prova
	Obs:. utilizar o configmap(simpleapp-cm) como envFrom no deployment(simpleapp).

3) Configure um cluster k8s utilizando o minikube (utilizando script), e faça o deploy dos yaml da questão 2.
   
4) Configure uma monitoração nesse cluster(via helm) utilizando:
   Prometheus e Grafana(crie um dashboard simples)

5) Os logs da aplicação devem ser vistos através do kibana(deve estar deployado no k8s).
   
6) Crie um programa(Python3 ou Go) que liste as EC2 em uma conta AWS.

Obs:. será um bonus se sua infra for feita via Terraform(VPC,SUBNET,SG etc) e k8s utilizando EKS, sua solução deve ser entregue em um repositório no GitHub com uma breve explicação de como executar e também funcional(será testada!!!).

Envie o resultado (seu repo) da prova para daniel.faria@tempest.com.br

