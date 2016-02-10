int ellipseSize;
//color[] colorArray = {color(0,0,255), color(0,255,0), color(255,0,0)};
public void setup(){
	background(0);
	size(600,600);
	ellipseSize = 500;
	fractal(ellipseSize/2 + 50,300,ellipseSize);
}

/*
public void draw(){
	background(0);
	fractal(300,300,ellipseSize);
}
*/

public void fractal(int xPos, int yPos, int diameter){
	if( diameter >= 0){
		//fill(colorArray[(int)(Math.random()*3)]);
		noStroke();
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse(xPos, yPos, diameter, diameter);
		fractal(xPos + 10, yPos, diameter - 20);
	}
}