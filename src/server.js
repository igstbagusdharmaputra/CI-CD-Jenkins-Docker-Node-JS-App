'use strict';
const express = require('express');
 // Constants
 const PORT = 3000;
// const HOST = '0.0.0.0';
 // App
 const app = express();
 app.get('/', (req, res) => {
   res.send('Hallo WORLD\n');
 });
 app.listen(PORT, ()=> {
	console.log(`Server running port ${PORT}`);
 });
