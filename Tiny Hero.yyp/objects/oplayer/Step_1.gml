if (hp <= 0 )
{
	roomName = room_get_name(room);
	target = asset_get_index(roomName);
	SlideTransition(TRANS_MODE.GOTO,target);
}