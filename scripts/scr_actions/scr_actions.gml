#macro TEXT new text_action
#macro SPEAKER new speaker_action
#macro CHOICE new choice_action
#macro OPTION new option_action
#macro GOTO new goto_action

function dialogue_action() constructor{
	act = function(){
	
	}
}

//define new text to type out
function text_action(_text) : dialogue_action() constructor{
	text = _text;
	
	act = function(text_box){
		text_box.setText(text);
	}
}

//set the speaker
//@param _name name of the speaker
//@param _sprite optional sprite portrait if there is one
//@param _side optional to chose whether or not to pick a side
function speaker_action(_name, _sprite = undefined, _side = undefined) : dialogue_action() constructor{
	name = _name;
	sprite = _sprite;
	side = _side;
	
	act = function(text_box){
		text_box.speaker_name = name;
		
		//if specified a sprite
		if (!is_undefined(sprite)){
			text_box.portrait_sprite = sprite;
		}
		
		//if specified a side
		if (!is_undefined(side)){
			text_box.portrait_side = side;
		}
		
		//automatically move to next cuz we don't want player to press space for just changing the speaker
		text_box.next();
	}
}

/*
* this function will do choice selection
*@param _text is the question we are guiding the player to make choices
*then it could take more amount of arguments after it that's indicates the amount of choices you are given the players
*And the arguments that we are going to pass in after the first one is the option_action().
*So it's something like: choice_action("Do you like math?", option_action("Yes", "Chose Yes"), option_action("NO", "Chose No"))
*/
function choice_action(_text) : dialogue_action() constructor{
	text = _text;
	
	options = [];
	//fill options array with all the arguments after the first one
	for (var i = 1; i < argument_count; i++){
		array_push(options, argument[i]);
	}
	
	act = function(text_box){
		text_box.setText(text);
		text_box.options = options;
		text_box.option_count = array_length(options);
		text_box.current_option = 0;
	}
}

/*
* this function will determine for each individual option boxes
*@param _text is the what's going to appear on the individual option
*@param _topic is where the dialogue is going to go when u select this option
*/
function option_action(_text, _topic) : dialogue_action() constructor{
	text = _text;
	topic = _topic;
	
	act = function(text_box){
		text_box.setTopic(topic);
	}
}

/*
* this function allows you to move around different topics
* or in other words, it automatically goes to a specific topic
* which will allow two branches of options to merge back to one without aking more from player
*@param _topic is where the dialogue is going to go when u select this option
*/
function goto_action(_topic) : dialogue_action() constructor{
	topic = _topic;
	
	act = function(text_box){
		text_box.setTopic(topic);
	}
}
