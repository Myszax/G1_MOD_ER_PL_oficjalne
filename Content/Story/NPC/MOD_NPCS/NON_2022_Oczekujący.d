instance NON_2022_Oczekujacy (Npc_Default)
{
//Generated by Gothic NPC Maker

//----------Info ogolne----------

name = "K�ykacz";
Npctype = Npctype_Main;
guild = GIL_NONE;
level = 4;
voice = 2;
id = 2022;

//----------Statystyki----------

attribute[ATR_STRENGTH] = 12;
attribute[ATR_DEXTERITY] = 12;
attribute[ATR_MANA_MAX] = 0;
attribute[ATR_MANA] = 0;
attribute[ATR_HITPOINTS_MAX] = 50;
attribute[ATR_HITPOINTS] = 50;

//----------Wyglad----------

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds	(self,"Humans_Tired.mds");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex4,teethtex,ruestung	
	Mdl_SetVisualBody (self,"hum_body_Naked0",2,1,"Hum_Head_Bald",56 ,  1,-1);
B_Scale (self);
Mdl_SetModelFatness(self,0);

//----------Ekwipunek----------
EquipItem		(self, ItMw_1H_Hatchet_01);
CreateInvItems  (self,ItFoApple,2);
CreateInvItems  (self,ItFoMutton,1);
//----------Pozostale----------
fight_tactic	=	FAI_HUMAN_Coward;
daily_routine = Rtn_start_2022;
//Generated by Gothic NPC Maker
};
FUNC VOID Rtn_start_2022 ()
{
TA_Smalltalk (06,00,12,00,"KOLEJKA2");
TA_Smalltalk (12,00,06,00,"KOLEJKA2");
};
