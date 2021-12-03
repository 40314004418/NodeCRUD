const User = require("../models/user");
const bcrypt = require('bcrypt');
const nodemailer = require('../helper/mailer');
const fs=require('fs').promises;

const saltRounds = 10;
const salt = bcrypt.genSaltSync(saltRounds);

async function createUser(req, res) {
    try {
        const data = req.body;
        console.log(data);
        const checkEMail = await User.findOne({
            where: {
                email: data.email
            }
        })
        const payload = {
            username: data.username,
            email: data.email,
            password: bcrypt.hashSync(data.password, salt)
        }
        if (!checkEMail) {
            const user = await User.create(payload);
            // res.status(200).send({
            //     status: true,
            //     "message": "user created"
            // });
            
            /*Sending mail */
           let mailbody=await fs.readFile('./emailtempletes/Newuser.html');
           let subject = "New User Created";
           rendered=mailbody.toString()
           .replace(/{Subject}/g,`${subject}`)
           .replace(/{Email}/g,`${payload.email}`)
           .replace(/{Name}/g,`${payload.username}`)
           ;

            console.log(subject);
            let sentEmail = await nodemailer.nodeMailer(payload.email, subject, rendered, null);
            console.log("<---------------",sentEmail,"------------------------------>")
            res.render('index',{title:"Express"});

        } else {
            res.status(200).send({
                status: false,
                "message": "user already exist with this mail id!"
            });
        }
    } catch (error) {
        console.error(error);
        let message = error.message;
        if (!message)
            message = error;
        res.status(500).send({
            status: false,
            message
        });
    }
}



async function loginUser(req, res) {
    try {
        const data = req.body;
        let authenticateUser = await User.findOne({
            where: {
                email: data.email
            }
        })
        if (authenticateUser) {
            if (bcrypt.compareSync(data.password, authenticateUser.password))
                res.status(200).json({
                    "status": true,
                    "message": "Login success."
                })
            else
                res.status(200).json({
                    "status": false,
                    "message": "User id or password is incorrect."
                })

        } else {
            res.status(200).json({
                "status": false,
                "message": "User not found"
            })


        }


    } catch (error) {
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


module.exports = {
    createUser,
    loginUser
};