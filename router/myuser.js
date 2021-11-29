const router=require('express').Router();
const userController=require("../controllers/userController");


router.post("/CreateUser",userController.createUser);

module.exports=router;