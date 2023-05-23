var express = require("express")
var  mysqlConnection = require('../config/connection');
const router = express.Router();
const bcrypt = require('bcrypt')




router.post('/register', (req, res) => {
    console.log(req.body);
    const {name,surname,email,password,passwordConfirm} = req.body;

    mysqlConnection.query('SELECT email FROM secondaryadmin where email = ?', [email], async (error, results)=>{
        if(error){
            console.log(error)
        }
         if(results.length > 0){
            res.json({
                success: 1,
                message: "email already exit"
            })
   
        }else if(password !== passwordConfirm){
            res.json({
                success: 1,
                message: "password does not match"
            })
        }else{
        let hashedPassword = await bcrypt.hash(password, 8);
    
        mysqlConnection.query('INSERT INTO secondaryadmin SET ?',{name: name,surname :surname,email: email,password: hashedPassword},(error, results) =>{
            if(error){
                console.log(error)
            }else{
                res.json({
                    success: 1,
                    message: "successfully registerd"
                })
                console.log(results);
        }   
     });
    }
    })  
})

router.post('/login', (req, res) => {
    //console.log(req.body);

    const {email,password} = req.body;
   
    mysqlConnection.query('SELECT * FROM secondaryadmin where email = ?', [email],(error, results)=>{
     if(error){
         console.log(error)
     }
      if(results.length > 0){
        bcrypt.compare(password, results[0].password, (error, response) =>{
            console.log(results)
            if(error){
                res.json({
                    success: false,
                    message: "error compering"
                })
            }
            if(response){
                res.json({
                    success: true,results,
                    message: "password match"
                })
            }else{
                res.json({
                    success: false,
                    message: "password does not match wrong"
                })
            }
        })
     }else{
        res.json({
            success: false,
            message: "email does not exist"
        }) 
     }
 })
})


module.exports = router;
