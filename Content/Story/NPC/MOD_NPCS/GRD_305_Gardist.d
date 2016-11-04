instance GRD_305_Gardist (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	NAME_Gardist;
Npctype = Npctype_Guard;
guild = GIL_GRD;
level = 30;
voice = 7;
id = 305;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 60;
attribute[ATR_DEXTERITY] = 60;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 100;
attribute[ATR_HITPOINTS] = 300;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 2,"Hum_Head_Fighter",0, 3,GRD_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Sword_03);
EquipItem		(self, ItRw_Crossbow_01);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_305;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_305 ()
{
TA_Stand 		(09,00,12,45,"SPAWN_GRD999"); 
TA_GuardPassage (12,45,09,00,"SPAWN_GRD999");
//TA_GuardPatrol (09,00,12,45,"SPAWN_GRD999");
//TA_BodyGuard (09,00,12,45,"SPAWN_GRD999");
};
