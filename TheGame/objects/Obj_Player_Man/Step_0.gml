//All input
Key_right = keyboard_check(vk_right) or keyboard_check(ord("D")); 
Key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
Key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));
//Movement
var move = Key_right - Key_left;

horizontalsp = move * walksp;

verticalsp = verticalsp + grv;

if (place_meeting(x,y+1,Obj_Stone_Wall)) && (Key_jump)
{
 verticalsp= - 15; 
} 

 
// Horizontal Collision

if (place_meeting(x+horizontalsp,y,Obj_Stone_Wall))
{
     while (!place_meeting(x+sign(horizontalsp),y,Obj_Stone_Wall))
	{
	  x = x + sign(horizontalsp);
	}      
	  horizontalsp = 0;
}

x = x + horizontalsp;

// vertical Collision

if (place_meeting(x,y+verticalsp,Obj_Stone_Wall))
{
     while (!place_meeting(x,y+sign(verticalsp),Obj_Stone_Wall))
	{
	  y = y + sign(verticalsp);
	}      
	  verticalsp = 0;
}

y = y + verticalsp;

if (Key_right = true && place_meeting(x,y+1,Obj_Stone_Wall) or Key_left = true && place_meeting(x,y+1,Obj_Stone_Wall))
{
image_speed = 2;
}
else
{ 
image_speed = 0;
}
if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
image_angle = 100;
}
