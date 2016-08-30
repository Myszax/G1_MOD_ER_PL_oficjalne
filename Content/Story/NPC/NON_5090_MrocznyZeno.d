instance NON_5091_MrocznyZeno (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Ostatni stra�nik";
Npctype = Npctype_Main;
guild = GIL_NONE;
level = 300;
voice = 6;
id = 5091;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 200;
attribute[ATR_DEXTERITY] = 200;
attribute[ATR_MANA_MAX] = 700;
attribute[ATR_MANA] = 700;
attribute[ATR_HITPOINTS_MAX] = 1000;
attribute[ATR_HITPOINTS] = 1000;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Psionic",19, 0,CRW_ARMOR_H);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_2H,2);
Npc_SetTalentSkill (self, NPC_TALENT_BOW,2);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);
Npc_SetTalentSkill (self, NPC_TALENT_MAGE,6);

//----------Ekwipunek----------
EquipItem		(self, ItArRuneFireball);
CreateInvItems  (self,ItAt_Wolf_01,5);
CreateInvItems  (self,ItAt_Shadow_02,5);
CreateInvItems  (self,ItFo_Potion_Mana_03,30);
CreateInvItems  (self,ItFo_Potion_Health_03,30);
CreateInvItems  (self,ItFo_Potion_Strength_03,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Mage;
daily_routine = Rtn_start_5091;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_5091 ()
{
TA_StayNeutral (06,00,22,00,"TPL_ZENEK");
TA_StayNeutral (22,00,06,00,"TPL_ZENEK");
};
