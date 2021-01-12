/* add cargo to an existing vehicle
 * params :
 * 0: the vehicle to which the load must be added <OBJECT vehicle>
 * 1: the cargo to be loaded in the vehicle <STRING>
 */

params ["_veh", "_cargo"];

//Vide le loadout du véhicule
clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

//Ajoute le loadout
switch (_cargo) do {
	//Cargo des BMP
	case "cargo_bmp": {
		_veh addItemCargoGlobal ["Toolkit", 5];
		_veh addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 10];
		_veh addMagazineCargoGlobal ["rhs_mag_9x19_17", 20];
		_veh addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N6_AK", 50];
		_veh addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag", 4];
		_veh addItemCargoGlobal ["rhs_mag_rdg2_white",20];
		_veh addWeaponCargoGlobal ["rhs_weap_ak74m", 2];
		_veh addItemCargoGlobal ["ACE_salineIV_250",10];
		_veh addItemCargoGlobal ["ACE_packingBandage", 50];
		_veh addItemCargoGlobal ["ACE_fieldDressing", 50];
		_veh addItemCargoGlobal ["ACE_elasticBandage", 50];
		_veh addItemCargoGlobal ["ACE_quikclot", 50];
		_veh addItemCargoGlobal ["ACE_tourniquet", 20];
	};
	//Cargo du T-90
	case "cargo_mbt": {
		_veh addItemCargoGlobal ["Toolkit", 5];
	};
};