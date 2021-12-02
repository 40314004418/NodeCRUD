const httpClient = require('../helper/http-client');

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


module.exports={getIp,RegisterUser};