var express = require("express")
var cors = require("cors")
var  mysqlConnection = require('./config/connection');
var app=express()
app.use(express.json())
const bcrypt = require('bcrypt')
app.use(cors());
//routes steup
const filesRouter = require('./routes/files')
app.use('/',filesRouter);



app.listen(3000, (err) =>{
    if (err){
        console.log(err);
    }else{
        console.log('Express server is runnig at port no : 3000');
    }
})




/*admin reg
{
    "name" : "andries",
    "surname" : "mathenjwa",
    "email": "216840046@tut4life.ac.za",
    "password": "123",
    "passwordConfirm": "123" 
  }
  
  juge reg
{
  "judge_name" : "Fihli",
  "judge_surname" : "Mthimkhulu",
  "email" : "fihli@gmail.com",
  "company_name": "SARS",
  "password" : "123",
  "passwordConfirm" : "123",
  "Admin_id":1
}

hack reg
{
 "stu_no" : "216840046",
 "stu_name" : "Sibusiso",
 "stu_surname" : "Gumede",
 "email" : "216840046@tut.ac.za",
 "group_name" : "thobela",
 "stu_password" : "123",
 "passwordConfirm" : "123",
 "Admin_id":1
}

hacker time slot
{
    "group_name":"TECHS",
    "start_time":"09h00",
    "length": "1hour",
    "end_time":"10h00",
    "date" : "03/06/2023",
    "Admin_id":1 
}

judge slot
{
    "judge_id": 8,
    "judge_name": "Odirile Morolo",
    "start_time": "10h00",
    "length": "3 hours",
    "end_time":"13h00",
    "date":"03/06/2023",
    "Admin_id":1
}
{
    "group_id":4,
    "group_name":"thobela",
    "points":64,
    "judge_id":10
}
  */

