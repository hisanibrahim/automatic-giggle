const express = require("express");
const PORT = 41000;
const NAME = "Automatic Giggle";
const VERSION = "1.0.0";

const app = express();

app.get("/api", (req, res)=> {
    const response = {
      appName: NAME,
      appVersion: VERSION
    }
    res.status(200).send(response);
})

app.listen(PORT, "localhost", () => {
  console.log("App listening on " + PORT);
});
