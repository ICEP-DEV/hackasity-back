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

//publishing and sorting points 

app.get('/publishing',(req,res)=>{
    con.query('SELECT group_name,sum(points) as total from team group by group_name HAVING sum(points) ORDER BY total DESC',(err,rows,fields)=>{
        if(!err)
        console.log(rows);
        //res.send(rows);
       
        else
        console.log(err);
    })
})




app.listen(2211,(err)=>{
    if(err){
        console.log(err)
    }else{
        console.log("Server is running port 2211")
    }

})

/*
{
    "group_name":"ICEP",
    "points": 2
}

*/