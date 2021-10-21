const express = require('express');
const Router=express.Router();

Router.get('/', (req, res)=>{
    res.send('hellow world!');
})

module.exports = Router;