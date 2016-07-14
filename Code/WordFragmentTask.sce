#File: 			WordFragmentTask.sce
#Description:	Contains the subroutines used in the experiment
#Programmer:	Connor Reid (Psy Technician)
#Created@:		13/07/2016
#LastMod@:		13/07/2016
#ModifiedBy:	Connor Reid
#Copyright@: 	School Of Psychology, Griffith University
#-------------------------------------------------------------------

pcl_file = "WordFragmentTask.pcl";
scenario = "WordFragmentTask";
response_matching = simple_matching;

default_font_size = 20;
default_text_color=255,255,255;
default_background_color = 0,0,0;
active_buttons = 27;
button_codes = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27;		

#write_codes = true;		#write codes to port
#pulse_width = 20; 		#if port is parallel

begin;

###################  Text  #############################################

text{
	caption = "You will be provided with 38 fragmented words.\n\n Please fill in letters in the blanks to create the first word that comes to mind.\n\nWhen you are ready to progress press the Spacebar";
}instructions_text;

text{
	caption = "Congratulations!  You have finished all trials.  Thank you for your participation.";
}goodbye_text;

###################  Pictures are defines here  ########################

picture{
	text instructions_text; x = 0; y = 0;
}instructions_pic;

picture{
	text{
		caption = "BUR__D";
		font_size = 80;
	}main_text; x = 0; y = 0;
}main_pic;

picture{
	text goodbye_text; x = 0; y = 0;
}goodbye_pic;

###################  Trials Are Defined Here ###########################

trial{
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 27;
	picture instructions_pic;
}instructions_trial;

trial{
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27;
	stimulus_event{
		picture main_pic;
		response_active = true;
	}main_event;
}main_trial;

trial{
	trial_duration = 3000;
	trial_type = specific_response;
	terminator_button = 27;
	picture goodbye_pic;
}goodbye_trial;