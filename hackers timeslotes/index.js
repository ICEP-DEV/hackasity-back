var express = require("express")
var  mysqlConnection = require('./config/connection');
var mysql =require('mysql')
var app=express()
app.use(express.json())
const bcrypt = require('bcrypt')

const TimeslotesRouter = require('./routes/timeslotes');
const router = require("./routes/timeslotes");
app.use('/hackers',TimeslotesRouter)



app.listen(3000, (err) =>{
    if (err){
        console.log(err);
    }else{
        console.log('Express server is runnig at port no : 3000');
    }
})




/* slotes to judges{
   "hackerid" : "7",
    "adminid" : "3",
    "startime" : "12h:00",
    "length" : "3hrs",
    "endtime" : "15h00",
    "date" : "2023-04-06"
}*/

