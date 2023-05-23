var express = require("express")
const router = express.Router();
const multer = require('multer')
const path = require('path');
var mysql =require('mysql')
var  mysqlConnection = require('../config/connection');
var fs = require ("fs");

 

const storage = multer.diskStorage({
    destination: './src/pdfs/',
    filename: (req,file,cb)=> {
       // return cb(null, '${file.filename}_${Date,now()}${path.extname(file.originalname)}')
       return cb (null, `${file.fieldname}-${Date.now()}${path.extname(file.originalname)}`)
    }
})

const upload = multer({
    storage: storage
})

router.post('/files',upload.single('filename'), (req, res) => {
    const filename = req.file.filename;
    const size = req.file.size / (1024*1024);
    const currentDate = new Date();
    const date = currentDate.toLocaleDateString();
    const currentTime = new Date();
    const time = currentTime.toLocaleTimeString();
    const fileFormat = path.extname(filename);
    console.log(fileFormat);

    mysqlConnection.query('INSERT INTO file SET ?',{filename : filename, size: size,format: fileFormat ,date : date , time :time},(error, results) =>{
    if(error){
        console.log(error)
    }else{
        let pdfFK = results.insertId
        console.log(pdfFK)
         res.json({
            success: true, results,
            message: " pdf inserted ",
            
        }) 
    }
})
})


router.get('/files', (req, res)=> {
    mysqlConnection.query('SELECT * FROM file ORDER BY fieldid desc',(error, results) =>{
        if(error){
            console.log(error)
        }else{
            res.json({
                success: true, results, 
            }) 
           }                 
            }); 
       });

       router.get('/files/:id', (req, res) => {
        mysqlConnection.query('SELECT * FROM file WHERE fieldid = ?', [req.params.id], (err, rows, fields) => {
            if (!err)
                res.send(rows);
            else
                console.log(err);
        })
    });
    

module.exports = router;