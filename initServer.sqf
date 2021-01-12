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

//Cargo des blindés
[bmp_1, "cargo_bmp"] call int_fnc_cargoVehicle;
[bmp_2, "cargo_bmp"] call int_fnc_cargoVehicle;
[mbt, "cargo_mbt"] call int_fnc_cargoVehicle;

/* Group definition */
	private _fsl    = "rhsusf_army_ucp_rifleman";
	private _lat    = "rhsusf_army_ucp_riflemanat";
	private _aa     = "rhsusf_army_ucp_aa";
	private _at     = "rhsusf_army_ucp_maaws" ;
	private _ass_at = "rhsusf_army_ucp_riflemanat";
	private _lmg    = "rhsusf_army_ucp_autorifleman";
	private _mg     = "rhsusf_army_ucp_machinegunner";
	private _ass_mg = "rhsusf_army_ucp_machinegunnera";
	private _gl     = "rhsusf_army_ucp_grenadier";
	private _tl     = "rhsusf_army_ucp_teamleader";
	private _sl     = "rhsusf_army_ucp_squadleader";
	private _medic  = "rhsusf_army_ucp_medic";

// 2 à 4 pax
GROUPE_BLUFOR_PETIT = [
	[_tl, _fsl, _aa],
	[_tl, _lat, _aa],
	[_tl, _lmg, _aa],
	[_tl, _gl, _aa],
	[_tl, _lat, _fsl, _aa],
	[_tl, _lmg, _fsl, _aa],
	[_tl, _gl, _lmg , _aa],
	[_tl, _mg, _ass_mg, _aa]
];

// 6 pax
GROUPE_BLUFOR_MOYEN = [
	[_tl, _lat, _lmg, _gl, _fsl, _fsl],
	[_tl, _lat, _mg, _ass_mg, _fsl, _fsl]
];

// 9 à 10 pax
GROUPE_BLUFOR_GRAND = [
	[_sl, _tl, _lat, _lmg, _gl, _tl, _fsl, _fsl, _fsl],
	[_sl, _tl, _mg, _ass_mg, _lat, _tl, _lmg, _fsl, _fsl],
	[_sl, _tl, _medic, _mg, _ass_mg, _lat, _tl, _lmg, _fsl, _fsl]
];

//Spawn des hostiles
execVM "spawn_IA\spawnCamp.sqf";

//Spawn des mecha
[] spawn {
	sleep 600 + random 300;
	//sleep 10;
	private _grp = selectRandom GROUPE_BLUFOR_MOYEN;
	[["mrkMechSpawn_1","mrkMechUnload_1","mrkMechSAD_1"], blufor, _grp, "RHS_M2A2_wd",18] call int_fnc_spawnMechInfantry;
	_grp = selectRandom GROUPE_BLUFOR_MOYEN;
	[["mrkMechSpawn_2","mrkMechUnload_2","mrkMechSAD_2"], blufor, _grp, "RHS_M2A2_wd",43] call int_fnc_spawnMechInfantry;
	_tbMech_3 = [getMarkerPos "mrkMechSpawn_3", 42, "RHS_M6_wd", west] call BIS_fnc_spawnVehicle;
	_wp = _tbMech_3#2 addWaypoint [getMarkerPos "mrkMechUnload_3", 0];
	_wp setWaypointType "MOVE";
};