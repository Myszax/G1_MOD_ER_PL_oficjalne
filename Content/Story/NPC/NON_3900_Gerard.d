instance NON_3900_Gerard (Npc_Default)
{
//Generated by Gothic NPC Maker
//edit by Nocturn
//----------Info ogolne----------

name = "Gerard";
Npctype = Npctype_Main;
guild = GIL_NONE;
level = 15;
voice = 12;
id = 3900;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 50;
attribute[ATR_DEXTERITY] = 50;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 200;
attribute[ATR_HITPOINTS] = 200;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Bald",6,1,GRD_ARMOR_I);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,1);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Sword_03);
EquipItem		(self, ItRw_Crossbow_01);
CreateInvItems  (self,ItAt_Wolf_01,1);
CreateInvItems  (self,GRD_ARMOR_I,1);
CreateInvItems  (self,ItMiNugget,30);
CreateInvItems  (self,ItMi_Stuff_OldCoin_01,5);
CreateInvItems  (self,ItAmBolt,30);
//----------Pozostale---------- //edit by Nocturn
fight_tactic	=	FAI_HUMAN_Master;
daily_routine = Rtn_start_3900;
//Generated by Gothic NPC Maker
};
func void rtn_start_3900() 
{
	TA_SitAround(23,0,5,0,"SKAZANIEC_CAMP");
	TA_Stand(5,0,6,0,"SKAZANIEC_CAMP");
	TA_PracticeSword(6,0,10,0,"SKAZANIEC_TRENING");
	TA_SitAround(10,0,12,0,"SKAZANIEC_CAMP");
	TA_Stand(12,0,14,0,"SKAZANIEC_PACZY");
	TA_WalkAround(14,0,17,0,"SKAZANIEC_TRENING");
	TA_PracticeSword(17,0,19,0,"SKAZANIEC_TRENING");
	TA_Stand(19,0,20,0,"SKAZANIEC_PACZY");
	TA_SitCampfire(20,0,23,0,"SKAZANIEC_CAMP");
};

func void rtn_camp_3900()  //na odwal się :( coś trzeba z tym zrobić
{
TA_WashSelf (05,20,05,40,"HUNTERS_VIEWPOINT");
TA_Stand (05,40,10,40,"HUNTERS_STAY_WP");
TA_Smoke (10,40,12,36,"HUNTERS_STAY_WP");
TA_Stand (12,36,14,25,"HUNTERS_STAY_WP");
TA_WorkMob (14,25,16,35,"HUNTERS_WORK1");
TA_CookForMe (16,35,17,00,"LOCATION_02_08");
TA_PracticeSword (17,00,18,35,"LOCATION_02_10");
TA_StandAround (18,35,05,20,"LOCATION_02_04");
};

func void rtn_cavalorn_3900 ()
{

};