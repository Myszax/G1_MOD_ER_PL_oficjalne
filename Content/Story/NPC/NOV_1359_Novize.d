// Novize nur f�r Kap. 6 Orktempel benutzen

instance NOV_1359_Novize (Npc_Default)
{
	//-------- primary data --------
	name 		=	NAME_MadNovice;
	Npctype 	=	npctype_main;
	guild 		=	GIL_GUR;
	level 		=	30;
	flags 		=	0;
	
	voice 		=	3;
	id 			=	1359;
		
	//-------- abilities --------
	attribute[ATR_STRENGTH] 		=	115;
	attribute[ATR_DEXTERITY] 		=	50;
	attribute[ATR_MANA_MAX] 		=	0;
	attribute[ATR_MANA] 			=	0;
	attribute[ATR_HITPOINTS_MAX] 	=	250;
	attribute[ATR_HITPOINTS] 		=	250;

	//------ Protection -------
	protection	[PROT_BLUNT]		=	500;
	protection	[PROT_EDGE]			=	500;
	protection	[PROT_POINT]		=	500;
	protection	[PROT_FIRE]			=	80;
	protection	[PROT_FLY]			=	80;
	protection	[PROT_MAGIC]		=	50;
	
	//-------- visuals --------
	// 				animations
	Mdl_SetVisual		(self,"HUMANS.MDS");
	//			body mesh     ,bdytex,skin,head mesh     ,headtex,teethtex,ruestung
	Mdl_SetVisualBody (self,"hum_body_Naked0", 1, 1,"Hum_Head_FatBald", 117,  2, DarkNovize_Armor_H);

	B_Scale (self);
	Mdl_SetModelFatness(self,0);
	
	fight_tactic	=	FAI_HUMAN_STRONG;

	//-------- Talente --------
	
		
	//-------- inventory --------

	CreateInvItem (self, ItMw_2H_Staff_02);
	//CreateInvItem (self, ItFoSoup);
	//CreateInvItem (self, ItMiJoint);
	        
	//-------------Daily Routine-------------
	daily_routine = Rtn_OT_1359;

};

FUNC VOID Rtn_start_1359 ()
{
	TA_OTMeditate	(24,00,06,00,"TPL_408");
  	TA_OTMeditate	(06,00,24,00,"TPL_408"); 
};


FUNC VOID Rtn_OT_1359 ()
{
	TA_OTMeditate	(24,00,06,00,"TPL_387");
  	TA_OTMeditate	(06,00,24,00,"TPL_387");	 
};
