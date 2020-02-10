//
// incaseofMemory//
//  //  //  //  //
// joshuaLinton - 3174195
// DIGF2015 - Winter2020
// OCADU
//  //  //  //  //
// this code is written with the intention to abstract the potential of technological progression, as someone who has had part of their body reconstructed its an amazing realization to understand hat throughout history this just would have not been applicably possible
//  //  //  //  //
//

let forearm;         //calling forth the left-forearm-scar-clean.obj
let cam;             //calling forth the webcam as a texture

function setup() {
  createCanvas(700, 600, WEBGL);    //WEBGL makes 3d sketching possible
  forearm = loadModel("left-forearm-scar-clean.obj");
  cam = createCapture(VIDEO);
  cam.hide();
  // code is derived from Wednesday class sessions, specifically that of 20200122
}

function draw() {
  orbitControl();
  background(220);
  scale(15 * 2 *sin(frameCount *0.002));
  
  rotateY(PI);
  rotateX(PI);
  rotateZ(PI);
  rotateX(frameCount * 0.012);
  rotateY(frameCount * 0.009);
  
  ambientLight(250);
  ambientMaterial(0, 200, 255);
  let dirX = (mouseX / width - 0.5) *2;
  let dirY = (mouseY / height -0.5) *2;
  directionalLight(250, 50, 50, -dirX, dirY, -1);
  texture(cam);
  
  model( forearm );
  
  //code derived from Wednesday class sessions, specifally that of 20200122 
}