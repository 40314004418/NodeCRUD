const router=require('express').Router();
const studentController=require('../controllers/studentController');

router.post('/students',studentController.students);
router.get('/students/:id?',studentController.students);

router.put('/students',studentController.students);
router.delete('/students',studentController.students);



module.exports= router;