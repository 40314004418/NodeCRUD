const db=require('../connection/db');
const { paramsHaveRequestBody } = require('request/lib/helpers');
const httpClient = require('../helper/http-client');
const {Op}=require('sequelize')
const User = require("../models/user"); //to access User table
const { elseif } = require('swig/lib/tags');
const { param } = require('../router/myuser');
const { get } = require('request');

async function getIp(req, res) {
    try {
        const responsedata = await httpClient.get('https://api.ipify.org?format=json');
        if (responsedata) {
            console.log(responsedata.data.ip);  
            res.status(200).send({ status: true, ip: responsedata.data.ip })
        } else {
            res.status(200).send({ status: false });
        }
    } catch (error) {
        let message = error.message;
        if (!message)
            message = error;
        res.status(500).send({ status: false, message });
    }
}

async function GetAllUserByParams(req, res) {
    try {
        const _param=req.query
        console.log(_param)
        let query;
        if(!_param.id&&!_param.email){
            query={}
        }else if(_param.id&&!_param.email){
            query={where:{id:_param.id}}
        }
        else if(_param.email&&!_param.id){
            query={where:{email:_param.email}}
        }else{
            query={where:{id:_param.id,email:_param.email}}
        }

        console.log(query)
        let allUsers =await db.Users.findAll(query);
        if(allUsers){
            res.status(200).json({"message":"All User",allUsersList:allUsers});
        }
        else{
            res.status(404).json({"message":"User Not Found",allUsersList:allUsers});
        }
    } catch (error) {
        let message = error.message;
        if (!message)
            message = error;
        res.status(500).send({
            status: false,
            message
        });
    }

}
async function ConsumeGetAllUserByParams(req, res) {
    try {
        let id=10;
        let email=null;
        let query;
        if(id>0 && email!==null){
            query='/?id="+id+"&email='+email;
        }else if(id>0 && email==null){
            query='/?id='+id;
        }
        else{
            query='';
        }
        console.log(query);
        console.log(id);
        let getAllUserData = await httpClient.get('/common//GetUserByFilter'+query);
        console.log(getAllUserData.data);//api response data
        if(getAllUserData){
            res.status(200).send({ status:true, UserData:getAllUserData.data   });
        }
        else{
            res.status(200).json({status:false,message:"No Data Found",UserData:getAllUserData.data})
        }
    } 
    catch (error) {
        let message = error.message;
        if (!message) {
            message=error;
        res.status(500).send({
                status: false,
                message
            });
    }
}
}

async function RegisterUser(req, res) {
      try {
        let reqdata=req.body;
        let registrationData={
            "username":reqdata.username,
            "password":reqdata.password,
            "email":reqdata.email
        } 
        console.log(registrationData);
        const data = await httpClient.post('/user/createUser',registrationData);
        console.log(data.data,"======>")
        if (data.data.status) {
            console.log(data);  
            res.status(200).send({ status: true ,data:data.data.message})
        }else{
            res.status(200).send({ status: true ,data:data.data.message})
        }
    } catch (error) {
        let message = error.message;
        if (!message)
            message = error;
        res.status(500).send({ status: false, message });
    }
}


module.exports={getIp,RegisterUser,GetAllUserByParams,ConsumeGetAllUserByParams};