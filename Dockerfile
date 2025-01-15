FROM ubuntu:latest

EXPOSE 8000

#salvar tudo nma pasta app
WORKDIR /app

ENV HOST=localhost PORT=5432

ENV USER=root PASSWORD=root DBNAME=root

#copiar o arquivo main, que tem o compilado de todo o projeto para o container main'
COPY ./main main 

CMD [ "./main" ]

# na raiz do projeto, use o comando: go build main.go   para execurar e gerar o executavel mais.go
# deposi, docker build -t cli_go:v1.0 .  e depois docker image para ver a imagem

