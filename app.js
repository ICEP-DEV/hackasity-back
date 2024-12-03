const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const Connection = require('./config/config')

const app = express();
app.use(cors());
app.use(express.json());
app.use(bodyParser.json()); 

app.use(bodyParser.urlencoded({ extended: false }));
const port = 3001

app.use('/api', require('./routes/hackersity'));

app.use('/', (req, res) =>{
    res.send('Endpoint')
});


app.listen(port, () => {
    console.log('Server started at port ' + port)
})
