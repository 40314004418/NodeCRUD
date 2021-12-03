const http = require('http');
const express=require('express');
const app=express();
const User=require('./models/user');
const sequelize=require('./connection/db');
const bodyParser=require('body-parser');

sequelize.sync();
//root directory
//setting view engine
var swig = require('swig');
var path = require('path');
app.engine('html',swig.renderFile);
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'html')
// ---------------------------------------
app.use(bodyParser.urlencoded({ limit: '50mb', extended: false }));
app.use(bodyParser.json({ limit: '50mb' }));
const userRoute=require('./router/myuser');
const commonRoute=require('./router/common');
// ---------------------------------------
app.use('/user',userRoute);
app.use('/common',commonRoute);


app.get('/',async(req,res)=>{
   
    const user=await User.findAll();         
        console.log(user);
        res.render('index',{ title: 'User Data',data:user });
   
});




app.listen(5000,()=>{
    console.log('server is running')
})