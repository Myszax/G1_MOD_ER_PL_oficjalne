//********************************************************
// MARTWI STRAŻNICY I CIENIE W OPUSZCZONEJ KOPALNI
// ER 1.4 
// 2014-05-14
// numeracja 2230/+
//********************************************************
instance GRD_2230_DeadGardist (Npc_Default)
{
//----------Info ogolne----------
name = NAME_Gardist;
Npctype = Npctype_ambient;
guild = GIL_GRD;
level = 15;
voice = 6;
id = 2230;
//----------Statystyki----------
attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 70;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 0;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 1,"Hum_Head_Bald", 46, 4,GRD_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03);
EquipItem		(self, ItRw_Crossbow_01);
CreateInvItems  (self,ItMiNugget,15);
CreateInvItems  (self,ItAmBolt,15);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2230;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2230 ()
{
TA_Stay (0,00,12,00,"ZL4");
TA_Stay (12,00,0,00,"ZL4");
};
func void rtn_statysta_2230 ()
{
TA_Boss (0,00,12,00,"ZL4");
TA_Boss (12,00,0,00,"ZL4");
};
instance GRD_2231_DeadGardist (Npc_Default)
{
//----------Info ogolne----------
name = NAME_Gardist;
Npctype = Npctype_ambient;
guild = GIL_GRD;
level = 15;
voice = 6;
id = 2231;
//----------Statystyki----------
attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 70;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 0;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",4, 0,"Hum_Head_Bald",12, 1,GRD_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03);
EquipItem		(self, ItRw_Crossbow_02);
CreateInvItems  (self,ItFoApple,5);
CreateInvItems  (self,ItFocheese,3);
CreateInvItems  (self,ItFoMutton,3);
CreateInvItems  (self,ItFoBeer,2);
CreateInvItems  (self,ItFoLoaf,2);
CreateInvItems  (self,ItFo_Potion_Health_01,5);
CreateInvItems  (self,ItLsTorch,2);
CreateInvItems  (self,ItMiNugget,15);
CreateInvItems  (self,ItAmBolt,50);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2231;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2231 ()
{
TA_Stay (0,00,12,00,"ZL8");
TA_Stay (12,00,0,00,"ZL8");
};
instance GRD_2232_DeadGardist (Npc_Default)
{
//----------Info ogolne----------
name = NAME_Gardist;
Npctype = Npctype_ambient;
guild = GIL_GRD;
level = 15;
voice = 6;
id = 2232;
//----------Statystyki----------
attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 70;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 0;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 3,"Hum_Head_Fighter",10, 3,GRD_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03);
EquipItem		(self, ItRw_Crossbow_02);
CreateInvItems  (self,ItFoApple,5);
CreateInvItems  (self,ItFocheese,3);
CreateInvItems  (self,ItFoMutton,3);
CreateInvItems  (self,ItFoBeer,2);
CreateInvItems  (self,ItFoLoaf,2);
CreateInvItems  (self,ItFo_Potion_Health_01,5);
CreateInvItems  (self,ItLsTorch,2);
CreateInvItems  (self,ItMiNugget,15);
CreateInvItems  (self,ItAmBolt,50);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2232;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2232 ()
{
TA_Stay (0,00,12,00,"VM_PATH1");
TA_Stay (12,00,0,00,"VM_PATH1");
};
instance GRD_2233_DeadGardist (Npc_Default)
{
//----------Info ogolne----------
name = NAME_Gardist;
Npctype = Npctype_ambient;
guild = GIL_GRD;
level = 15;
voice = 6;
id = 2233;
//----------Statystyki----------
attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 70;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 0;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",2, 1,"Hum_Head_Bald",16, 1,GRD_ARMOR_L);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03);
EquipItem		(self, ItRw_Crossbow_02);
CreateInvItems  (self,ItFoApple,5);
CreateInvItems  (self,ItFocheese,3);
CreateInvItems  (self,ItFoMutton,3);
CreateInvItems  (self,ItFoBeer,2);
CreateInvItems  (self,ItFoLoaf,2);
CreateInvItems  (self,ItFo_Potion_Health_01,5);
CreateInvItems  (self,ItLsTorch,2);
CreateInvItems  (self,ItMiNugget,15);
CreateInvItems  (self,ItAmBolt,50);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2233;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2233 ()
{
TA_Stay (0,00,12,00,"ZL6");
TA_Stay (12,00,0,00,"ZL6");
};
instance GRD_2250_DeadGardist (Npc_Default)
{
//----------Info ogolne----------
name = NAME_Gardist;
Npctype = Npctype_ambient;
guild = GIL_GRD;
level = 15;
voice = 6;
id = 2250;
//----------Statystyki----------
attribute[ATR_STRENGTH] = 70;
attribute[ATR_DEXTERITY] = 70;
attribute[ATR_MANA_MAX] = 10;
attribute[ATR_MANA] = 10;
attribute[ATR_HITPOINTS_MAX] = 300;
attribute[ATR_HITPOINTS] = 0;

//----------Wyglad----------

Mdl_SetVisual		(self,"HUMANS.MDS");
Mdl_ApplyOverlayMds	(self,"Humans_Militia.mds");
Mdl_SetVisualBody (self,"hum_body_naked0",0, 1,"Hum_Head_Bald", 39, 4,GRD_ARMOR_M);
B_Scale (self);
Mdl_SetModelFatness(self,1);

//----------Umiejetnasci----------

Npc_SetTalentSkill (self, NPC_TALENT_1H,7);
Npc_SetTalentSkill (self, NPC_TALENT_CROSSBOW,2);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_LightGuardsSword_03);
EquipItem		(self, ItRw_Crossbow_02);
CreateInvItems  (self,ItFoApple,5);
CreateInvItems  (self,ItFocheese,3);
CreateInvItems  (self,ItFoMutton,3);
CreateInvItems  (self,ItFoBeer,2);
CreateInvItems  (self,ItFoLoaf,2);
CreateInvItems  (self,ItFo_Potion_Health_01,5);
CreateInvItems  (self,ItLsTorch,2);
CreateInvItems  (self,ItMiNugget,15);
CreateInvItems  (self,ItAmBolt,50);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Ranged;
daily_routine = Rtn_start_2250;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2250 ()
{
TA_Stay (0,00,12,00,"ZL5");
TA_Stay (12,00,0,00,"ZL5");
};
instance STT_2251_Schatten (Npc_Default)
{
	//-------- primary data --------
	name 		=		NAME_Schatten;
	npctype 		=		NPCTYPE_AMBIENT;
	guild 		=		GIL_STT;
	level 		=		5;
	
	
	voice 		=		10;
	id 			=		2251;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	20;
	attribute[ATR_DEXTERITY] 		=	18;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;
	attribute[ATR_HITPOINTS_MAX] 	=	100;
	attribute[ATR_HITPOINTS] 		=	0;

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 1,"Hum_Head_Thief", 57,  2, STT_ARMOR_M);
        
	B_Scale (self);
	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 

	//-------- Talente -------- 

	////Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,4);	
		
	//-------- inventory --------
	
	EquipItem	(self, ItMw_1H_Sword_Short_03);
	EquipItem	(self, ItRw_Bow_Small_04);
	CreateInvItems	(self, ItAmArrow, 14);
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_2251;
};

FUNC VOID Rtn_start_2251 ()
{
	TA_Sleep		(22,30,06,30,"ZL7");
	TA_SitAround	(06,30,10,30,"ZL7");
	TA_StandAround	(10,30,22,30,"ZL7");
};
instance STT_2252_Schatten (Npc_Default)
{
	//-------- primary data --------
	name 		=		NAME_Schatten;
	npctype 		=		NPCTYPE_AMBIENT;
	guild 		=		GIL_STT;
	level 		=		5;
	
	
	voice 		=		10;
	id 			=		2252;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	20;
	attribute[ATR_DEXTERITY] 		=	18;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;	
	attribute[ATR_HITPOINTS_MAX] 	=	100;
	attribute[ATR_HITPOINTS] 		=	0;

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 1,"Hum_Head_Pony", 56,  1, STT_ARMOR_M);

	B_Scale (self);
	Mdl_SetModelFatness(self,1);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 

	//-------- Talente -------- 

	Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,4);	
		
	//-------- inventory --------
	
	EquipItem	(self, ItMw_1H_Sword_Short_01);
	EquipItem	(self, ItRw_Bow_Small_05);
	CreateInvItems	(self, ItAmArrow, 15);
	CreateInvItem	(self, ItFo_Potion_Water_01);
	CreateInvItems	(self, ItFoBeer, 2);
	
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_2252;
};

