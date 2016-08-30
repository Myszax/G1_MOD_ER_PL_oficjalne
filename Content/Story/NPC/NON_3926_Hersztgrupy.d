instance NON_3926_Hersztgrupy (Npc_Default)
{
//Generated by Gothic NPC Maker
//edit by Nocturn

//----------Info ogolne----------

name = "Herszt Nowicjuszy - rabusi�w";
Npctype = Npctype_Main;
guild = GIL_DMB;
level = 15;
voice = 10;
id = 3926;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 55;
attribute[ATR_DEXTERITY] = 55;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 180;
attribute[ATR_HITPOINTS] = 180;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",1, 1,"Hum_Head_Psionic",64, 1,NOV_ARMOR_H);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,4);
Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Sword_Long_01);
EquipItem		(self, ItRw_Bow_Long_01);
CreateInvItems  (self,ItAt_Wolf_01,1);
CreateInvItems  (self,ItFoWine,3);
CreateInvItems  (self,ItForice,3);
CreateInvItems  (self,ItFo_Potion_Health_01,5);
CreateInvItems  (self,ItKeLockpick,5);
CreateInvItems  (self,ItMijoint_1,5);
CreateInvItems  (self,ItLsTorch,3);
CreateInvItems  (self,ItMiNugget,50);
CreateInvItems  (self,lukor_amulet,1);
CreateInvItems  (self,ItAmArrow,20);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_MASTER;
daily_routine = Rtn_start_3926;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_3926 ()
{
TA_SitCampfire (00,00,12,00,"CAVE_BANDIT_3");
TA_SitCampfire (12,00,00,00,"CAVE_BANDIT_3");
};
