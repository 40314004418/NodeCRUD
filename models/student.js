const {Sequelize,  DataTypes,    Model} = require('sequelize');
const { date } = require('swig/lib/filters');

module.exports = model;

function model(sequelize){

    const attributes={
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            allowNull: false
        },
        studentName: {
            type: DataTypes.STRING,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false
        },
        mobile: {
            type: DataTypes.STRING,
            allowNull: false
        },
        dateOfBirth:{type:DataTypes.DATE,allowNull:true},
        status: {
            type: DataTypes.TINYINT,
            defaultValue: 1
        },
        createdAt: {
            type: "TIMESTAMP",
            defaultValue: Sequelize.literal("CURRENT_TIMESTAMP")
        },
        updateAt: {
            type: "TIMESTAMP",
            defaultValue: Sequelize.literal("CURRENT_TIMESTAMP")
        }
    
    };

return sequelize.define('Student',attributes);

}




// const student = db.define('tblStudent', {
//     id: {
//         type: DataTypes.INTEGER,
//         autoIncrement: true,
//         primaryKey: false,
//         allowNull: false
//     },
//     studentName: {
//         type: DataTypes.STRING,
//         allowNull: false
//     },
//     email: {
//         type: DataTypes.STRING,
//         allowNull: false
//     },
//     mobile: {
//         type: DataTypes.STRING,
//         allowNull: false
//     },
//     status: {
//         type: DataTypes.TINYINT,
//         defaultValue: 1
//     },
//     createdAt: {
//         type: "TIMESTAMP",
//         defaultValue: Sequelize.literal("CURRENT_TIMESTAMP")
//     },
//     updateAt: {
//         type: "TIMESTAMP",
//         defaultValue: Sequelize.literal("CURRENT_TIMESTAMP")
//     }

// }, {
//     timestamps: false
// });


// module.exports = {student};