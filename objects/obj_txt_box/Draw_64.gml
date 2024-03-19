//draw the box
draw_sprite_stretched(sprite_index, 0, x_pos, y_pos, width, height);

var draw_text_x = x_pos;
var draw_text_y = y_pos;
var draw_text_width = text_width;

//detect if the text is printed
var finished = text_progress == text_length;//for talking animation and checking for options start

//since not all dialogue need portrait, check it first
if (sprite_exists(portrait_sprite)){
	//if there is one then shrink the text
	draw_text_width -= portrait_width + portrait_x + padding;
	
	var draw_portrait_x = x_pos + portrait_x;
	var draw_portrait_y = y_pos + portrait_y;
	var draw_portrait_xscale = 1; //flip the portrait depend left or right
	
	//see which side the portrait is on
	if (portrait_side == PORTRAIT_SIDE.LEFT){
		//shift text over when portrait is at left
		draw_text_x = portrait_width + portrait_x + padding;
	}
	else{
		//move the portrait to the right
		draw_portrait_x = x_pos + width - portrait_width - portrait_x;
		draw_portrait_xscale = -1;
	}
	
	//draw portrait background
	draw_sprite(spr_pfp, 0, draw_portrait_x, draw_portrait_y);
	
	//draw the sprite portrait itself
	draw_sprite_ext(portrait_sprite, 0,
		draw_portrait_x + portrait_width / 2,
		draw_portrait_y + portrait_height / 2, 
		draw_portrait_xscale, 1, 0, c_white, 1);
}

//only draw speaker's name if there's a speaker
 if (speaker_name != ""){
	//expand the name box if name is wider than the boarder
	var name_width = max(string_width(speaker_name), speaker_width);
	
	
	//stretch the sprite according to which width is bigger
	draw_sprite_stretched(spr_name, 0, x_pos + speaker_x, y_pos + speaker_y - speaker_height / 2, name_width, speaker_height);//x_pos + speaker_x + 50, y_pos + height - 35
	
	//draw the actual text now
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(speaker_font);
	draw_set_color(speaker_color);
	draw_text(x_pos + speaker_x + name_width / 2, y_pos + speaker_y, speaker_name);//x_pos + speaker_x + 50 + name_width / 2, y_pos + height - 10
	
 }


//text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(text_font);
draw_set_color(text_color);

type(draw_text_x + text_x, draw_text_y + text_y, text, text_progress, text_width);


// Options
if (finished && option_count > 0) {
	draw_set_valign(fa_middle);
	draw_set_color(option_text_color);
	
	for (var i = 0; i < option_count; i++) {
		var opt_x = x_pos + option_x;
		var opt_y = y_pos + option_y - (option_count - i - 1) * option_spacing;
		
		// Selected option is indented with an arrow
		if (i == current_option) {
			opt_x += option_selection_indent;
			draw_sprite(spr_option_arrow, 0, opt_x, opt_y);
		}
		
		draw_sprite_stretched(spr_option, 0, opt_x, opt_y - option_height / 2, option_width, option_height);
		draw_text(opt_x + option_text_x, opt_y, options[i].text);
	}
}
