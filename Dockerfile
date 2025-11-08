# Imagem base oficial do Node
FROM node:20-alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia apenas os arquivos de dependências
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Expõe a porta 3000 (Next.js)
EXPOSE 3000

# Comando padrão para rodar o servidor de desenvolvimento
CMD ["npm", "run", "dev"]
