FROM instrumentisto/flutter:latest

WORKDIR /app

COPY . .

RUN flutter doctor -v
RUN flutter build web

WORKDIR /app/build/web

EXPOSE 80

CMD python3 -m http.server $PORT