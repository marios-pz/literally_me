FROM nginx:latest

COPY index.html /usr/share/nginx/html/

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget -O /usr/share/nginx/html/image.jpg "https://hips.hearstapps.com/hmg-prod/images/gettyimages-850161690.jpg"
