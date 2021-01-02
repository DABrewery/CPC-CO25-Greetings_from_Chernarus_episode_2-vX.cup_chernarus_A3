//PLUTO Opfor
[
	opfor,		        //0 camp
	[1000,2000,6000],	//1 revealRange [man,land,air]
	[1500,2000,3000],	//2 sensorRange [man,land,air]
	120,			    //3 QRFtimeout
	[1000,2000,6000],	//4 QRFrange [man,land,air]
	[20,30,60],		    //5 QRFdelay [min,mid,max]
	240,			    //6 ARTYtimeout
	[20,30,60],		    //7 ARTYdelay [min,mid,max]
	[1,2,4],		    //8 ARTYrounds [min,mid,max]
	[0,40,100]		    //9 ARTYerror [min,mid,max]
] call GDC_fnc_pluto;

gdc_plutoDebug = false;

//On adapte le nombre d'hostiles par rapport au nombre de joueurs
nbJoueurs = playersNumber east;

GROUPE_BLUFOR_PETIT = [
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman","rhs_vmf_flora_rifleman"],
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_grenadier","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman"],
	["rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_LAT"]
];

// Groupes Ukraine
GROUPE_BLUFOR_MOYEN = [
	["rhs_vmf_flora_sergeant", "rhs_vmf_flora_LAT","rhs_vmf_flora_LAT", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_machinegunner_assistant"],
	["rhs_vmf_flora_machinegunner", "rhs_vmf_flora_grenadier","rhs_vmf_flora_medic"]
];

// Groupes Ukraine
GROUPE_BLUFOR_GRAND = [
	["rhs_vmf_flora_officer","rhs_vmf_flora_medic", "rhs_vmf_flora_sergeant","rhs_vmf_flora_LAT", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_rifleman", "rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_machinegunner","rhs_vmf_flora_machinegunner_assistant","rhs_vmf_flora_grenadier","rhs_vmf_flora_junior_sergeant","rhs_vmf_flora_LAT","rhs_vmf_flora_rifleman","rhs_vmf_flora_rifleman"]
];

// Groupes de 6
GROUPE_BLUFOR_PETIT_US = [
	["rhsusf_army_ucp_officer","rhsusf_army_ucp_maaws", "rhsusf_army_ucp_rifleman","rhsusf_army_ucp_machinegunner","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman"]
];

// Groupes de 10
GROUPE_BLUFOR_MOYEN_US = [
	["rhsusf_army_ucp_officer","rhsusf_army_ucp_rifleman", "rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman", "rhsusf_army_ucp_rifleman",
	 "rhsusf_army_ucp_maaws", "rhsusf_army_ucp_maaws","rhsusf_army_ucp_machinegunner","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman"]
];

// Groupes de 15
GROUPE_BLUFOR_GRAND_US = [
	["rhsusf_army_ucp_officer","rhsusf_army_ucp_rifleman", "rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman", "rhsusf_army_ucp_rifleman",
	 "rhsusf_army_ucp_maaws", "rhsusf_army_ucp_maaws","rhsusf_army_ucp_machinegunner","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman",
	 "rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_aa"]
];

//Spawn des hostiles
//execVM "spawn_IA\spawnCamp.sqf";