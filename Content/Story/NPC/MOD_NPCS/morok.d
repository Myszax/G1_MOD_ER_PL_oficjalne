instance GRD_7894_Morok (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	"Morok";
Npctype = NPCTYPE_FRIEND;
guild = GIL_GRD;
level 	= 45;
voice = 13;
id = 7894;
flags	 	=		NPC_FLAG_IMMORTAL;
//----------Statystyki----------

attribute[ATR_STRENGTH] = 120;
attribute[ATR_DEXTERITY] = 120;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 400;
attribute[ATR_HITPOINTS] = 400;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 3,"Hum_Head_Fighter",10, 3,GRD_ARMOR_H);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Sword_05);
EquipItem		(self, ItRw_Crossbow_02_Z);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_7894;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7894 ()
{
TA_SitAround (09,00,12,45,"MOROK");
TA_Boss (12,45,15,22,"MOROK2");
TA_Stand (15,22,18,00,"MOROK");
TA_SitAround (18,00,09,99,"MOROK");
};
FUNC VOID Rtn_atak_7894 ()
{
TA_GuidePC (09,00,18,00,"TPL_ALCHEMY");
TA_GuidePC (18,00,09,00,"TPL_ALCHEMY");
};
instance GRD_7895_Patter (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	"Patter";
Npctype = NPCTYPE_FRIEND;
guild = GIL_GRD;
level 	= 45;
voice = 13;
id = 7895;
flags	 	=		NPC_FLAG_IMMORTAL;
//----------Statystyki----------

attribute[ATR_STRENGTH] = 140;
attribute[ATR_DEXTERITY] = 140;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 400;
attribute[ATR_HITPOINTS] = 400;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Pony",0, 0,GRD_ARMOR_H);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Sword_05);
EquipItem		(self, ItRw_Crossbow_02_Z);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Strong;
daily_routine = Rtn_start_7895;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7895 ()
{
TA_Boss (09,00,12,45,"MOROK3");
TA_Stand (12,45,15,22,"MOROK3");
TA_Boss (15,22,18,00,"MOROK3");
TA_SitAround (18,00,09,00,"MOROK4");
};
FUNC VOID Rtn_atak_7895 ()
{
TA_FollowPC (09,00,12,45,"MOROK3");
TA_FollowPC (12,45,09,00,"MOROK3");
};
// pipl 1, 2, 3
instance GRD_7896_Gardist (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	NAME_Gardist;
Npctype = NPCTYPE_ambient;
guild = GIL_GRD;
level = 30;
voice = 13;
id = 7896;

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
Mdl_SetVisualBody (self,"hum_body_naked0",0, 2,"Hum_Head_Pony",115, 1,GRD_ARMOR_M);
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
daily_routine = Rtn_start_7896;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7896 ()
{
TA_SitCampfire (09,00,12,45,"PIPL2");
TA_Stand (12,45,15,22,"PIPL2");
TA_PracticeSword (15,22,18,00,"PIPL2");
TA_PlayTune (18,00,09,00,"PIPL2"); //fp dodany
};
FUNC VOID Rtn_atak_7896 ()
{
TA_FollowPC (09,00,12,45,"PIPL2");
TA_FollowPC (12,45,09,00,"PIPL2");

};
instance GRD_7897_Gardist (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	NAME_Gardist;
Npctype = NPCTYPE_ambient;
guild = GIL_GRD;
level = 30;
voice = 7;
id = 7897;

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
Mdl_SetVisualBody (self,"hum_body_naked0",1, 1,"Hum_Head_Bald",54, 1,GRD_ARMOR_M);
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
daily_routine = Rtn_start_7897;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7897 ()
{
TA_skrzynka (09,00,12,45,"PIPL1");
TA_PracticeSword (12,45,15,22,"PIPL3");
TA_Stand (15,22,18,00,"PIPL3");
TA_Sleep (18,00,09,00,"SPAC2");
};
FUNC VOID Rtn_atak_7897 ()
{
TA_FollowPC (09,00,12,45,"PIPL1");
TA_FollowPC (12,45,09,00,"PIPL1");
};
instance GRD_7898_Gardist (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name 		=	NAME_Gardist;
Npctype = NPCTYPE_ambient;
guild = GIL_GRD;
level = 30;
voice = 6;
id = 7898;

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
Mdl_SetVisualBody (self,"hum_body_naked0",0, 1,"Hum_Head_Bald",99, 1,GRD_ARMOR_M);
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
daily_routine = Rtn_start_7898;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7898 ()
{
TA_PracticeSword (09,00,12,45,"PIPL3");
TA_skrzynka (12,45,15,22,"PIPL1");
TA_Stand (15,22,18,00,"PIPL1");
TA_Sleep (18,00,09,00,"SPAC1");
};
FUNC VOID Rtn_atak_7898 ()
{
TA_FollowPC (09,00,12,45,"PIPL1");
TA_FollowPC (12,45,09,00,"PIPL1");
};
instance TPL_7899_Templer (Npc_Default)
{
	//-------- primary data --------
	name =							"Szpieg z Bractwa";
	npctype =						NPCTYPE_MAIN;
	guild =							GIL_TPL;
	level =							17;
	
	voice =							13;
	id =							7899;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] =		85;
	attribute[ATR_DEXTERITY] =		65;
	attribute[ATR_MANA_MAX] =		0;
	attribute[ATR_MANA] =			0;
	attribute[ATR_HITPOINTS_MAX] =	244;
	attribute[ATR_HITPOINTS] =		244;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1 ,"Hum_Head_Psionic", 64 ,  1, TPL_ARMOR_M);

	B_Scale (self);
	Mdl_SetModelFatness(self,1);
	
	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_2H,4);
	
	//-------- inventory --------
	
	EquipItem (self, ItMw_2H_Sword_Light_01);
	CreateInvItem (self, ItFoSoup);
	CreateInvItem (self, ItMiJoint_1);
	
	
	//------------- //MISSIONs-------------

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_7899;
};

FUNC VOID Rtn_start_7899 () 
{
	TA_SitCampfire	(06,00,18,00,"BRA_P");
	TA_SitCampfire	(18,00,06,00,"BRA_P");
};
FUNC VOID Rtn_camp_7899 ()
{
	TA_SitCampfire	(06,00,18,00,"BRA_B");
	TA_SitCampfire	(18,00,06,00,"BRA_B");
};

instance NON_7899_Poszukiwacz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = NAME_Poszukiwacz;
Npctype = Npctype_Rogue;
guild = GIL_WOLF;
level = 30;
voice = 14;
id = 7905;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 100;
attribute[ATR_DEXTERITY] = 100;
attribute[ATR_MANA_MAX] = 300;
attribute[ATR_MANA] = 300;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 300;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Psionic",19, 0,PoszukiwaczArmor);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_MAGE,6);

//----------Ekwipunek----------
//edit by Nocturn
CreateInvItems  (self,ItArRuneThunderball,1);
CreateInvItems  (self,ItArRuneStormFist,1);
CreateInvItems  (self,ItFo_Potion_Mana_01,3);
CreateInvItems  (self,ItArScrollfirerain,1);
CreateInvItems  (self,ItMi_Alchemy_Quicksilver_01,2);
CreateInvItems  (self,ItFo_Plants_mountainmoos_01,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Mage;
daily_routine = Rtn_start_7905;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7905 ()
{
TA_PracticeMagic (06,00,18,00,"OW_PATH_RUIN_9");
TA_PracticeMagic (18,00,06,00,"OW_PATH_RUIN_9");
};

instance NON_7900_Poszukiwacz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "Kultysta";
Npctype = Npctype_Rogue;
guild = GIL_WOLF;
level = 30;
voice = 14;
id = 7900;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 100;
attribute[ATR_DEXTERITY] = 100;
attribute[ATR_MANA_MAX] = 300;
attribute[ATR_MANA] = 300;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 300;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Psionic",19, 0,PoszukiwaczArmor);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_MAGE,6);

//----------Ekwipunek----------
//edit by Nocturn
CreateInvItems  (self,ItArRuneThunderball,1);
CreateInvItems  (self,ItArRuneStormFist,1);
CreateInvItems  (self,ItFo_Potion_Mana_01,3);
CreateInvItems  (self,ItArScrollfirerain,1);
CreateInvItems  (self,ItMi_Alchemy_Quicksilver_01,2);
CreateInvItems  (self,ItFo_Plants_mountainmoos_01,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Mage;
daily_routine = Rtn_start_7900;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7900 ()
{
TA_PracticeMagic (06,00,18,00,"POSZ2");
TA_PracticeMagic (18,00,06,00,"POSZ2");
};

instance NON_7901_Poszukiwacz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = NAME_Poszukiwacz;
Npctype = Npctype_Rogue;
guild = GIL_WOLF;
level = 30;
voice = 14;
id = 7901;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 100;
attribute[ATR_DEXTERITY] = 100;
attribute[ATR_MANA_MAX] = 300;
attribute[ATR_MANA] = 300;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 300;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Psionic",19, 0,PoszukiwaczArmor);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_MAGE,6);

//----------Ekwipunek----------
//edit by Nocturn
CreateInvItems  (self,ItArRuneThunderbolt,1);
CreateInvItems  (self,ItArRuneStormFist,1);
CreateInvItems  (self,ItFo_Potion_Mana_01,3);
CreateInvItems  (self,ItArScrollfirerain,1);
CreateInvItems  (self,ItMi_Alchemy_Quicksilver_01,2);
CreateInvItems  (self,ItFo_Plants_mountainmoos_01,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Mage;
daily_routine = Rtn_start_7900;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7901 ()
{
TA_PracticeMagic (06,00,18,00,"OFIARA2");
TA_PracticeMagic (18,00,06,00,"OFIARA2");
};

instance NON_7902_Poszukiwacz (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = NAME_Poszukiwacz;
Npctype = Npctype_Rogue;
guild = GIL_WOLF;
level = 30;
voice = 14;
id = 7902;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 100;
attribute[ATR_DEXTERITY] = 100;
attribute[ATR_MANA_MAX] = 300;
attribute[ATR_MANA] = 300;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 300;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Mage.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 0,"Hum_Head_Psionic",19, 0,PoszukiwaczArmor);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_MAGE,6);

//----------Ekwipunek----------
//edit by Nocturn
CreateInvItems  (self,ItArRuneThunderball,1);
CreateInvItems  (self,ItArRuneStormFist,1);
CreateInvItems  (self,ItFo_Potion_Mana_01,3);
CreateInvItems  (self,ItArScrollfirerain,1);
CreateInvItems  (self,ItMi_Alchemy_Quicksilver_01,2);
CreateInvItems  (self,ItFo_Plants_mountainmoos_01,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Mage;
daily_routine = Rtn_start_7900;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_7902 ()
{
TA_PracticeMagic (06,00,18,00,"OFIARA1");
TA_PracticeMagic (18,00,06,00,"OFIARA1");
};

