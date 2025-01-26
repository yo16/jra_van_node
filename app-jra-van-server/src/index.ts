//const express = require('express');
import express from "express";
import type { Express, Request, Response } from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';

import { loadData } from "./loadData.js";
import { initializeDb } from "./initializeDb.js";
import { createDDLFromRecordFormat } from "./defs/ddl/createDDLFromRecordFormat.js";

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
    const ret = loadData("RACE", "19860101000000");
    if ("error" in ret) {
        console.log("EEEEEEEEEEEEEEE");
        console.log({ret});
        res.status(500).json(ret);
        return;
    }
    
    res.status(200).json(ret);
});

app.get('/initializeDb', async (req, res) => {
    const ret = await initializeDb();
    res.status(200).json({OK: true});
    return;
});

app.get('/createDDLFromRecordFormat', async (req, res) => {
    console.log("createDDLFromRecordFormat---------");
    const ret = await createDDLFromRecordFormat();
    res.status(200).json({OK: ret});
    return;
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});
