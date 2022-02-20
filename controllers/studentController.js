const httpClient = require('../helper/http-client');
const {Op}=require('sequelize');
const { post, put } = require('request');
const db=require('../connection/db');
const RequestValidator=require('../helper/RequestValidator');


async function students(req,res){
    try{
        if(req.method==='GET'){
            const id=req.params.id;
            let studentList;
            if(id>0){
                studentList=await db.Students.findOne({where:{id:id}});
                res.status(200).send({status:"success",message:true,reqMethod:req.method,studentList:studentList});
            }else{
                studentList=await db.Students.findAll({order: [['id', 'DESC'] ]});     
                res.status(200).send({status:"success",message:true,reqMethod:req.method,studentList:studentList});
            }

            
        }
        else if(req.method==='POST'){
           let reqBody=req.body;

           let isValidRequest=RequestValidator.StudentSchema.validate(reqBody);
           if (isValidRequest.error){
            res.status(400).send({status: false,Error:isValidRequest.error.details[0].message });
            throw isValidRequest.error.details[0].message;
           }
                

            const payload={
                studentName:reqBody.studentName,
                email:reqBody.email,
                mobile:reqBody.mobile,
                dateOfBirth:reqBody.dateOfBirth
            }

            const checkEMail=await db.Students.findOne({
                where:{email:reqBody.email}
            });
           
            if(!checkEMail){
                const NewStudent=await db.Students.create(payload);
                res.status(201).send({status: true,"message": "Student Added" });
            }
            else{
                res.status(406).send({
                    status: false,
                    "message": "Student already exist with this mail id!"
                });
            }
           
            // res.status(200).send({status:"success",message:true,reqMethod:req.method});
        }
        else if(req.method==='PUT'){
            res.status(200).send({status:"success",message:true,reqMethod:req.method});
        }
        else if(req.method==='DELETE'){
            res.status(200).send({status:"success",message:true,reqMethod:req.method});
        }
        else
        res.status(500).send({status:"Failed",message:true,reqMethod:req.method});
    }
    catch (error) {
        console.error(error);
        let message = error.message;
        if (!message)
            message = error;
        res.error(500).send({
            status: false,
            message
        });
    }
}


module.exports={students};