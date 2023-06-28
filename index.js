var express = require("express")
var  mysqlConnection = require('./config/connection');
var app=express()
app.use(express.json())
const bcrypt = require('bcrypt')
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
    "Password": "123",
    "passwordConfirm": "123"
    
  }
  
  juge reg
  {
  "Judge_name" : "judge",
  "Judge_surname" : "judy",
  "email" : "judy@gmail.com",
  "company_name": "ICEP",
  "password" : "1234",
  "passwordConfirm" : "1234"
}

hack reg
{
 "stu_no" : "216840046",
 "stu_name" : "sbusiso",
 "stu_surname" : "radebe",
 "stu_email" : "216840046@tut.ac.za",
 "group_name" : "thobela",
 "stu_password" : "12345",
 "passwordConfirm" : "12345"
}

hacker time slot
{
    "group_name":"THEMBA",
    "start_time":"09h00",
    "length": "1hour",
    "end_time":"10h00",
    "date" : "03/06/2023"
  
}

judge slot
{
    "Judge_id": 10,
    "Judge_name": "Sibusiso Madiba",
    "start_time": "10h00",
    "length": "3 hours",
    "end_time":"13h00",
    "date":"03/06/2023"
}
{
    "group_name":"MPHO",
    "points":30,
    "isPublished":false
}
  */

