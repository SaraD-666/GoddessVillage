//press space to next text
var confirm = keyboard_check_pressed(confirm_key);

//type out the text 
text_progress = min(text_progress + text_speed, text_length);

//delay the space input
if (input_delay > 0){
	input_delay--;
	exit;
}


// if finish typing
if (text_progress == text_length) {
	if (option_count > 0) {
		var up = keyboard_check_pressed(up_key);
		var down = keyboard_check_pressed(down_key);
		
		// Cycle through available options
		var change = down - up;
		if (change != 0) {
			current_option += change;
		
			// Wrap to first and last option
			if (current_option < 0){
				current_option = option_count - 1;
			}
			else if (current_option >= option_count){
				current_option = 0;
			}
		}
		
		// Select an option!
		if (confirm) {
			audio_play_sound(snd_select_txt, 10, false);
			var option = options[current_option];
			options = [];
			option_count = 0;
			
			option_changed = true;
			
			option.act(id);
		}
	}
	else if (confirm) {
		audio_play_sound(snd_select_txt, 10, false);
		next();
	}
}
else if (confirm) {
	audio_play_sound(snd_select_txt, 10, false);
	text_progress = text_length;
}

