var express = require("express")
var cors = require("cors")
const uuid = require('uuid');
var  mysqlConnection = require('./config/connection');
var app=express()
//socket io
const server = require('http').Server(app);
const io = require('socket.io')(server);
app.use(express.json())
const bcrypt = require('bcrypt')
//routes steup
app.use(cors())
const filesRouter = require('./routes/files')
app.use('/',filesRouter);



io.on('connection', socket => {
    console.log(`Socket ${socket.id} connected`);
  
    // Join a room
    socket.on('join', roomId => {
      socket.join(roomId);
      console.log(`Socket ${socket.id} joined room ${roomId}`);
    });
  
    // Send a message to a room
    socket.on('message', ({ roomId, message }) => {
      io.to(roomId).emit('message', message);
    });
  
    socket.on('disconnect', () => {
      console.log(`Socket ${socket.id} disconnected`);
    });
  });


app.listen(3000, (err) =>{
    if (err){
        console.log(err);
    }else{
        console.log('Express server is runnig at port no : 3000');
    }
})




/*admin reg
{
    "name" : "jessica",
    "surname" : "thobela",
    "email": "jessica@tut.ac.za",
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
    "group_name":"SIBUSISO",
    "start_time":"09h00",
    "length": "1hour",
    "end_time":"10h00",
    "date" : "03/06/2023"
  
}

judge slot
{
    "Judge_id": 4,
    "Judge_name": "Sibusiso Radebe",
    "start_time": "10h00",
    "length": "3 hours",
    "end_time":"13h00",
    "date":"03/06/2023"
}
  */

