import './tracer';
import express from 'express';

const app = express();

app.get("/", (req, res) => {
  res.send("Hello Express app!");
});

app.get("/trigger-error", (req, res) => {
  function throwError() {
    actuallyThrowError()
  }
  function actuallyThrowError() {
    throw Error("error thrown");
  }

  res.send(`${throwError()}`);
});

app.listen(8080, () => {
  console.log("server started");
});
