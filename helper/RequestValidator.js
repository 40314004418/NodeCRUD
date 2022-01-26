const Joi = require('joi');



    const StudentSchema = Joi.object({
      
        studentName: Joi.string()
                  .min(5)
                  .max(30)
                  .required(),
                    
        email: Joi.string()
               .email()
               .min(5)
               .max(50)
               .required(), 
            
        mobile:Joi.string()
                .min(10)
                .max(10)
                .required(),
        dateOfBirth: Joi.date().optional()
                         
       });

       module.exports={StudentSchema};