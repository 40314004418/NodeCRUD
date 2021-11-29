const mysql = require('mysql2/promise');
const { Sequelize } = require('sequelize');

        const host = "172.16.1.19";//mainConfig.database.host;
        const port = 3306;//mainConfig.database.port;
        const user = "localadmin";//mainConfig.database.user;
        const password = "Sqyrd@5432";//mainConfig.database.password;
        const database = "sqybeatsdb_2021_03_11";//mainConfig.database.database;
        console.log('hi')
        console.log(user, password, database)
      
        // connect to db
        const sequelize = new Sequelize(database, user, password, {
            port: port,
            host: host,
            dialect: 'mysql',
            logging: false
        });

module.exports=sequelize;