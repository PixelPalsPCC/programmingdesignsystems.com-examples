//VertexCurve Example from The Coding Train 9.22: Custom Shapes - p5.js Tutorial https://youtu.be/76fiD5DvzeQ?t=550

void setup(){
    size(600,600);
}


void draw(){



    background(0);
    stroke(255);
    noFill();

    strokeWeight(4);
    point(mouseX,mouseY);
    // point(100,200);
    point(150,50);
    point(250,60);
    point(300,200);

    strokeWeight(1);

    beginShape();


    curveVertex(mouseX,mouseY);
    // curveVertex(408,427);
    // curveVertex(100,200);
    curveVertex(150,50);
    curveVertex(250,60);
    curveVertex(300,200);
    curveVertex(300,200);


    endShape();

}

void mouseClicked(){
    println(mouseX,mouseY);
}



// Hi Zoe,

// Take a look at what Esther submitted. https://github.com/PixelPalsPCC/Vertex-Drawing/tree/main/Estherchen7 

// Also, the video I shared with the class has an interesting vertex curve that I think you can use.
