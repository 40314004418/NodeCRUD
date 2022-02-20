require('dotenv').config();
const http = require('http');
const db=require('./connection/db');
const express=require('express');
const app=express();
const cors = require('cors');
const bodyParser=require('body-parser');
const ejs=require('ejs');
const logger =require('./helper/logger');
//root directory
const port = process.env.PORT || 3000;

//setting view engine
var swig = require('swig');
var path = require('path');
app.engine('ejs',swig.renderFile);
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')
// ---------------------------------------
app.use(bodyParser.urlencoded({ limit: '50mb', extended: false }));
app.use(bodyParser.json({ limit: '50mb' }));
app.use(cors());
app.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*')
    res.header('Access-Control-Allow-Headers', 'X-Requested-With')
    res.header('Access-Control-Allow-Headers', 'Content-Type')
    next();
});

const userRoute=require('./router/myuser');
const commonRoute=require('./router/common');
const studentRoute=require('./router/student');
// ---------------------------------------
app.use('/user',userRoute);
app.use('/common',commonRoute);
app.use('/api',studentRoute);

app.get('/',async(req,res)=>
{
       const user= await db.Users.findAll({
        order: [['id', 'DESC'] ]
    });   
   console.log("hi...");
   res.end(); 
        //res.render('index.ejs',{ title: 'User list ',user:user });
        //console.log(JSON.stringify(user));
});




app.listen(port,()=>{
    console.log(`server is running on port ${port}`);
    
   logger.info("info form logger...");
   logger.error("error form logger...");
})
