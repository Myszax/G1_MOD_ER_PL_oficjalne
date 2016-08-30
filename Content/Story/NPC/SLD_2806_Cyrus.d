instance SLD_2806_Cyrus (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Cyrus";
Npctype = Npctype_Main;
guild = GIL_SLD;
level = 40;
voice = 10;
id = 2806;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 130;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 200;
attribute[ATR_HITPOINTS] = 200;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Arrogance.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",2, 1,"Hum_Head_FatBald",45, 1,SLD_ARMOR_HUN);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);
Npc_SetTalentSkill (self, NPC_TALENT_BOW,2);
Npc_SetTalentSkill (self, NPC_TALENT_1H,7);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Mace_War_04);
EquipItem		(self, ItRw_Bow_War_01);
CreateInvItems  (self,ItMiNugget,300);
CreateInvItems  (self,ItMi_Stuff_OldCoin_01,300);
CreateInvItems  (self,ItMi_Stuff_Cup_02,2);
CreateInvItems  (self,ItFo_Potion_Health_01,3);
CreateInvItems  (self,ItFoMuttonRaw,3);
CreateInvItems  (self,ItForice,3);
CreateInvItems  (self,ItFoWine,5);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2806;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2806 ()
{
TA_SitAround (06,00,13,22,"SLD_HTS_BENCH2");
TA_PracticeSword (13,22,15,00,"SLD_HTS_BOSS");
TA_Smalltalk (15,00,17,30,"SLD_HTS_CAMP1");//with 2802
TA_Smoke (17,30,19,45,"SLD_HTS_CAMP1");
TA_SitAround (19,45,00,00,"SLD_HTS_BENCH3");
TA_Sleep (19,45,00,00,"SLD_HTS_BED3");
};
