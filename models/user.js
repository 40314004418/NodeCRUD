const { Sequelize, DataTypes, Model } = require('sequelize');
const sequelize = require('../connection/db');

const User = sequelize.define('tblMyuser', {
  // Model attributes are defined here
  id:{type:DataTypes.INTEGER,autoIncrement:true,allowNull:false,primaryKey:true},
  username: {    type: DataTypes.STRING,    allowNull: false  },
  password: {    type: DataTypes.STRING    },
  email: {    type: DataTypes.STRING    },
  createdAt:{    type:"TIMESTAMP", defaultValue:Sequelize.literal("CURRENT_TIMESTAMP")},
  updateAt:{    type:"TIMESTAMP", defaultValue:Sequelize.literal("CURRENT_TIMESTAMP")}

}, {
  timestamps:false
});

// `sequelize.define` also returns the model
console.log(User === sequelize.models.User); // true
module.exports=User;