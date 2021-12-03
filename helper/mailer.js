const nodemailer = require("nodemailer");
const mainConfig = require('../config.json');
const fs = require('fs');

async function nodeMailer(toEmail, subject, rendered, bcc) {

    try {
        const transporter = await nodemailer.createTransport({
            service: 'gmail',
            host: mainConfig.mailConfig.host,
            port: mainConfig.mailConfig.port,
            secure: false,
            auth: {
                user: mainConfig.mailConfig.email,
                pass: mainConfig.mailConfig.password
            }
        });
        if (mainConfig.testing == 1) {
            rendered = rendered + '<br/>To : ' + toEmail
        }

        const mailOptions = {
            from: mainConfig.mailConfig.fromEmail,
            to: mainConfig.testing == 1 ? "chandan_singh_mca18s1@jimsindia.org" : toEmail,
            subject: subject,
            html: rendered
        };
        if (bcc) {
            mailOptions.bcc = mainConfig.testing == 1 ? "chandan_singh_mca18s1@jimsindia.org" : bcc
        }


        const sendMail = await transporter.sendMail(mailOptions);
        return true;
    } catch (err) {
        console.error(error);
        console.error(toEmail, subject, rendered);
        console.error(mainConfig.mailConfig.email, mainConfig.mailConfig.password);
        let message = error.message;
        if (!message)
            message = error;
        return message;
    }
}



module.exports = {
    nodeMailer
};
