func void OREVEIN2_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	var C_NPC rock; rock = Hlp_GetNpc(PC_Rockefeller);
	
	if ( (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))||(Hlp_GetInstanceID(self)==Hlp_GetInstanceID(rock)) ) 
	{	
	
	//**********skill check
	if (Npc_GetTalentSkill(hero, NPC_TALENT_REGENERATE) == 1)
	{
	monolog = OreVein_02_OM;
	self.aivar[AIV_INVINCIBLE]=TRUE;
	Ai_ProcessInfos (her);
	}
	else
	{
	PrintS_Ext("Nie potrafisz wydobywa� surowc�w!", COL_RED);
	};
	//*********skill check end
	
	};
};

//========================================
//-----------------> OPCJA *KONIEC* 
//========================================

INSTANCE DIA_PC_HeroENdMinning2_EXIT(C_INFO)
{
	npc             = PC_Hero;
	nr              = 999;
	condition		= DIA_PC_HeroENdMinning2_EXIT_Condition;
	information		= DIA_PC_HeroENdMinning2_EXIT_Info;
	permanent		= TRUE;
	description     = DIALOG_ENDE;
};

FUNC INT DIA_PC_HeroENdMinning2_EXIT_Condition()
{
    if (monolog == OreVein_02_OM)
    {
    return TRUE;
    };
};

FUNC VOID DIA_PC_HeroENdMinning2_EXIT_Info()
{
	self.aivar[AIV_INVINCIBLE]=FALSE;
	AI_StopProcessInfos	(self);
};

//========================================
//-----------------> LOW_STRIKE22
//========================================
var int dug_ore2;
var int power_strike_progress2;
const int ore_limit2 = 133;
var int all_dug_ore2;

INSTANCE DIA_PC_Hero_LOW_STRIKE2 (C_INFO)
{
   npc          = PC_Hero;
   nr           = 1;
   condition    = DIA_PC_Hero_LOW_STRIKE2_Condition;
   information  = DIA_PC_Hero_LOW_STRIKE2_Info;
   permanent	= true;
   description	= "(Uderz lekko)";
};

FUNC INT DIA_PC_Hero_LOW_STRIKE2_Condition()
{
    if (monolog == OreVein_02_OM)
    {
    return TRUE;
    };
};


FUNC VOID DIA_PC_Hero_LOW_STRIKE2_Info()
{

if (all_dug_ore2 < ore_limit2)
{
//----losowanie dropa-----------
dug_ore2 = Hlp_Random (4);
if (dug_ore2 == 0)
{
PrintScreen	("Nie uda�o ci si� nic wydoby�!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
power_strike_progress2 = power_strike_progress2 + 4;
};
if (dug_ore2 == 1)
{
PrintScreen	("Wydobywasz 7 bry�ek rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 7);
power_strike_progress2 = power_strike_progress2 +1;
all_dug_ore2 = all_dug_ore2 + 7;
};
if (dug_ore2 == 2)
{
PrintScreen	("Wydobywasz 12 bry�ek rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 12);
power_strike_progress2 = power_strike_progress2 +2;
all_dug_ore2 = all_dug_ore2 + 12;
};
if (dug_ore2 == 3)
{
PrintScreen	("Wydobywasz 20 bry�ek rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 20); 
power_strike_progress2 = power_strike_progress2 +0;
all_dug_ore2 = all_dug_ore2 + 20;
};
//----losowanie dropa end--------

}
else
{
PrintS_Ext("Z�o�e wyczerpane!", COL_WHITE);
};

};

//========================================
//-----------------> MID_STRIKE2
//========================================

INSTANCE DIA_PC_Hero_MID_STRIKE2 (C_INFO)
{
   npc          = PC_Hero;
   nr           = 2;
   condition    = DIA_PC_Hero_MID_STRIKE2_Condition;
   information  = DIA_PC_Hero_MID_STRIKE2_Info;
   permanent	= true;
   description	= "(Uderz mocno)";
};

FUNC INT DIA_PC_Hero_MID_STRIKE2_Condition()
{
    if (monolog == OreVein_02_OM)
    && (power_strike_progress2 >= 4)
    {
    return TRUE;
    };
};


FUNC VOID DIA_PC_Hero_MID_STRIKE2_Info()
{
//zerowanie progresu na mocne uderzenie
power_strike_progress2 = 0;

if (all_dug_ore2 < ore_limit2)
{
//-----losowanie dropa
if (dug_ore2 == 0)
{
PrintScreen	("Wydobywasz 12 bry�ek rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 12);
all_dug_ore2 = all_dug_ore2 + 12;
};
if (dug_ore2 == 1)
{
PrintScreen	("Wydobywasz 17 bry�ek rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 17);
all_dug_ore2 = all_dug_ore2 + 17;
};
if (dug_ore2 == 2)
{
PrintScreen	("Wydobywasz 22 bry�ki rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 22);
all_dug_ore2 = all_dug_ore2 + 22;
};
if (dug_ore2 == 3)
{
PrintScreen	("Wydobywasz 33 bry�ki rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 33); 
all_dug_ore2 = all_dug_ore2 + 33;
};
//----losowanie dropa end--------

}
else
{
PrintS_Ext("Z�o�e wyczerpane!", COL_WHITE);
};

};

//========================================
//-----------------> POWER_STRIKE2
//========================================

INSTANCE DIA_PC_Hero_POWER_STRIKE2 (C_INFO)
{
   npc          = PC_Hero;
   nr           = 3;
   condition    = DIA_PC_Hero_POWER_STRIKE2_Condition;
   information  = DIA_PC_Hero_POWER_STRIKE2_Info;
   permanent	= true;
   description	= "(Uderz bardzo mocno)";
};

FUNC INT DIA_PC_Hero_POWER_STRIKE2_Condition()
{
    if (monolog == OreVein_02_OM)
    && (power_strike_progress2 >= 7)
    {
    return TRUE;
    };
};


FUNC VOID DIA_PC_Hero_POWER_STRIKE2_Info()
{
//zerowanie progresu na mocne uderzenie
power_strike_progress2 = 0;


dug_ore2 = Hlp_Random (2);
if (all_dug_ore2 < ore_limit2)
{
//-----losowanie dropa
if (dug_ore2 == 0)
{
PrintScreen	("Wydobywasz 42 bry�ki rudy!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
CreateInvItems (hero, ItMiNugget, 42);
all_dug_ore2 = all_dug_ore2 + 42;
};
if (dug_ore2 == 1)
{
};
//----losowanie dropa end--------

}
else
{
PrintScreen	("Nie uda�o si�!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
};

};

