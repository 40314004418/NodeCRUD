const router=require('express').Router();
const commonController=require('../controllers/commonController');

router.get('/getip',commonController.getIp);
router.post('/RegisterUser',commonController.RegisterUser);


module.exports=router;
