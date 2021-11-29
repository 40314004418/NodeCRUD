const User=require("../models/user");
const bcrypt = require('bcrypt');
const salt = bcrypt.genSaltSync(10);

async function createUser(req,res){
try{
    const data=req.body;
    const checkEMail=await User.findOne({where:{email:data.email}})
    console.log(checkEMail);
    const payload={
        username:data.username,
        email:data.email,
        password:bcrypt.hashSync(data.password, salt)
    }
    if(!checkEMail){
        const user=await User.create(payload);
        res.status(200).send({ status: true, "message": "user created" })
    }
   else{
    res.status(200).send({ status: false, "message": "user already exist with this mail id!" })
   }
}
catch (error) {
    console.error(error);
    let message = error.message;
    if (!message)
        message = error;
     res.status(500).send({ status: false, message });
}



}

module.exports={
    createUser
}