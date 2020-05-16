/// SlideTransition(mode, targetroom)
/// Mode sets transition mode between next, restart and goto
/// Target sets target room using goto

with (Transition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
