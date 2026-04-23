const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("🔥 Läuft über Caddy + Railway!");
});

app.listen(3000);
