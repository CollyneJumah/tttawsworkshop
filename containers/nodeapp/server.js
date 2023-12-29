const express = require('express')

const app = new express()

const port = process.env.PORT || 8080

app.get('/', (req,res) =>{
    res.send("AWS with CollinsJumah")
})

app.listen(port, ()=>{
    console.log("app started running on port ", port)
})