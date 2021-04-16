  
const { Sequelize, Model, DataTypes } = require('sequelize');
const sequelize = require('./sequelize');

class Product_mol extends Model {}

Product_mol.init({
    id:{
        autoIncrement:true,
        type:DataTypes.NUMBER,
        primaryKey:true
    },
    STT:DataTypes.NUMBER,
    id_parent:DataTypes.NUMBER,
    image:DataTypes.STRING,
    title:DataTypes.STRING,
    content:DataTypes.STRING,
    creat_at:DataTypes.DATE,
    NXB:DataTypes.STRING,
    status:DataTypes.NUMBER
},
{ 
    sequelize, 
    modelName: 'Product_mol',
    tableName: 'product',
    timestamps: false
});

Product_mol.hasMany(Product_mol,{
    as:'chirend',
    foreignKey:'id_parent'
})
module.exports = Product_mol