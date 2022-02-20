const router=require('express').Router();
const commonController=require('../controllers/commonController');

router.get('/getip',commonController.getIp);
router.post('/RegisterUser',commonController.RegisterUser);
router.get('/GetUserByFilter/:id?',commonController.GetAllUserByParams);
router.get('/ConsumeGetAllUserByParams',commonController.ConsumeGetAllUserByParams);



module.exports=router;
