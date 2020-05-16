/// @description Insert description here
// You can write your code in this editor

with (HeartObject)
{
		if (hascontrol)
		{
			hascontrol = false;
			//set a target by double click and creation code when placed in level
			SlideTransition(TRANS_MODE.GOTO,other.target);
		}
}