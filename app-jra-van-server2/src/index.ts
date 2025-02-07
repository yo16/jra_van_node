/*
    expressのメイン処理
*/

import express from "express";
import path from "path";
import { fileURLToPath } from "url";

import { Worker } from "worker_threads";

const app = express();
const PORT = 3000;

// ミドルウェアの設定
app.use(express.json());
app.use(express.urlencoded({ extended: true }));



app.get("/", (req, res) => {
    res.send("Hello, Express with TypeScript (ESM)!");
});



// 読み込み状態を管理するフラグ
let isLoading = false;
// JVデータの読み込み
app.get("/loadJVData", async(req, res) => {
    console.log(`Request received. isLoading: ${isLoading}`);

    // 既に読み込み中の場合
    if (isLoading) {
        console.log('Request rejected - already loading');
        res.status(409).json({ 
            message: "JVデータの読み込みが既に実行中です",
            status: "loading"
        });
        return;
    }

    // 読み込み開始
    console.log("読み込みを開始します");
    isLoading = true;

    // レスポンスを返す
    res.json({
        message: "JVデータの読み込みを開始しました",
        status: "started"
    });

    // WorkerスレッドでJVデータの読み込みを実行
    const __dirname = path.dirname(fileURLToPath(import.meta.url));
    const worker = new Worker(path.join(__dirname, "./worker.js"));
    worker.on("message", (message) => {
        if (message.type === "complete") {
            console.log("JVデータの読み込みが完了しました");
            isLoading = false;
        } else if (message.type === "error") {
            console.error("JVデータの読み込みでエラーが発生しました:", message.error);
            isLoading = false;
        }
    });
    worker.on("error", (error) => {
        console.error("Workerエラー:", error);
        isLoading = false;
    });
    worker.postMessage({
        type: "loadJVData",
        date: "20250101"
    });
});



app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});


