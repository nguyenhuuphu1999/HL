var express = require('express');
const { route } = require('.');
const Product_mol = require('../model/Product');
var router = express.Router();


router.get('/:STT',async(req,res)=>{
    const result = await Product_mol.findOne({
        where:{
            STT:req.params.STT
        },
        include:[{
            model:Product_mol,
            as: 'chirend',
        }]
    })
    console.log(result)
   if(result != null){
    res.json({
        message:'get data successfull',
        data:result,
        error:false
    })
   }else{
    res.json({
        message:'ID invalid',
      
        error:true
    })
   }
})

router.get('/',async(req,res)=>{
    const result = await Product_mol.findAll({
        where:{
            id_parent:0
        }
    })
    console.log(result)
    if(result != ''){
     res.json({
         message:'get data successfull',
         data:result,
         error:false
     })
    }else{
     res.json({
         message:'This is filed invalid',
       
         error:true
     })
    }
})
module.exports = router;