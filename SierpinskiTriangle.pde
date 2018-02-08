public void setup()
{
	size(800,800);
	frameRate(5);
}
public void draw()
{
	pushMatrix();
	translate(width/2,height/2);
	stroke(255);
	for(int i = 0; i < 4; i ++){
		rotate(PI/2);
		stroke((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
		sierpinski(-400,400,800);
	}
	popMatrix();
}

public void sierpinski(int x, int y, int len) 
{
	if (len <= 10){
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else{ 
		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}

