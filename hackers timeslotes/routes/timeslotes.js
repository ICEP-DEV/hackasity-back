var express = require("express")
var  mysqlConnection = require('../config/connection');
const router = express.Router();



router.post('/', (req, res) => {
    const {hackerid,adminid,startime,length,endtime,date} = req.body;

    mysqlConnection.query('INSERT INTO  timeslote SET ?',{hackerid :hackerid, adminid:adminid,startime: startime, length: length,endtime: endtime, date: date},(error, results) =>{
    if(error){
        console.log(error)
    }else{
        res.json({
            success: 1,
            message: " hackers time slotes allocated"
        })
    }
})
})

module.exports = router;
