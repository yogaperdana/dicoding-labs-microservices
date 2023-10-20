# menggunakan base image Node.js versi 20
FROM node:20

# menentukan working directory container pada /app
WORKDIR /app

# menyalin source code ke working directory di container
COPY . .

# menginstal dependencies
RUN npm install

# mengekspos port yang digunakan aplikasi yaitu 3001
EXPOSE 3000

# menjalankan server saat container diluncurkan
CMD ["npm", "start"]