public void setup()
{
	size(400,400);
	background(0);
}
public void draw()
{
	sierpinski(350,350,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{
		stroke(255,0,0);
		triangle(x-(len/2),y-len,x,y,x-len,y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x-(len/2),y,len/2);
		sierpinski(x-(len/4),y-(len/2),len/2);
	}
}