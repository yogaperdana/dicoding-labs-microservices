# Proyek Pertama: Deploy Aplikasi Item App dengan Docker Compose

Repository ini digunakan untuk kebutuhan kelas [Belajar Membangun Arsitektur Microservices](https://www.dicoding.com/academies/433) di platform [Dicoding](https://dicoding.com).

Pada dasarnya, _starter project_ ini adalah aplikasi web sederhana yang memungkinkan pengguna untuk memasukkan _item_ (teks), menyimpannya ke _database_, dan menampilkannya saat itu juga.

Aplikasi ini terdiri dari 2 bagian:
- `item-app`: Bertugas untuk menerima dan mengolah _request_ terkait _static asset_ seperti berkas HTML, CSS, dan JavaScript. Bagian ini menggunakan Node.js dan Express.
- `item-db`: Bertugas untuk menerima dan mengolah pembacaan dan penulisan data dari/ke _database_. Bagian ini menggunakan MongoDB.
