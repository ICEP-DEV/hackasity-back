var express = require("express")
var mysql = require("mysql")
var app = express()
app.use(express.json())


const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database:'hackersity',
    password:''
})


con.connect((err)=>{
    if(err){
        console.log(err)
    }else
    {
        console.log("Connected!!")
    }
})

// judge slots
app.post('/judgeslot', (req,res) => {
    const {slot_id,Judge_id,Judge_name,start_time,length,end_time,date} = req.body;
    con.query("insert into judgeslot set ?",{Judge_id:Judge_id,Judge_name:Judge_name,start_time:start_time,length:length,end_time:end_time,date:date},(error, results) =>{
        if(error){
            console.log(error);
        }else{
            console.log("POSTED!!");
        }
    })
})
app.post('/hackerslot', (req,res) => {
    const {slot_id,group_name,start_time,length,end_time,date} = req.body;
    con.query("insert into hackerslot set ?",{group_name:group_name,start_time:start_time,length:length,end_time:end_time,date:date},(error, results) =>{
        if(error){
            console.log(error);
        }else{
            console.log("POSTED!!");
        }
    })
})
/*{
    "group_name":"SIBUSISO",
    "start_time":"09h00",
    "length": "1hour",
    "end_time":"10h00"

    
slot_id	Judge_id	Judge_name	start_time	length	end_time	date	
{
    "Judge_id": 4,
    "Judge_name": "Sibusiso Radebe",
    "start_time": "10h00",
    "length": "3 hours",
    "end_time":"13h00",
    "date":"03/06/2023"
}
}
*/
app.listen(2111,(err)=>{
    if(err){
        console.log(err)
    }else{
        console.log("Server is running port 2111")
    }

})
