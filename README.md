# Sample.LongLived.Process

Este é um exemplo demonstrando como construid aplicações estilo `long lived` com .net core.
A ideia é trazer um cenário onde qualquer pessoa dev, que já tenha utilizado asp.net core, tenha facilidade em entender e continuar mantendo. 
Com isso, tornando o exemplo bom o suficiente para se utilizar dentro de aplicações do tipo microsserviços.

## Requerimentos
- Docker

## Como utilizar
```sh
# para criar a imagem
docker build -t . sample.longlived

# para rodar um container em modo daemon
docker run --name sample -d sample.longlived

# após um tempo rodando, pare o container
docker stop sample

# agora basta visualizar os logs
docker logs sample
```
