var express = require("express")
const router = express.Router();
var  mysqlConnection = require('../config/connection');

router.get("/test", (req, res)=>{
    res.json('testing')
})



module.exports = router;