FUNC VOID Rtn_start_2252 ()
{
	TA_Sleep		(23,00,08,00,"ZL10");
	TA_Smalltalk	(08,00,19,00,"ZL10");
	TA_ArenaSpectator(19,00,23,00,"ZL10");
};
instance STT_2253_Schatten (Npc_Default)
{
	//-------- primary data --------
	name 		=		NAME_Schatten;
	npctype 		=	NPCTYPE_AMBIENT;
	guild 		=		GIL_STT;
	level 		=		7;
	
	
	voice 		=		12;
	id 			=		2253;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	30;
	attribute[ATR_DEXTERITY] 		=	18;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;
	attribute[ATR_HITPOINTS_MAX] 	=	124;
	attribute[ATR_HITPOINTS] 		=	0;

	//-------- visuals --------
	// 			animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Relaxed.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 0, 2,"Hum_Head_Bald", 12,  1, STT_ARMOR_M);
        
        B_Scale (self);
	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_COWARD; 

	//-------- Talente -------- 

	////Npc_SetTalentSkill (self, NPC_TALENT_BOW,1);
	Npc_SetTalentSkill (self, NPC_TALENT_1H,4);	
		
	//-------- inventory --------
	
	EquipItem	(self,ItMw_1H_Sword_Short_04);
	EquipItem	(self, ItRw_Bow_Small_02);
	CreateInvItems	(self, ItAmArrow, 10);
	CreateInvItem	(self, ItFo_Potion_Water_01);
	CreateInvItem	(self, ItFoApple);
	CreateInvItem	(self, ItKeLockpick);
	
	//-------------Daily Routine-------------
	daily_routine = Rtn_start_2253;
};

FUNC VOID Rtn_start_2253 () 
{
	TA_Sleep	    (23,00,08,05,"VM_PATH2");
	TA_Smalltalk	(08,05,17,00,"VM_PATH2"); 
	TA_SitAround	(17,00,19,05,"VM_PATH2");
	TA_ArenaSpectator(19,05,23,00,"VM_PATH2");
};






