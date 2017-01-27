public void setup()
{
	size(800, 800);
	background(158, 224, 255);
}
public void draw()
{
	sierpinski(0, 800, 800);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
			
	fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		triangle(x, y, x + len , y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x,y, len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2, len/2);
	}
	

}