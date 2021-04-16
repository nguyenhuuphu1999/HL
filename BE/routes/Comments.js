var express = require('express');
const Comments = require('../model/Comments');
var router = express.Router();

router.post('/',async(req,res)=>{
    const result = await Comments.create({
        id_user:req.body.id_user,
        id_product:req.body.id_product,
        comment:req.body.comment,
        creat_at:new Date
    })
    res.json({
        message:'add comment successfully',
        data:result,
        error:false
    })
})
module.exports = router;