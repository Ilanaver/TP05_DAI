import express from "express";
import cors from "cors";
import config from './configs/db-config.js';
import pkg from 'pg';
const { Client } = pkg;

const app = express();
const port = 3000; // El puerto 3000 (http://localhost:3000)

app.use(cors()); // Middleware de CORS.
app.use(express.json()); // Middleware para parsear y comprender JSON.


app.listen(port, () => {
console.log(`Example app listening on port ${port}`)
})
app.get('/api/province', (req, res) => { // EndPoint "/saludar"
    res.status(200).send("provinces");
})


// https://node-postgres.com/apis/client
const client = new Client(config);
await client.connect();

let sql = `SELECT * from provinces`; // `... limit 5`
let result = await client.query(sql);
await client.end();
// 'rows' es un array. rows[0] el 1er registro.

