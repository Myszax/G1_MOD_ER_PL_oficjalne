instance VLK_2004_Robotnik (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Robotnik";
Npctype = Npctype_Main;
guild = GIL_VLK;
level = 5;
voice = 4;
id = 2004;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 15;
attribute[ATR_DEXTERITY] = 15;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 45;
attribute[ATR_HITPOINTS] = 45;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",3, 0,"Hum_Head_Fighter",11, 0,VLK_ARMOR_L);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Poker_01);
CreateInvItems  (self,ItFoLoaf,1);
CreateInvItems  (self,ItForice,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_MASTER;
daily_routine = Rtn_start_2004;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2004 ()
{
TA_RepairHut (06,00,14,45,"REPAIR1");
TA_Smoke (14,45,15,00,"PLAC5");
TA_StandAround (15,00,22,00,"PLAC5");
TA_SitAround (22,00,06,00,"PLAC5");
};
