const http = require('http');
const express=require('express');
const app=express();
const User=require('./models/user');
const sequelize=require('./connection/db');
const bodyParser=require('body-parser');
const ejs=require('ejs');
sequelize.sync();
//root directory
//setting view engine
var swig = require('swig');
var path = require('path');
app.engine('ejs',swig.renderFile);
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs')
// ---------------------------------------
app.use(bodyParser.urlencoded({ limit: '50mb', extended: false }));
app.use(bodyParser.json({ limit: '50mb' }));
const userRoute=require('./router/myuser');
const commonRoute=require('./router/common');
// ---------------------------------------
app.use('/user',userRoute);
app.use('/common',commonRoute);


app.get('/',async(req,res)=>
{
       const user= await User.findAll({
        order: [['id', 'DESC'] ]
    });         
        res.render('index.ejs',{ title: 'User list ',user:user });
        //console.log(JSON.stringify(user));
});




app.listen(5000,()=>{
    console.log('server is running')
})