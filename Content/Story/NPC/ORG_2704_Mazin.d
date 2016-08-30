instance ORG_2704_Mazin (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Mazin";
Npctype = Npctype_Main;
guild = GIL_ORG;
level = 15;
voice = 1;
id = 2704;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 30;
attribute[ATR_DEXTERITY] = 30;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 200;
attribute[ATR_HITPOINTS] = 200;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",1, 3,"Hum_Head_Bald",1, 3,ORG_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,4);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Mace_02);
CreateInvItems  (self,ItAt_Teeth_01,5);
CreateInvItems  (self,ItAt_Claws_01,5);
CreateInvItems  (self,ItFoMuttonRaw,3);
CreateInvItems  (self,ItFosoup,2);
CreateInvItems  (self,ItMiNugget,33);
CreateInvItems  (self,ItKeLockpick,12);
CreateInvItems  (self,ItFoChesseSoup,30);
CreateInvItems  (self,ItFoBeer,30);
CreateInvItems  (self,ItFoWine,30);
CreateInvItems  (self,ItFoBooze,30);
CreateInvItems  (self,ItFoChesseSoup,30);
CreateInvItems  (self,JajoSca2,30);

//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_2704;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2704 ()
{
TA_Smoke (06,00,12,45,"KARCZMARZ2");
TA_Cook (12,45,18,00,"KARCZMARZ3");
TA_Stand (18,00,06,00,"KARCZMARZ2");
};
FUNC VOID Rtn_wpierdol_2704 ()
{
TA_Stay (06,00,18,00,"JAKASCUJNIA");
TA_Stay (18,00,06,00,"JAKASCUJNIA");
};
