instance VLK_7012_kopacz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = Name_Buddler;
Npctype = Npctype_Ambient;
guild = GIL_VLK;
level = 3;
voice = 3;
id = 7012;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 12;
attribute[ATR_DEXTERITY] = 10;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 50;
attribute[ATR_HITPOINTS] = 50;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",1, 1,"Hum_Head_Bald",100, 1,VLK_ARMOR_L);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Poker_01);
CreateInvItems  (self,ItAt_Meatbug_01,2);
CreateInvItems  (self,ItForice,3);
CreateInvItems  (self,ItMiNugget,5);
CreateInvItems  (self,ItFo_wineberrys_01,2);
CreateInvItems  (self,ItFoMuttonRaw,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Coward;
daily_routine = Rtn_start_7012;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7012 ()
{
TA_SitCampfire (06,00,22,00,"KOP12");
TA_Stand (22,00,06,00,"KOP12");
};
