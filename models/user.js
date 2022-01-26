const { Sequelize, DataTypes, Model } = require('sequelize');

module.exports = model;

function model(sequelize){

    const attributes={
      id:{type:DataTypes.INTEGER,autoIncrement:true,allowNull:false,primaryKey:true},
      username: {    type: DataTypes.STRING,    allowNull: false  },
      password: {    type: DataTypes.STRING    },
      email: {    type: DataTypes.STRING    },
      createdAt:{    type:"TIMESTAMP", defaultValue:Sequelize.literal("CURRENT_TIMESTAMP")},
      updateAt:{    type:"TIMESTAMP", defaultValue:Sequelize.literal("CURRENT_TIMESTAMP")}
    
    };

return sequelize.define('User',attributes);

}

