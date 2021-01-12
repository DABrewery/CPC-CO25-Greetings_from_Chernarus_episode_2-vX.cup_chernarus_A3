/* Briefing au format sqf */

//Crédits
player createDiaryRecord ["Diary", ["Crédits", "

<font color='#ff0505'>Greetings from Chernarus : épisode 2</font color><br/><br/>

Auteur : tanin69<br/><br/>

Une mission de canards, avec LUCY et PLUTO et diverses coquineries.<br/><br/>

<font color='#ff9605'>Merci à Mystery, Sparfell, Shinriel pour les bibliothèques de GDC_Lib https://github.com/GdC-Framework/GdC_lib/

"]];


//Insertion et fin de mission
player createDiaryRecord ["Diary", ["Insertion et fin de mission", "

<font color='#82ff05'>Insertion</font color><br/>
Vous êtes insérés à <marker name='marker_spawn'>proximité immédiate de l'aéroport</marker><br/><br/>

<font color='#82ff05'>Fin de mission</font color><br/>
Victoire à l'appréciation du commandant. Fin de mission par radio Alpha 0-0-1<br/>

"]];


//Equipement
player createDiaryRecord ["Diary", ["Equipement", "

Selon l'état-major, votre section d'infanterie mécanisée de la MSV dispose de moyens adaptés.<br/><br/>

<font color='#82ff05'>Blindés</font color><br/>
> MBT : un T-90 obr. 2016<br/>
> 2 BMP-2K<br/><br/>

<font color='#82ff05'>Réparations</font color><br/>
Les équipages de blindés peuvent faire un nombre de réparations limitées (5). Les chef de bord sont plus compétents pour les réparations.<br/><br/>

<font color='#82ff05'>Support aérien</font color><br/>
Vous disposez d'un support aérien Mi-48 Kajman (via SSS). Vous ne disposez que d'un hélico.<br/>
Bien qu'il soit résistant, ne l'engagez pas n'importe comment : il y a des AA parmi les survivants et surtout un Linebacker qui va arriver sur zone. Les MBT constituent également un danger important.<br/><br/>

<font color='#82ff05'>Armement des fantassins</font color><br/>
> Fusiliers : AK-74 + PK-AS<br/>
> MG : PKP<br/>
> AT : RPG-7V2 + PGO-7V3. En munitions : OG-7V x 2 et PG-7VL x 2<br/><br/>

<font color='#82ff05'>Communications</font color><br/>
> 148 pour le CdO, l'OA et les TL<br/>
> 343 pour tous les hommes<br/><br/>

"]];

//Intel
player createDiaryRecord ["Diary", ["Renseignements", "

<font color='#ff0505'>Survivants</font color><br/>
Une douzaine d'hommes, avec une ou deux armes lourdes, quelques AT (sûrement des M136) et probablement des lanceurs AA portables.<br/><br/>

<font color='#ff0505'>Escadron blindé</font color><br/>
Deux MBT (M1A1 'Abrams'), deux IFV (M2A2 'Bradley') et un blindé anti-aérien (M6 'Bradley Linebacker').<br/><br/>

Les Abrams ont pris les devants et sont déjà sur zone ou le seront dans quelques minutes. On pense qu'ils vont prendre position sur <marker name ='zone_mbt_1'>cette zone</marker> pour le premier et sur <marker name ='zone_mbt_2'>cette zone</marker> pour le second.<br/><br/>

Les 3 Bradley foncent vers la zone. On pense qu'ils atteindront Pustochka d'ici 10 à 15 minutes et pousseront sur Vybor.<br/><br/>

Etant donné la topographie, le Linebacker prendra sûrement position dans <marker name ='zone_aa_1'>cette zone</marker>.

"]];

//Mission
player createDiaryRecord ["Diary", ["Mission", "

Eliminer les survivants US.<br/><br/>

Briser l'assaut blindé US en détruisant tous les blindés sur zone.

"]];

//Situation
player createDiaryRecord ["Diary", ["Situation", "

Vous avez pris possession de l'aéroport de Vybor. Les survivants US se sont repliés en catastrophe sur une <marker name ='repli_US'>ancienne usine à l'est de la ville</marker><br/><br/>

Evidemment, les US ont envoyé la cavalarie pour les secourir : un escadron blindé fonce sur le secteur en provenance du sud.

"]]; 

//Contexte
player createDiaryRecord ["Diary", ["Contexte", "

On va pas se mentir : ces tafioles dégnérées d'occidentaux sont en train de nous grapiller notre zone d'influence.<br/><br/>

On va leur péter la gueule et rétablir un régime d'hommes et un truc stable, pas basé sur des valeurs molles du style respect des différences gna gna gna.

"]];