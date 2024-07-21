//setViewDistance 350;
0 setFog [1, 0.04, 0];
960000 setFog [0, 0, 0];
titleCut ["", "BLACK FADED", 999];

titleText ["", "PLAIN DOWN"];
titleFadeOut 7;
sleep 5;

[
	"<t size = '0.6'>The Lost Chronicles... Part 1</t>",
	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
] spawn BIS_fnc_dynamicText;
sleep 10;

//[
//	"<t size = '0.6'>Project Harbinger was created with the goal of obtaining psychic commanders.</t>",
//	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
//] spawn BIS_fnc_dynamicText;
//sleep 1;
//[
//	"<t size = '0.6'>When the psychic commander test subjects were young, they started to suffer nightmares and became attuned to the negative emotions of the people around then.</t>",
//	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
//] spawn BIS_fnc_dynamicText;
//sleep 1;
//[
//	"<t size = '0.6'>Soon, they started to psychically attack the scientists who were testing them - who began to suffer delusions, sudden mood changes and vivid nightmares.</t>",
//	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
//] spawn BIS_fnc_dynamicText;
//sleep 1;
//[
//	"<t size = '0.6'>15 Years Later...</t>",
//	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
//] spawn BIS_fnc_dynamicText;
//sleep 1;
//[
//	"<t size = '1.0'>The Paramedic Presents</t>",
//	safeZoneX+0.71, safeZoneY+safeZoneH-0.83, 4, 4, 0, 890
//] spawn BIS_fnc_dynamicText;
//sleep 1;
//[
//	format ["<img shadow='0.8' size='9.0' image='%1' />", "pointman2.jpg"],
//	safeZoneX+0.71, safeZoneY+safeZoneH-1.15, 8, 7, 0, 889
//] spawn BIS_fnc_dynamicText;
sleep 1;

// Info text
[str ("The Lost Chronicles"), str("Part 1"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0)] spawn BIS_fnc_infoText;

sleep 5;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;

titleCut ["", "BLACK IN", 5];