//const express = require('express');
import express from "express";
import type { Express, Request, Response } from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';

import { loadData } from "./loadData";

const app = express();
const port = process.env.PORT || 3001;
const cors_url = process.env.CORS || "http://localhost:5173";
const isDevelopMode = (process.env.mode === "development");

if (isDevelopMode) {
    console.log(`port: ${port}`);
    console.log(`cors_url: ${cors_url}`);
}

app.use(
    cors({
        origin: cors_url,
        credentials: true,
        optionsSuccessStatus: 200,
    })
);
app.use(
    bodyParser.urlencoded({extended: true})
);
app.use(
    bodyParser.json()
);



// ----------------------------

app.get('/', (req, res) => {
    const ret = loadData();
    if ("error" in ret) {
        res.status(500).json(ret);
    }
    
    res.json(ret);
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});
