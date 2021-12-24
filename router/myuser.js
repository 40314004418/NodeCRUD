const router=require('express').Router();
const userController=require("../controllers/userController");


router.post("/CreateUser",userController.createUser);
router.post("/LoginUser",userController.loginUser);
router.get("/Login",(req,res)=>{
    res.render('login.ejs',{title:"Login Page"});
})
module.exports=router;