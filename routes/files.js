var express = require("express")
const router = express.Router();
const multer = require('multer')
const path = require('path');
var mysql =require('mysql')
var  mysqlConnection = require('../config/connection');
var fs = require ("fs");
const bcrypt = require('bcrypt')

 
//admin registration
router.post('/admin/register', (req, res) => {
    //console.log(req.body);
    const {name,surname,email,Password,passwordConfirm} = req.body;

    mysqlConnection.query('SELECT email FROM admin where email = ?', [email], async (error, results)=>{
        if(error){
            console.log(error)
        }
         if(results.length > 0){
            return res.json({
                success: false,
                message: "email already exit"
            })
   
        }else if(Password !== passwordConfirm){
            return res.json({
                success: false,
                message: "password does not match"
            })
        }else{
        let hashedPassword = await bcrypt.hash(Password, 8);
    
        mysqlConnection.query('INSERT INTO admin SET ?',{name: name,surname :surname,email: email,Password: hashedPassword},(error, results) =>{
            if(error){
                console.log(error)
            }else{
                return res.json({
                    success: true,
                    message: "successfully registerd"
                })
                console.log(results);
        }   
     });
    }
    })  
})
//Admin login
router.post('/admin/login', (req, res) => {
    const { email, Password } = req.body;
  
    mysqlConnection.query('SELECT * FROM admin where email = ?', [email], (error, results) => {
      if (error) {
        console.log(error);
      }
  
      if (results.length > 0) {
        //console.log(results[0])
        bcrypt.compare(Password, results[0].Password, (error, response) => {
          if (error) {
            return res.json({
              success: false,
              message: "error comparing"
            });
          }
  
          if (response) {
            return res.json({
              success: true,
              results,
              message: "password match"
            });
          } else {
            return res.json({
              success: false,
              message: "password does not match"
            });
          }
        });
      } else {
        return res.json({
          success: false,
          message: "email does not exist"
        });
      }
    });
  });
  
