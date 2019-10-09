void setup()
{
	size(500,700);
	noLoop();
}
int sum = 0;
void draw()
{
	background(250);
	for (int x=50; x < 500; x = x+100){
		for (int y = 50; y < 500; y = y + 100){
			new Die(x, y);
		}
	}
	textAlign(CENTER,CENTER);
	text("The sum is " + sum, 250, 600);
	sum = 0;

	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int bruhX;
	int bruhY;
	int num;
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		bruhX = x;
		bruhY = y;
		roll();
		//variable initializations here
	}
	void roll()
	{
		num = (int)(Math.random()*6+1);
		show();
		sum += num;
		//your code here
	}
	void show()
	{
		fill(250);
		rectMode(CENTER);
		rect(bruhX, bruhY, 50, 50, 5);
		fill(0);
		if ((int)num == 1){
			ellipse(bruhX, bruhY, 5, 5);
		}
		if((int)num == 2){
			ellipse(bruhX + 8, bruhY + 8, 5, 5);
			ellipse(bruhX - 8, bruhY - 8, 5, 5);
		}
		if((int)num == 3){
			ellipse(bruhX+8, bruhY + 8, 5, 5);
			ellipse(bruhX, bruhY, 5, 5);
			ellipse(bruhX-8, bruhY-8, 5, 5);
		}
		if((int)num == 4){
			ellipse(bruhX+8, bruhY+8, 5, 5);
			ellipse(bruhX-8, bruhY-8, 5, 5);
			ellipse(bruhX-8, bruhY+8, 5, 5);
			ellipse(bruhX+8, bruhY-8, 5, 5);
		}
		if((int)num == 5){
			ellipse(bruhX+8, bruhY+8, 5, 5);
			ellipse(bruhX-8, bruhY-8, 5, 5);
			ellipse(bruhX-8, bruhY+8, 5, 5);
			ellipse(bruhX+8, bruhY-8, 5, 5);
			ellipse(bruhX, bruhY, 5, 5);
		}
		if((int)num == 6){
			ellipse(bruhX+8, bruhY+8, 5, 5);
			ellipse(bruhX-8, bruhY-8, 5, 5);
			ellipse(bruhX-8, bruhY+8, 5, 5);
			ellipse(bruhX+8, bruhY-8, 5, 5);
			ellipse(bruhX+8, bruhY, 5, 5);
			ellipse(bruhX-8, bruhY, 5, 5);
		}
		//your code here
	}
}
