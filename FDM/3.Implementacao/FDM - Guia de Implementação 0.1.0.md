# Guia de Implementação

### Configuração Inicial

1. Baixe a API do projeto do repositório [FossaDasMarianas-Code](https://github.com/splistcs/FossaDasMarianas-Code/tree/main)
2. Baixe o JSF do projeto do repositório [FossaDasMarianas-Front](https://github.com/splistcs/FossaDasMarianas-Front/tree/main)
3. E necessário possuir o Apache Tomcat 10.1, ele pode ser instalado pelo site do [ApacheTomcat](https://tomcat.apache.org/download-10.cgi)

## FDM API

1. Acesse: FossaDasMarianas-Code/fdmapi/
2. Execute:
```terminal
mvn spring-boot:run

```

3. Veja pelo navegador swagger-ui/index.html como efetuar requisições.


## FDM JSF

1. Acesse: FossaDasMarianas-Front/fdmfront/
2. Execute:
```terminal
mvn package
```

3. Acesse o FossaDasMarianas-Front/fdmfront/target/
4. Copie o arquivo de extensão .war (Deve ter o nome "fdmfront.war")
5. Acesse o local onde foi instalado seu Apache Tomcat 10.1 e cole o arquivo em Apache Software Foundation\Tomcat 10.1\webapps.
6. Acesse Apache Software Foundation\Tomcat 10.1\bin e execute "startup.bat"
7. No navegador, acesse localhost:8081/fdmfront/index.xhtml