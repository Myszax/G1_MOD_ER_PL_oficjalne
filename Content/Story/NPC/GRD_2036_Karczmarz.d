instance GRD_2036_Karczmarz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Manheim";
Npctype = Npctype_Main;
guild = GIL_GRD;
level = 15;
voice = 5;
id = 2036;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 50;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 200;
attribute[ATR_HITPOINTS] = 200;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 1,"Hum_Head_Bald",14, 1,GRD_ARMOR_L);
B_Scale (self);
Mdl_SetModelFatness(self,0);

	//----------Handlarz_aivar------
	self.aivar[AIV_NPCISTRADER] = true;
//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03_Old);
CreateInvItems  (self,ItMiNugget,50);
CreateInvItems  (self,ItLsTorch,10);
CreateInvItems  (self,ItMi_Stuff_Pipe_01,3);
CreateInvItems  (self,ItMi_Stuff_Cup_01,2);
CreateInvItems  (self,ItMi_Alchemy_Salt_01,3);
CreateInvItems  (self,ItFoApple,15);
CreateInvItems  (self,ItFoLoaf,15);
CreateInvItems  (self,ItFoMutton,15);
CreateInvItems  (self,ItForice,15);
CreateInvItems  (self,ItFo_Potion_Water_01,15);
CreateInvItems  (self,ItFoBeer,15);
CreateInvItems  (self,ItFoWine,9);
CreateInvItems  (self,ItFoBooze,8);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_2036;
};
FUNC VOID Rtn_start_2036 ()
{
TA_Boss (05,00,13,45,"KARCZMARZ_OC");
TA_Stand (13,45,15,00,"KARCZMARZ_OC");
TA_PlayTune (15,00,17,22,"KARCZMARZ_OC");//dodany fp
TA_Stand (17,22,21,00,"KARCZMARZ_OC");
TA_Smoke (21,00,22,00,"KARCZMARZ_OC");
TA_Sleep (00,00,05,00,"KARCZMARZ_OC");
};
