const router=require('express').Router();
const userController=require("../controllers/userController");


router.post("/CreateUser",userController.createUser);
router.post("/LoginUser",userController.loginUser);

module.exports=router;