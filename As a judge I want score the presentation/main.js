var express = require("express")
var mysql = require("mysql")
var app = express()
app.use(express.json())


const con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database:'scoring_points',
    password:''
})



con.connect((error)=>{
    if(error){
        console.log(error)
    }else
    {
        console.log("Connected!!")
    }
})

app.post('/points', (req,res) => {
    const {groupName,points} = req.body;
    con.query("insert into team set ?",{groupName: groupName,points: points},(error, results) =>{
        if(error){
            console.log(error);
        }else{
            console.log("POSTED!!");
        }
    })
})

/*app.post('/points', (req,res) => {
    const {judge_id,} = req.body;
    con.query("insert into Team set ?",{group_name: group_name,points: points},(error, results) =>{
        if(err){
            console.log(err);
        }else{
            console.log("POSTED!!");
        }
    })
})

app.post('/points', (req, res) => {
    const {group_name,points} = req.body;

    con.query('INSERT INTO team SET ?',{groupName: group_name,points: points},(error, results) =>{
    if(error){
        console.log(error)
    }else{
        res.json({
            success: 1,
            message: "points inserted"
        })
    }
})
})



/*app.get('/',(req,res)=>{
    con.query('SELECT * from points',(err,rows,fields)=>{
        if(!err)
        console.log(rows);
        //res.send(rows);
       
        else
        console.log(err);
    })
})

*/


app.listen(2011,(error)=>{
    if(error){
        console.log(error)
    }else{
        console.log("Server is running port 2011")
    }

})

/*

{
    "groupName":"THOBELA",
    "points":45
}

*/