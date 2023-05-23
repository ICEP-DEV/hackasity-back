var express = require("express")
var  mysqlConnection = require('./config/connection');
var app=express()
app.use(express.json())
const bcrypt = require('bcrypt')
//routes steup
const filesRouter = require('./routes/files')
app.use('/upload',filesRouter);



app.listen(3000, (err) =>{
    if (err){
        console.log(err);
    }else{
        console.log('Express server is runnig at port no : 3000');
    }
})




/* insert pdf http://localhost:3000/upload/files{
   "pdfname" : "andies.pdf",
}*/

