instance VLK_5088_Tragaz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Tragarz";
Npctype = Npctype_Ambient;
guild = GIL_VLK;
level = 5;
voice = 1;
id = 5088;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 12;
attribute[ATR_DEXTERITY] = 12;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 60;
attribute[ATR_HITPOINTS] = 60;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
Mdl_SetVisualBody (self,"hum_body_Naked0",3,1,"Hum_Head_Fighter", 67,  1, -1);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Ekwipunek----------
EquipItem		(self, ItMwPickaxe);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_master;
daily_routine = Rtn_start_5088;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_5088 ()
{
TA_SitCampfire (06,00,22,00,"ES1");
TA_SitCampfire (22,00,06,00,"ES1");
};
FUNC VOID Rtn_las_5088 ()
{
TA_Stay (22,00,06,00,"PACHOL1");
TA_Stay (06,00,22,00,"PACHOL1");
};
FUNC VOID Rtn_follow_5088 ()
{
TA_FollowPC (06,00,22,00,"OC1");
TA_FollowPC (22,00,06,00,"OC1");
};
FUNC VOID Rtn_camp_5088 ()
{
TA_Stand (22,00,06,00,"DOSTAWA1");
TA_StandAround (06,00,22,00,"DOSTAWA1");
};