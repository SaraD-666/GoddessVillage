switch(gamestate){
	case GameState.Explore:
		switch(sprite_num){
			case 0:
				if (!instance_exists(obj_txt_box)){
					var spr_bg = spr_forrest1
					obj_bg.sprite_index = spr_forrest1;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 1:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_entrance;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
				else if (obj_txt_box.option_changed){
					randomize();
					//set random background img
					var int = irandom_range(0, 2);
					var spr_bg = noone;
					switch(int){
						case 0:
							spr_bg = spr_forrest1;
						break;
						case 1:
							spr_bg = spr_forrest2;
						break;
						case 2:
							spr_bg = spr_forrest3;
						break;
					}
					obj_bg.sprite_index = spr_bg;
					obj_txt_box.option_changed = false;
				}
			break;
			case 2:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_entrance;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 3:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_see_statue;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 4:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_old_ldy_pop
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 5:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = noone;
					sprite_num++;
					gamestate = GameState.Dialogue;
					room_goto(rm_meet_village_head);
				}
			break;
			case 6:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_vh_outside;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			/*
			case 7:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = noone;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 8:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_see_statue;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			case 9:
				if (!instance_exists(obj_txt_box)){
					obj_bg.sprite_index = spr_see_statue;
					sprite_num++;
					gamestate = GameState.Dialogue;
				}
			break;
			*/
		}
	break;
	case GameState.Dialogue:
		switch(dialogue_num){
			case 0:
				start_dialogue("Bus");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 1:
				start_dialogue("Which Direction");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 2:
				start_dialogue("Into the village");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 3:
				start_dialogue("See the statue");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 4:
				start_dialogue("complement statue");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 5:
				start_dialogue("Old lady yells");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 6:
				start_dialogue("On the way to Village");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 7:
				start_dialogue("Let me see vh");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			/*
			case 8:
				start_dialogue("complement");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 9:
				start_dialogue("complement");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 10:
				start_dialogue("complement");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 11:
				start_dialogue("complement");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			case 12:
				start_dialogue("complement");
				dialogue_num++;
				gamestate = GameState.Explore;
			break;
			*/
		}
	break;
}
