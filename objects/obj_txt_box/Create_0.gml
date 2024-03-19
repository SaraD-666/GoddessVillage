//input
confirm_key = vk_space;
up_key = vk_up;
down_key = vk_down;
max_input_delay = 5;
input_delay = max_input_delay;

//position
margin = 16;
padding = 8;
width = display_get_gui_width() - margin * 2;
height = sprite_height;

x_pos = margin;
y_pos = display_get_gui_height() - height - margin;

//controls the Text itself
text_font = fnt_text;
text_color = c_black;
text_speed = 2.5;//how fast it types out itself
text_x = padding * 3;
text_y = padding * 3;
text_width = width - padding * 40; // the max width text could have before droping to next line

//portraits
portrait_x = padding;
portrait_y = padding * -10;


//speaker
speaker_x = padding * -1;
speaker_y = padding * 18;
speaker_font = fnt_name;
speaker_color = #464633;


//Options
option_x = padding * 2;
option_y = padding * -15;
option_spacing = 50;
option_selection_indent = 24;
option_width = 300;
option_height = 40;
option_text_x = 10;
option_text_color = c_black;



//private variables (ONLY GET THESE VARIABLES, DON't EDIT THEM)
//array of actions that the text box need to perform (structs)
actions = [];
current_action = -1;//position in action array, which page we r on?

text = ""; //what text is currently shown
text_progress = 0; //how much text has been displayed on screen
text_length = 0; //length of text


//portrait sprite
portrait_sprite = -1;
portrait_width = sprite_get_width(spr_player);
portrait_height = sprite_get_height(spr_player);

//decide which side to put the protrait
portrait_side = PORTRAIT_SIDE.LEFT;
enum PORTRAIT_SIDE {
	RIGHT,
	LEFT
}

//what name need to be drawn in name box
speaker_name = "";
speaker_width = sprite_get_width(spr_name);
speaker_height = sprite_get_height(spr_name);


//options
options = [];
current_option = 0;
option_count = 0;

option_changed = false;

//all dialogue is going to be set in the global topics struct
//Start a conversation
setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;//everytime a new conversation start, reset current actions
	
	next();
}

//move to the next action
next = function() {
	current_action++;
	//if at the end of the array of actions then close the dialogue box
	if (current_action >= array_length(actions)){
		instance_destroy();
	}
	else{
		//then grab the current action we r on and call act method in it
		actions[current_action].act(id);
	}
}

//set the text that should be typed out
setText = function(newText){
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}