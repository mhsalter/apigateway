const express = require('express');
const app = express()
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const port = 3000;

app.use(express.json());
app.use(express.urlencoded({extended: true,}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Koneksi ke database MySQL
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'keuangan_sample'
});

db.connect((err) => {
    if(err) throw err;
    console.log('Terhubung ke database');
});

app.get("/", (req, res) => {
    res.json({ message: "OK"});
});

app.post('/api', (req, res) => {
    let jns_pembayaran = req.body.jns_pembayaran;
    let id_bank = req.body.id_bank;
    let keyword = req.body.keyword;
    let tgl_transaksi = req.body.tgl_transaksi;
    let sts_pembukuan = req.body.sts_pembukuan;

    let sql = `SELECT * FROM data_transaksi WHERE jns_pembayaran = ${jns_pembayaran} AND id_bank = ${id_bank} AND customer_name LIKE '%${keyword}%' AND payment_date = '${tgl_transaksi}' AND sts_pembukuan = ${sts_pembukuan}`;
    
    db.query(sql, (err, result) => {
        if(err) throw err;
        res.send(result);
    });
});


app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});