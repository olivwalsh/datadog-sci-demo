import './tracer';
import express from 'express';

const app = express();

app.get("/", (req, res) => {
  console.log('helloooooooooo');
  res.send("Hello Express app!");
});

app.get("/trigger-error", (req, res) => {
  console.log('helloooooooooo');
  console.log('DD_GIT_COMMIT_SHA:', process.env.DD_GIT_COMMIT_SHA);
  console.log('DD_GIT_REPOSITORY_URL:', process.env.DD_GIT_REPOSITORY_URL);
  function throwError() {
    actuallyThrowError()
  }
  function actuallyThrowError() {
    throw Error("hello error thrown");
  }

  res.send(`hello ${throwError()}`);
});

app.listen(8080, () => {
  console.log("server started aaaaaaaa");
});
