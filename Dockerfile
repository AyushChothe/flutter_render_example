FROM instrumentisto/flutter:latest

WORKDIR /app

COPY . .

RUN flutter doctor -v
RUN flutter build web

WORKDIR /app/build/web

CMD python3 -m http.server $PORT