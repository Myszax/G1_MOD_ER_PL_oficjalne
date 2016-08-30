instance SLD_2802_Soldier (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = Name_Soeldner;
Npctype = Npctype_Ambient;
guild = GIL_SLD;
level = 35;
voice = 8;
id = 2802;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 100;
attribute[ATR_DEXTERITY] = 100;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 350;
attribute[ATR_HITPOINTS] = 350;
	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
	//				body mesh,				head mesh,				hairmesh,	face-tex,	hair-tex,	skin	
	Mdl_SetVisualBody (self,"hum_body_Naked0",0, 1,"Hum_Head_FatBald", 36, 2, SLD_ARMOR_HUN);
	
	B_Scale (self);
	Mdl_SetModelFatness (self, 0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_2H,2);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_2H_Sword_Old_01);
EquipItem		(self, ItRw_Bow_Long_06);
CreateInvItems  (self,ItMiNugget,350);
CreateInvItems  (self,ItMi_Stuff_Pipe_01,2);
CreateInvItems  (self,ItMi_Stuff_Plate_01,1);
CreateInvItems  (self,ItMi_Stuff_Silverware_01,1);
CreateInvItems  (self,ItMi_Alchemy_Salt_01,1);
CreateInvItems  (self,ItAt_Wolf_01,5);
CreateInvItems  (self,ItAt_Teeth_01,53);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_2802;
//Generated by Gothic NPC Maker
};

FUNC VOID Rtn_start_2802 ()
{
TA_Skrzynka (09,22,11,25,"SLD_HTS_CHEST");
TA_SitAround (11,25,15,45,"SLD_HTS_BENCH3");
TA_Smalltalk (15,00,17,30,"SLD_HTS_WAY1");//with Cyrus
TA_SitCampfire (17,30,22,34,"SLD_HTS_CAMP2");
TA_Sleep (22,34,09,22,"SLD_HTS_BED4");
};

FUNC VOID Rtn_FMCstart_2802 ()
{
	TA_GuardPalisade	(01,00,13,00,	"FMC_PATH06");
	TA_GuardPalisade 	(13,00,01,00,	"FMC_PATH06");
};

