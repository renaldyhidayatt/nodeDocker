const express = require("express");

const app = express();

const path = __dirname + "/views/";
const PORT = process.env.PORT || 3000;

app.use(express.static(path));

app.use("/", function (req, res) {
  res.sendFile(path + "index.html");
});

app.use("/sharks", function (req, res) {
  res.sendFile(path + "sharks.html");
});

app.listen(PORT, () => {
  console.log("Server is running on port " + PORT);
});
