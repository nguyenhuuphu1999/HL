  
const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('./sequelize');

class Comments extends Model {}

Comments.init({
    id:{
        autoIncrement:true,
        type:DataTypes.NUMBER,
        primaryKey:true
    },
    id_user:DataTypes.NUMBER,
    id_product:DataTypes.NUMBER,
    comment:DataTypes.STRING,
    creat_at:DataTypes.DATE
},
{ 
    sequelize, 
    modelName: 'Comments',
    tableName: 'comment',
    timestamps: false
});


module.exports = Comments