const mysql = require('mysql2/promise');
const { Sequelize } = require('sequelize');
const mainConfig=require('../config.json');


module.exports=db={};
module.exports.initialize=initialize;
initialize();

async function initialize(){
try{
    const host = mainConfig.Localdatabase.host;
    const port = mainConfig.Localdatabase.port;
    const user = mainConfig.Localdatabase.user;
    const password = mainConfig.Localdatabase.password;
    const database = mainConfig.Localdatabase.database;
    console.log('Connection Established..........')
    console.log(user, password, database)
  

    const sequelize = new Sequelize(database, user, password, {
        port: port,
        host: host,
        dialect: 'mysql',
        logging: false,
        timezone:'+05:30'
    });

// init models and add them to the exported db object
db.Users=require("../models/user")(sequelize);
db.Students=require("../models/student")(sequelize);




/*-------------define joins here ------------*/





/*--------------------------------------------*/



await sequelize.sync();
}
catch(error){
    console.log(error);
}
    


}
     