//judge registration
router.post('/judge/registration', (req, res) => {
   // console.log(req.body);
    const {Judge_name,Judge_surname,email,company_name,password,passwordConfirm} = req.body;

    mysqlConnection.query('SELECT email FROM  judge where email = ?', [email], async (error, results)=>{
        if(error){
            console.log(error)
        }
         if(results.length > 0){
            res.json({
                success: false,
                message: "email already exit"
            })
   
        }else if(password !== passwordConfirm){
            res.json({
                success: false,
                message: "password does not match"
            })
        }else{
        let hashedPassword = await bcrypt.hash(password, 8);
    
        mysqlConnection.query('INSERT INTO judge SET ?',{Judge_name: Judge_name,Judge_surname :Judge_surname, email: email,company_name: company_name, password: hashedPassword},(error, results) =>{
            if(error){
                console.log(error)
            }else{
                res.json({
                    success: true,results,
                    message: "successfully registerd"
                })
                console.log(results);
        }   
     });
    }
    })  
})
//judge login
router.post('/judge/login', (req, res) => {
    //console.log(req.body);

    const {email,password} = req.body;
   
    mysqlConnection.query('SELECT * FROM judge where email = ?', [email],(error, results)=>{
     if(error){
         console.log(error)
     }
      if(results.length > 0){
        bcrypt.compare(password, results[0].password, (error, response) =>{
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

//getting all registerd judges
router.get('/judge/judges', (req, res)=> {
    mysqlConnection.query("SELECT CONCAT(Judge_name, ' ', Judge_surname ) AS full_name FROM judge ORDER BY judge_id  desc",(error, results) =>{
        if(error){
            console.log(error)
        }else{
            res.json({
                success: true, results, 
            }) 
           }                 
            }); 
       });



//hackers  registration

router.post('/hacker/registration', (req, res) => {
    console.log(req.body);
    const {stu_no,stu_name,stu_surname,stu_email,group_name,stu_password,passwordConfirm} = req.body;

    mysqlConnection.query('SELECT stu_email FROM  hacker where stu_email = ?', [stu_email], async (error, results)=>{
        if(error){
            console.log(error)
        }
         if(results.length > 0){
            res.json({
                success: false,
                message: "email already exit"
            })
   
        }else if(stu_password !== passwordConfirm){
            res.json({
                success: false,
                message: "password does not match"
            })
        }else{
        let hashedPassword = await bcrypt.hash(stu_password , 8);
    
        mysqlConnection.query('INSERT INTO hacker SET ?',{stu_no: stu_no,stu_name :stu_name, stu_surname: stu_surname,stu_email: stu_email,group_name :group_name,stu_password: hashedPassword},(error, results) =>{
            if(error){
                console.log(error)
            }else{
                res.json({
                    success: true,results,
                    message: "successfully registerd"
                })
                //console.log(results);
        }   
     });
    }
    })  
})


//hackers login
router.post('/hacker/login', (req, res) => {
    console.log(req.body);

    const {stu_email,stu_password} = req.body;
   
    mysqlConnection.query('SELECT * FROM hacker where stu_email = ?', [stu_email],(error, results)=>{
     if(error){
         console.log(error)
     }
      if(results.length > 0){
        bcrypt.compare(stu_password, results[0].stu_password, (error, response) =>{
            if(error){
                res.json({
                    success: false,
                    message: "error compering"
                })
            }
            if(response){
                res.json({
                    success: true, results,
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

//uploading filles

const storage = multer.diskStorage({
    destination: './src/pdfs/',
    filename: (req,file,cb)=> {
       // return cb(null, '${file.filename}_${Date,now()}${path.extname(file.originalname)}')
       return cb (null, `${file.fieldname}-${Date.now()}${path.extname(file.originalname)}`)
    }
})

const upload = multer({
    storage: storage
})

router.post('/upload/files',upload.single('filename'), (req, res) => {
    const filename = req.file.filename;
    const size = req.file.size / (1024*1024);
    const currentDate = new Date();
    const date = currentDate.toLocaleDateString();
    const currentTime = new Date();
    const time = currentTime.toLocaleTimeString();
    const fileFormat = path.extname(filename);
    console.log(fileFormat);

    mysqlConnection.query('INSERT INTO file SET ?',{filename : filename, size: size,format: fileFormat ,date : date , time :time},(error, results) =>{
    if(error){
        console.log(error)
    }else{
        let pdfFK = results.insertId
        console.log(pdfFK)
         res.json({
            success: true, results,
            message: " pdf inserted ",
            
        }) 
    }
})
})

// getting all uploaded files
router.get('/files', (req, res)=> {
    mysqlConnection.query('SELECT * FROM file ORDER BY file_id desc',(error, results) =>{
        if(error){
            console.log(error)
        }else{
            res.json({
                success: true, results, 
            }) 
           }                 
            }); 
       });

       //getting one file

       router.get('/files/:id', (req, res) => {
        mysqlConnection.query('SELECT * FROM file WHERE file_id = ?', [req.params.id], (err, rows, fields) => {
            if (!err)
                res.send(rows);
            else
                console.log(err);
        })
    });

    //assigning points to team

    router.post('/team/points', (req,res) => {
        const {group_name,points,isPublished = false} = req.body;
        mysqlConnection.query("insert into team set ?",{group_name: group_name,points: points,isPublished: isPublished},(error, results) =>{
            if(error){
                mysqlConnectionsole.log(error);
            }else{
                res.json({
                    success: true, results, 
                }) 
            }
        })
    })

    //all teams with their points
    router.get('/team', (req, res)=> {
        mysqlConnection.query('SELECT group_name,sum(points) as total from team group by group_name',(error, results) =>{
            if(error){
                console.log(error)
            }else{
                res.json({
                    success: true, results, 
                }) 
               }                 
                }); 
           });
    
    //publishing resulits

    router.get('/publishing',(req,res)=>{
        mysqlConnection.query('SELECT group_name,isPublished,sum(points) as total from team group by group_name HAVING sum(points)and isPublished=false ORDER BY total DESC',(err,results,fields)=>{
            if(!err)
            res.json({
                success: true, results, 
            }) 
            //res.send(rows);
           
            else
            console.log(err);
        })
    })
    router.put('/publishing/update',(req,res)=>{
        mysqlConnection.query('UPDATE team SET isPublished = true WHERE isPublished = false',(err,results,fields)=>{
            if(!err)
            res.json({
                success: true, results, 
            }) 
            //res.send(rows);
           
            else
            console.log(err);
        })
    })
    router.put('/publishing/update/change',(req,res)=>{
        mysqlConnection.query('UPDATE team SET isPublished = false WHERE isPublished = true',(err,results,fields)=>{
            if(!err)
            res.json({
                success: true, results, 
            }) 
            //res.send(rows);
           
            else
            console.log(err);
        })
    })
    

  
    //updating to true
   /* router.put('/publishing/updating',(req,res)=>{
        mysqlConnection.query("select isPublished from team",(err,results,fields)=>{
            console.log(results)
            if(results.isPublished == false){
                mysqlConnection.query('UPDATE team SET isPublished = true WHERE isPublished = false',(err,results,fields)=>{
                    if(!err)
                    res.json({
                        success: true, results, 
                    }) 
                    //res.send(rows);
                   
                    else
                    console.log(err);
                })
            }else if(results.isPublished == true){
                mysqlConnection.query('UPDATE team SET isPublished = false WHERE isPublished = false',(err,results,fields)=>{
                    if(!err)
                    res.json({
                        success: true, results, 
                    }) 
                    //res.send(rows);
                   
                    else
                    console.log(err);
                })
            }
        })
      
    })

    */
    
  // assigning judge slots

router.post('/judge/slot', (req,res) => {
    const {slot_id,Judge_id,Judge_name,start_time,length,end_time,date} = req.body;

    mysqlConnection.query("insert into judgeslot set ?",{Judge_id:Judge_id,Judge_name:Judge_name,start_time:start_time,length:length,end_time:end_time,date:date},(error, results) =>{
        if(error){
            console.log(error);
        }else{
            res.json({
                success: true, results, 
                message: " judge time slot Successfully inserted"
            }) 
        }
    })
})

//all assigned slotes for judges

router.get('/judge/slot', (req, res)=> {
    mysqlConnection.query('SELECT * FROM judgeslot ORDER BY slot_id desc',(error, results) =>{
        if(error){
            console.log(error)
        }else{
            res.json({
                success: true, results, 
            }) 
           }                 
            }); 
       });


//hacker slotes

router.post('/hacker/slot', (req,res) => {
    const {slot_id,group_name,start_time,length,end_time,date} = req.body;

    mysqlConnection.query("insert into hackerslot set ?",{group_name:group_name,start_time:start_time,length:length,end_time:end_time,date:date},(error, results) =>{
        if(error){
            console.log(error);
        }else{
            res.json({
                success: true, results, 
                message: " hacker time slot Successfully inserted"
            }) 
        }
    })
})

//all assigned slotes for hacker

router.get('/hacker/slot', (req, res)=> {
    mysqlConnection.query('SELECT * FROM hackerslot ORDER BY slot_id desc',(error, results) =>{
        if(error){
            console.log(error)
        }else{
            res.json({
                success: true, results, 
            }) 
           }                 
            }); 
       });


    

module.exports = router;



