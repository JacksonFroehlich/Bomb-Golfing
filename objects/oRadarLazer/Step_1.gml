/// @description Insert description here
// You can write your code in this editor
scale = 1
image_xscale = 1
while(!place_meeting(x,y,oWall) && image_xscale < 200){
	//show_debug_message("did a loop" + string(scale))
	scale++
	image_xscale = scale
}
image_xscale = max(1,scale - 1)
if(image_angle % 180 == 0){
	
	if(!place_meeting(x-dir,y,oWall)){
		show_debug_message("we at x")
		instance_destroy()
	}
}
else{
	
	if(!place_meeting(x,y-dir,oWall)){
		show_debug_message("we at y")
		instance_destroy()
	}
}
image_xscale = scale