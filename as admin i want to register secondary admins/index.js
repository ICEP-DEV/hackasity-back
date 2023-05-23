var express = require("express")
var  mysqlConnection = require('./config/connection');
var mysql =require('mysql')
var app=express()
app.use(express.json())
var cors = require('cors')
app.use(cors())


const secondaryAdmin= require('./routes/secondary_admin');
const router = require("./routes/secondary_admin");
app.use('/secondary/admin',secondaryAdmin)



app.listen(3000, (err) =>{
    if (err){
        console.log(err);
    }else{
        console.log('Express server is runnig at port no : 3000');
    }
})






/* regist judge{
    "name" : "andries",
    "surname" : "mathenjwafam",
    "email" : "216840046@tut4life.ac.za",
    "password" : "123",
    "passwordConfirm" : "123"
}*/
/*login judge{
    "email" : "216840046@tut4life.ac.za",
     "password" : "123"
}*/