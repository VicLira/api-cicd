# Usando a imagem oficial do Node.js
FROM node:18

# Criando o diretório da aplicação
WORKDIR /app

# Copiando os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o restante dos arquivos da aplicação
COPY . .

# Expondo a porta 3000
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "index.js"]
