if (menu_control)
{
	if (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_commited = menu_cursor;
		menu_control = false;
	}	
}

if (menu_commited != -1)
{
	switch (menu_commited)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT); audio_stop_sound(mMenu); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);
				audio_stop_sound(mMenu);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO,target);
				audio_stop_sound(mMenu);
			}
		}
		break;
		case 0: game_end(); break;
	}
}