import express from "express";

import { loadJVDataFromJVServer } from "./loadJVDataFromJVServer/loadJVDataMain.js";



const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
    res.send("Hello, Express with TypeScript (ESM)!");
});

app.get("/loadJVData", (req, res) => {
    const result = loadJVDataFromJVServer("20250101");
    res.send(result);
});

app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});


