//Gun volgt de player
x = Obj_Player_Man.x;
y = Obj_Player_Man.y;


//schieten van de kogel
image_angle = point_direction(x,y,mouse_x,mouse_y); 

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
       firingdelay = 5;
   	   with (instance_create_layer(x,y,"Particles",Obj_Particles_Bullet))
     {
	     speed = 25;
		 direction = other.image_angle + random_range(-3,3);
		 image_angle = direction;
	 }

}
  
x = x - lengthdir_x(recoil,image_angle)
y = y - lengthdir_y(recoil,image_angle)

if (image_angle > 90) && (image_angle < 270)
{
   image_yscale = -2;
}
else 
{
 image_yscale = 2;
}