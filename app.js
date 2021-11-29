const http = require('http');
const express=require('express');
const app=express();
const User=require('./models/user');
const sequelize=require('./connection/db');
const bodyParser=require('body-parser');

sequelize.sync();
//root directory

app.use(bodyParser.urlencoded({ limit: '50mb', extended: false }));
app.use(bodyParser.json({ limit: '50mb' }));
const userRoute=require('./router/myuser');

app.use('/',userRoute)
app.get('/',async(req,res)=>{
    const user=await User.findAll();
    console.log(user)
    res.status(200).json({"status":true,"message":user})
})




app.listen(5000,()=>{
    console.log('server is running')
})