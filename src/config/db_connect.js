const { Pool, Client } = require('pg');
const { Cripto, Desencript } = require('./cripto.lib.js'); 

// indicializacion de las clases
let desencript = new Desencript();

const pool = new Pool({
        user: 'postgres',
        host: 'localhost',
        database: 'codecamp',
        password: '',
        port: 
    });

module.exports = pool;