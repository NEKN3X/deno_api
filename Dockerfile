FROM hayd/deno:alpine

WORKDIR /app

USER deno

COPY ./src .
RUN deno cache app.ts

CMD ["run", "--allow-net", "--allow-read", "app.ts"]
