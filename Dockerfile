# menggunakan base image Node.js versi 14 (Alpine Linux)
FROM node:14-alpine

# menentukan working directory container pada /app
WORKDIR /app

# menyalin source code ke working directory di container
COPY . .

# menentukan aplikasi berjalan dalam production mode 
# dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang digunakan aplikasi yaitu 8080
EXPOSE 8080

# menjalankan server saat container diluncurkan
CMD ["npm", "start"]