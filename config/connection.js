var mysql =  require("mysql");

//Create Connections
var mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'hackersity', 
})

//connect to database
mysqlConnection.connect((err) => {
    if (err){
        console.log(err);
    }else{
        console.log('connection succeded');
    }
})


module.exports =mysqlConnection ;