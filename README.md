## Tutorial da Criação do Load Balancer para recursos da aplicação Front-End

### Passo 1 - Criação do diretório Docker e instalações básicas
#### Primeiro, foi necessário copiar todos os arquivos do projeto existente no Host para dentro de um diretório criado no Docker. Para isso, foram usados os seguintes comandos:
![image](https://github.com/user-attachments/assets/5be65f6b-9ce2-4e80-946b-cf67f6944f96)

![image](https://github.com/user-attachments/assets/45bb777c-b93a-46d2-86ca-1b9ee7461d4b)

#### O comando cp -r copiou todos os arquivos presentes no diretório de origem (respeitando a hierarquia de pastas e arquivos) para dentro da pasta criada (comando "mkdir") "seupet-docker".
#### Após isso, as instalações das dependências do projeto foram realizadas:
![image](https://github.com/user-attachments/assets/b16c0c6f-aef5-46d3-adf8-5edd86ce9aea)

#### Com o projeto hospedado, foi criada a pasta "build" dentro do diretório "seupet-docker". Isso se faz necessário para que os arquivos estáticos possam facilmente ser encontrados pelo Dockerfile e serem devidamente utilizados.
![image](https://github.com/user-attachments/assets/ad8c1788-3d2d-4603-8d53-f2d912274fa7)

### Passo 2 - Criação e configuração dos arquivos do "build"
#### Criação do arquivo Dockerfile.app utilizando o Nano. Os comandos usados para criar o arquivo foram: Ctrl+O + Enter (para salvar as alterações), Ctrl+X (para sair do arquivo)
#### É o arquivo utilizado para gerar os containers se baseando na imagem nginx:alpine.
![image](https://github.com/user-attachments/assets/2eea2e81-d466-41d4-acd2-66074eba1924)
![image](https://github.com/user-attachments/assets/5bb4e9f1-b123-4fce-97fe-0e7268882990)

#### Criação do arquivo nginx.conf utilizando o Nano. Os comandos usados para criar o arquivo foram: Ctrl+O + Enter (para salvar as alterações), Ctrl+X (para sair do arquivo)
#### Esse é o arquivo global Nginx (usado pelo loadbalance) que define processos de trabalho.
![image](https://github.com/user-attachments/assets/e4aa7172-8e9f-4704-8ac2-f6016674d10c)
![image](https://github.com/user-attachments/assets/da0a9c4d-d8e8-45bb-9078-a35ccd6504de)

#### Criação do arquivo default.conf utilizando o Nano. Os comandos usados para criar o arquivo foram: Ctrl+O + Enter (para salvar as alterações), Ctrl+X (para sair do arquivo)
#### Configura o load-balancer Nginx
![image](https://github.com/user-attachments/assets/7f2ac764-0ded-4e25-bd6d-9aaace5117ed)
![image](https://github.com/user-attachments/assets/90c09226-5cb4-4906-9ce5-bb2c33b0eb9b)

#### Criação do arquivo docker-compose.yml utilizando o Nano. Os comandos usados para criar o arquivo foram: Ctrl+O + Enter (para salvar as alterações), Ctrl+X (para sair do arquivo).
#### Esse arquivo é responsável por orquestrar os serviços do docker, construir os 5 containers + o loadbalance (que usa o nginx pra fazer o balanceamento), a rede compartilhada e o mapeamento de portas.
![image](https://github.com/user-attachments/assets/df4dea5a-dcb2-4b2f-8ea9-b73149f225fe)
![image](https://github.com/user-attachments/assets/51e7cd25-8932-4b13-9ae5-f8f883af12fe)
![image](https://github.com/user-attachments/assets/4a4fd367-204c-4cfc-a362-6fed27f8b6cf)

### Passo 3 - Testar sucesso da criação dos nodes e loadbalancer utilizando comandos docker compose:
![image](https://github.com/user-attachments/assets/f9a28c76-7ee4-48fe-bed3-874bd296df15)

#### Verificação dos containers em execução:
![image](https://github.com/user-attachments/assets/4c945998-e686-4451-9787-8706587ac025)

#### Visualização em localhost:8081
![image](https://github.com/user-attachments/assets/7195b445-e0b7-4c27-ac15-07314fc2b195)

### Arquivos presentes nos diretórios
![image](https://github.com/user-attachments/assets/e928a978-5f06-4cb3-a94e-f5a0af4ab6a9)
