const mysql = require('mysql2/promise');
const { Sequelize } = require('sequelize');
const mainConfig=require('../config.json');

        const host = mainConfig.Localdatabase.host;
        const port = mainConfig.Localdatabase.port;
        const user = mainConfig.Localdatabase.user;
        const password = mainConfig.Localdatabase.password;
        const database = mainConfig.Localdatabase.database;
        console.log('Connection Established..........')
        console.log(user, password, database)
      
        // connect to db
        const sequelize = new Sequelize(database, user, password, {
            port: port,
            host: host,
            dialect: 'mysql',
            logging: false
        });

module.exports=sequelize;