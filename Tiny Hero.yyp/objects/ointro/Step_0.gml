letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	if (currentline+1 == array_length(endtext))
	{
		SlideTransition(TRANS_MODE.GOTO,rTutorial);
	}
	else
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}
