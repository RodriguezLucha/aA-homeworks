document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');

  let ctx = canvas.getContext('2d');
  canvas.setAttribute('height', 500);
  canvas.setAttribute('width', 500);
  
  //ctx.fillStyle = '#71f442';
  //ctx.fillRect(0, 0, 500, 500); 
  
  // ctx.beginPath();
  // ctx.arc(250, 250, 100, 0, 2 * Math.PI);
  // ctx.lineWidth = 5;
  // ctx.stroke();
  // ctx.fillStyle = '#71f442';
  // ctx.fill();

  // Quadratric curves example
  ctx.beginPath();
  ctx.moveTo(100, 400);
  ctx.quadraticCurveTo(100, 100, 100, 100);
  ctx.quadraticCurveTo(400, 250, 100, 400);
  ctx.quadraticCurveTo(400, 250, 500, 500);
  ctx.quadraticCurveTo(100, 250, 100, 100);
  ctx.stroke();
});
