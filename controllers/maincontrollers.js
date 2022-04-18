const express = require('express');
const app = express();
const path = require('path')
const fs = require('fs')
const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'))




const controlador = {

index: (req,res)=>{
res.render('index',{products})
},
contruir:(req,res)=>{
    res.render('construir')
    },
};
module.exports = controlador; 