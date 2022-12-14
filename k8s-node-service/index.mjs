import express = require('express');
import os from 'os'
const app = express()
const PORT = 3000

app.get("/", (req,res)=>{
    const message=`Yarab, Argentina win the World Cup for the best player in history, Messi ,,I am pod ${os.hostname()}`
    res.send(message)

})
app.listen(PORT, ()=>{
    console.log(`web server is listening at port ${PORT}`)
    console.log(os.hostname())
})


