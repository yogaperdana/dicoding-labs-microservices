#!/bin/sh

# mendefinisikan variabel yang dipakai untuk nama image, versi image, dan nama akun GitHub
image_name="karsajobs-ui"
image_version="latest"
github_account="yogaperdana"
package_name="$github_account/$image_name:$image_version"

# membuat image di Docker dengan nama sesuai kriteria
echo -e "Building a new Docker image:"
docker build . -t $package_name

# mengubah nama image agar sesuai dengan format GitHub Container Registry
echo -e "\nGiving a new tag name to the Docker image to match the format of GitHub Container Registry:"
docker tag $package_name ghcr.io/$package_name

# melihat daftar image di lokal
echo -e "\nViewing the list of Docker images:"
docker images

# log masuk ke GitHub Container Registry
echo -e "\nLogin into GitHub Container Registry:"
docker login ghcr.io -u $github_account -p $GHCR_PAT_TOKEN

# mengunggah image ke GitHub Container Registry
echo -e "\nPublishing image to GitHub Container Registry:"
docker push ghcr.io/$package_name

echo -e "\nDone."