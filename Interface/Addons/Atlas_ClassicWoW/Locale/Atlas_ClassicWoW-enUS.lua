-- $Id: Atlas_ClassicWoW-enUS.lua 53 2020-01-01 14:28:15Z arith $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2019 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_ClassicWoW", "enUS", true, true);

if L then
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--Classic Acronyms
	L["AQ"] = "AQ"; -- Ahn'Qiraj
	L["AQ20"] = "AQ20"; -- Ruins of Ahn'Qiraj
	L["AQ40"] = "AQ40"; -- Temple of Ahn'Qiraj
	L["BFD"] = "BFD"; -- Blackfathom Deeps
	L["BRD"] = "BRD"; -- Blackrock Depths
	L["BRM"] = "BRM"; -- Blackrock Mountain
	L["BWL"] = "BWL"; -- Blackwing Lair
	L["DM"] = "DM"; -- Dire Maul
	L["Gnome"] = "Gnome"; -- Gnomeregan
	L["LBRS"] = "LBRS"; -- Lower Blackrock Spire
	L["Mara"] = "Mara"; -- Maraudon
	L["MC"] = "MC"; -- Molten Core
	L["RFC"] = "RFC"; -- Ragefire Chasm
	L["RFD"] = "RFD"; -- Razorfen Downs
	L["RFK"] = "RFK"; -- Razorfen Kraul
	L["ST"] = "ST"; -- Sunken Temple
	L["Strat"] = "Strat"; -- Stratholme
	L["Stocks"] = "Stocks"; -- The Stockade
	L["Ulda"] = "Ulda"; -- Uldaman
	L["WC"] = "WC"; -- Wailing Caverns
	L["ZF"] = "ZF"; -- Zul'Farrak

--************************************************
-- Instance Entrance Maps
--************************************************
	-- Blackrock Mountain (Entrance)
	L["Bodley"] = "Bodley" 
	L["Orb of Command"] = "Orb of Command" 
	L["Scarshield Quartermaster <Scarshield Legion>"] = "Scarshield Quartermaster <Scarshield Legion>"
	L["The Behemoth"] = "The Behemoth"
	
	--Dire Maul (Entrance)
	L["Dire Pool"] = "Dire Pool";
	L["Dire Maul Arena"] = "Dire Maul Arena";
	L["Elder Mistwalker"] = "Elder Mistwalker";

	--Gnomeregan (Entrance)
	L["Torben Zapblast <Teleportation Specialist>"] = "Torben Zapblast <Teleportation Specialist>";

	--Maraudon (Entrance)
	L["The Nameless Prophet"] = "The Nameless Prophet";
	L["Cursed Centaur"] = "Cursed Centaur";
	L["Kherrah"] = "Kherrah";

	--Sunken Temple (Entrance)
	L["Priestess Udum'bra"] = "Priestess Udum'bra";
	L["Gomora the Bloodletter"] = "Gomora the Bloodletter";
	L["Captain Wyrmak"] = "Captain Wyrmak";

--************************************************
-- Kalimdor Instances (Classic)
--************************************************
	--Blackfathom Deeps
	L["Ghamoo-ra"] = "Ghamoo-ra";
	L["Lady Sarevess"] = "Lady Sarevess";
	L["Gelihast"] = "Gelihast";
	L["Lorgus Jett"] = "Lorgus Jett";
	L["Baron Aquanis"] = "Baron Aquanis";
	L["Twilight Lord Kelris"] = "Twilight Lord Kelris";
	L["Old Serra'kis"] = "Old Serra'kis";
	L["Aku'mai"] = "Aku'mai";

	L["Lord Roccor"] = "Lord Roccor";
	L["Bael'Gar"] = "Bael'Gar";
	L["Houndmaster Grebmar"] = "Houndmaster Grebmar";
	L["High Interrogator Gerstahn"] = "High Interrogator Gerstahn";
	L["High Justice Grimstone"] = "High Justice Grimstone";
	L["Pyromancer Loregrain"] = "Pyromancer Loregrain";
	L["General Angerforge"] = "General Angerforge";
	L["Golem Lord Argelmach"] = "Golem Lord Argelmach";
	L["Ribbly Screwspigot"] = "Ribbly Screwspigot";
	L["Hurley Blackbreath"] = "Hurley Blackbreath";
	L["Plugger Spazzring"] = "Plugger Spazzring";
	L["Phalanx"] = "Phalanx";
	L["Lord Incendius"] = "Lord Incendius";
	L["Fineous Darkvire"] = "Fineous Darkvire";
	L["Warder Stilgiss"] = "Warder Stilgiss"
	L["Verek"] = "Verek"
	L["Dark Coffer"] = "Dark Coffer";
	L["Ambassador Flamelash"] = "Ambassador Flamelash";
	L["Chest of The Seven"] = "Chest of The Seven";
	L["Magmus"] = "Magmus";
	L["Princess Moira Bronzebeard"] = "Princess Moira Bronzebeard";
	L["Emperor Dagran Thaurissan"] = "Emperor Dagran Thaurissan";
	
	L["Je'neu Sancrea <The Earthen Ring>"] = "Je'neu Sancrea <The Earthen Ring>";
	L["Sentinel Aluwyn"] = "Sentinel Aluwyn";
	L["Zeya"] = "Zeya";
	L["Altar of Blood"] = "Altar of Blood";
	L["Fire of Aku'mai"] = "Fire of Aku'mai";
	L["Spoils of Blackfathom"] = "Spoils of Blackfathom";

	--Dire Maul (East)
	L["Pusillin"] = "Pusillin"
	L["Lethtendris"] = "Lethtendris"
	L["Hydrospawn"] = "Hydrospawn"
	L["Zevrim Thornhoof"] = "Zevrim Thornhoof"
	L["Alzzin the Wildshaper"] = "Alzzin the Wildshaper"
	L["\"Ambassador\" Dagg'thol"] = "\"Ambassador\" Dagg'thol";
	L["Furgus Warpwood"] = "Furgus Warpwood";
	L["Old Ironbark"] = "Old Ironbark";
	L["Ironbark the Redeemed"] = "Ironbark the Redeemed";
	L["Chase Begins"] = "Chase Begins";
	L["Chase Ends"] = "Chase Ends";

	--Dire Maul (North)
	L["Guard Mol'dar"] = "Guard Mol'dar"
	L["Stomper Kreeg"] = "Stomper Kreeg"
	L["Guard Fengus"] = "Guard Fengus"
	L["Guard Slip'kik"] = "Guard Slip'kik"
	L["Captain Kromcrush"] = "Captain Kromcrush"
	L["Cho'Rush the Observer"] = "Cho'Rush the Observer"
	L["King Gordok"] = "King Gordok"
	L["Druid of the Talon"] = "Druid of the Talon";
	L["Stonemaul Ogre"] = "Stonemaul Ogre";
	L["Knot Thimblejack"] = "Knot Thimblejack";

	--Dire Maul (West)
	L["Tendris Warpwood"] = "Tendris Warpwood"
	L["Magister Kalendris"] = "Magister Kalendris"
	L["Tsu'zee"] = "Tsu'zee"
	L["Illyanna Ravenoak"] = "Illyanna Ravenoak"
	L["Immol'thar"] = "Immol'thar"
	L["Prince Tortheldrin"] = "Prince Tortheldrin"
	L["Lord Hel'nurath"] = "Lord Hel'nurath"
	L["Ferra"] = "Ferra";
	L["Estulan <The Highborne>"] = "Estulan <The Highborne>";
	L["Shen'dralar Watcher"] = "Shen'dralar Watcher";
	L["Pylons"] = "Pylons";
	L["Ancient Equine Spirit"] = "Ancient Equine Spirit";
	L["Shen'dralar Ancient"] = "Shen'dralar Ancient";
	L["Falrin Treeshaper"] = "Falrin Treeshaper";
	L["Lorekeeper Lydros"] = "Lorekeeper Lydros";
	L["Lorekeeper Javon"] = "Lorekeeper Javon";
	L["Lorekeeper Kildrath"] = "Lorekeeper Kildrath";
	L["Lorekeeper Mykos"] = "Lorekeeper Mykos";
	L["Shen'dralar Provisioner"] = "Shen'dralar Provisioner";

	--Maraudon
	L["Noxxion"] = "Noxxion"
	L["Razorlash"] = "Razorlash"
	L["Lord Vyletongue"] = "Lord Vyletongue"
	L["Celebras the Cursed"] = "Celebras the Cursed"
	L["Landslide"] = "Landslide"
	L["Tinkerer Gizlock"] = "Tinkerer Gizlock"
	L["Rotgrip"] = "Rotgrip"
	L["Princess Theradras"] = "Princess Theradras"

	L["Elder Splitrock"] = "Elder Splitrock";
	L["Celebras the Redeemed"] = "Celebras the Redeemed";

	--OnyxiasLair
	L["Drakefire Amulet"] = "Drakefire Amulet"
	L["Onyxian Warders"] = "Onyxian Warders"
	L["Whelp Eggs"] = "Whelp Eggs"
	L["Onyxia"] = "Onyxia"

	--Ragefire Chasm
	L["Taragaman the Hungerer"] = "Taragaman the Hungerer";
	L["Oggleflint"] = "Oggleflint";
	L["Jergosh the Invoker"] = "Jergosh the Invoker";
	L["Bazzalan"] = "Bazzalan";
	
	L["Commander Bagran"] = "Commander Bagran";
	L["Invoker Xorenth"] = "Invoker Xorenth";
	L["Scout Cage"] = "Scout Cage";

	--Razorfen Downs
	L["Tuten'kash"] = "Tuten'kash"
	L["Plaguemaw the Rotting"] = "Plaguemaw the Rotting"
	L["Mordresh Fire Eye"] = "Mordresh Fire Eye"
	L["Ragglesnout"] = "Ragglesnout"
	L["Glutton"] = "Glutton"
	L["Amnennar the Coldbringer"] = "Amnennar the Coldbringer"
	L["Koristrasza"] = "Koristrasza";
	L["Amnennar's Phylactery"] = "Amnennar's Phylactery";

	--Razorfen Kraul
	L["Roogug"] = "Roogug";
	L["Aggem Thorncurse"] = "Aggem Thorncurse";
	L["Death Speaker Jargba"] = "Death Speaker Jargba";
	L["Overlord Ramtusk"] = "Overlord Ramtusk";
	L["Agathelos the Raging"] = "Agathelos the Raging";
	L["Charlga Razorflank"] = "Charlga Razorflank";
	L["Auld Stonespire"] = "Auld Stonespire";
	L["Spirit of Agamaggan <Ancient>"] = "Spirit of Agamaggan <Ancient>";

	--Ruins of Ahn'Qiraj
	L["Kurinnaxx"] = "Kurinnaxx"
	L["General Rajaxx"] = "General Rajaxx"
	L["Moam"] = "Moam"
	L["Buru the Gorger"] = "Buru the Gorger"
	L["Ayamiss the Hunter"] = "Ayamiss the Hunter"
	L["Ossirian the Unscarred"] = "Ossirian the Unscarred"
	L["Four Kaldorei Elites"] = "Four Kaldorei Elites";
	L["Captain Qeez"] = "Captain Qeez";
	L["Captain Tuubid"] = "Captain Tuubid";
	L["Captain Drenn"] = "Captain Drenn";
	L["Captain Xurrem"] = "Captain Xurrem";
	L["Major Yeggeth"] = "Major Yeggeth";
	L["Major Pakkon"] = "Major Pakkon";
	L["Colonel Zerran"] = "Colonel Zerran";
	L["Safe Room"] = "Safe Room";
	
	--Shadowfang Keep
	L["Rethilgore"] = "Rethilgore";
	L["Fel Steed"] = "Fel Steed";
	L["Shadow Charger"] = "Shadow Charger";
	L["Razorclaw the Butcher"] = "Razorclaw the Butcher";
	L["Baron Silverlaine"] = "Baron Silverlaine";
	L["Commander Springvale"] = "Commander Springvale";
	L["Odo the Blindwatcher"] = "Odo the Blindwatcher";
	L["Deathsworn Captain"] = "Deathsworn Captain";
	L["Fenrus the Devourer"] = "Fenrus the Devourer";
	L["Wolf Master Nandos"] = "Wolf Master Nandos";
	L["Archmage Arugal"] = "Archmage Arugal";

	--Temple of Ahn'Qiraj
	L["The Prophet Skeram"] = "The Prophet Skeram"
	L["Battleguard Sartura"] = "Battleguard Sartura"
	L["Fankriss the Unyielding"] = "Fankriss the Unyielding"
	L["Princess Huhuran"] = "Princess Huhuran"
	L["Vek'lor"] = "Vek'lor"
	L["Vek'nilash"] = "Vek'nilash"
	L["C'Thun"] = "C'Thun"
	L["Yauj"] = "Yauj"
	L["Vem"] = "Vem"
	L["Kri"] = "Kri"
	L["Viscidus"] = "Viscidus"
	L["Ouro"] = "Ouro"
	L["Andorgos <Brood of Malygos>"] = "Andorgos <Brood of Malygos>";
	L["Vethsera <Brood of Ysera>"] = "Vethsera <Brood of Ysera>";
	L["Kandrostrasz <Brood of Alexstrasza>"] = "Kandrostrasz <Brood of Alexstrasza>";
	L["Arygos"] = "Arygos";
	L["Caelestrasz"] = "Caelestrasz";
	L["Merithra of the Dream"] = "Merithra of the Dream";

	--Wailing Caverns
	L["Kresh"] = "Kresh";
	L["Lady Anacondra"] = "Lady Anacondra";
	L["Lord Cobrahn"] = "Lord Cobrahn";
	L["Deviate Faerie Dragon"] = "Deviate Faerie Dragon";
	L["Lord Pythas"] = "Lord Pythas";
	L["Skum"] = "Skum";
	L["Lord Serpentis"] = "Lord Serpentis";
	L["Verdan the Everliving"] = "Verdan the Everliving";
	L["Kresh"] = "Kresh";
	L["Mutanus the Devourer"] = "Mutanus the Devourer";

	--Zul'Farrak
	L["Antu'sul"] = "Antu'sul"
	L["Theka the Martyr"] = "Theka the Martyr"
	L["Witch Doctor Zum'rah"] = "Witch Doctor Zum'rah"
	L["Nekrum Gutchewer"] = "Nekrum Gutchewer"
	L["Shadowpriest Sezz'ziz"] = "Shadowpriest Sezz'ziz"
	L["Sergeant Bly"] = "Sergeant Bly"
	L["Hydromancer Velratha"] = "Hydromancer Velratha"
	L["Dustwraith"] = "Dustwraith"
	L["Chief Ukorz Sandscalp"] = "Chief Ukorz Sandscalp"
	L["Ruuzlu"] = "Ruuzlu"
	L["Zerillis"] = "Zerillis"
	L["Sandarr Dunereaver"] = "Sandarr Dunereaver"
	L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>";
	L["Mazoga's Spirit"] = "Mazoga's Spirit";
	L["Tran'rek"] = "Tran'rek";
	L["Weegli Blastfuse"] = "Weegli Blastfuse";
	L["Raven"] = "Raven";
	L["Elder Wildmane"] = "Elder Wildmane";

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	L["The Black Anvil"] = "The Black Anvil";
	L["The Vault"] = "The Vault";
	L["Watchman Doomgrip"] = "Watchman Doomgrip";
	L["Elder Morndeep"] = "Elder Morndeep";
	L["Schematic: Field Repair Bot 74A"] = "Schematic: Field Repair Bot 74A";
	L["Private Rocknot"] = "Private Rocknot";
	L["Mistress Nagmara"] = "Mistress Nagmara";
	L["Jalinda Sprig <Morgan's Militia>"] = "Jalinda Sprig <Morgan's Militia>";
	L["Oralius <Morgan's Militia>"] = "Oralius <Morgan's Militia>";
	L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "Thal'trak Proudtusk <Kargath Expeditionary Force>";
	L["Galamav the Marksman <Kargath Expeditionary Force>"] = "Galamav the Marksman <Kargath Expeditionary Force>";
	L["Maxwort Uberglint"] = "Maxwort Uberglint";
	L["Tinkee Steamboil"] = "Tinkee Steamboil";
	L["Yuka Screwspigot <Engineering Supplies>"] = "Yuka Screwspigot <Engineering Supplies>";
	L["Abandonded Mole Machine"] = "Abandonded Mole Machine";
	L["Kevin Dawson <Morgan's Militia>"] = "Kevin Dawson <Morgan's Militia>";
	L["Lexlort <Kargath Expeditionary Force>"] = "Lexlort <Kargath Expeditionary Force>";
	L["Prospector Seymour <Morgan's Militia>"] = "Prospector Seymour <Morgan's Militia>";
	L["Razal'blade <Kargath Expeditionary Force>"] = "Razal'blade <Kargath Expeditionary Force>";
	L["The Shadowforge Lock"] = "The Shadowforge Lock";
	L["Mayara Brightwing <Morgan's Militia>"] = "Mayara Brightwing <Morgan's Militia>";
	L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "Hierophant Theodora Mulvadania <Kargath Expeditionary Force>";
	L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "Lokhtos Darkbargainer <The Thorium Brotherhood>";
	L["Mountaineer Orfus <Morgan's Militia>"] = "Mountaineer Orfus <Morgan's Militia>";
	L["Thunderheart <Kargath Expeditionary Force>"] = "Thunderheart <Kargath Expeditionary Force>";
	L["Marshal Maxwell <Morgan's Militia>"] = "Marshal Maxwell <Morgan's Militia>";
	L["Warlord Goretooth <Kargath Expeditionary Force>"] = "Warlord Goretooth <Kargath Expeditionary Force>";
	L["The Black Forge"] = "The Black Forge";
	L["Core Fragment"] = "Core Fragment";
	L["Shadowforge Brazier"] = "Shadowforge Brazier";

	--Blackrock Spire (Lower)
	L["Highlord Omokk"] = "Highlord Omokk"
	L["Shadow Hunter Vosh'gajin"] = "Shadow Hunter Vosh'gajin"
	L["War Master Voone"] = "War Master Voone"
	L["Mother Smolderweb"] = "Mother Smolderweb"
	L["Urok Doomhowl"] = "Urok Doomhowl"
	L["Quartermaster Zigris"] = "Quartermaster Zigris"
	L["Gizrul the Slavener"] = "Gizrul the Slavener"
	L["Halycon"] = "Halycon"
	L["Overlord Wyrmthalak"] = "Overlord Wyrmthalak"
	L["Urok's Tribute Pile"] = "Urok's Tribute Pile";
	L["Acride <Scarshield Legion>"] = "Acride <Scarshield Legion>";
	L["Elder Stonefort"] = "Elder Stonefort";
	L["Roughshod Pike"] = "Roughshod Pike";
	L["Vaelan"] = "Vaelan";
	L["Warosh"] = "Warosh";
	L["Spirestone Lord Magus"] = "Spirestone Lord Magus";
	L["Mor Grayhoof"] = "Mor Grayhoof";
	L["Bijou's Belongings"] = "Bijou's Belongings";
	L["Bannok Grimaxe"] = "Bannok Grimaxe";
	L["Crystal Fang"] = "Crystal Fang";
	L["Urok's Tribute Pile"] = "Urok's Tribute Pile";
	L["Ghok Bashguud"] = "Ghok Bashguud";
	L["Burning Felguard"] = "Burning Felguard";
	L["Bijou"] = "Bijou"
	L["Roughshod Pike"] = "Roughshod Pike"
	L["Fifth Mosh'aru Tablet"] = "Fifth Mosh'aru Tablet"
	L["Sixth Mosh'aru Tablet"] = "Sixth Mosh'aru Tablet"
	L["Human Remains"] = "Human Remains"
	L["Unfired Plate Gauntlets"] = "Unfired Plate Gauntlets"


	--Blackrock Spire (Upper)
	L["Pyroguard Emberseer"] = "Pyroguard Emberseer"
	L["Warchief Rend Blackhand"] = "Warchief Rend Blackhand"
	L["Gyth"] = "Gyth"
	L["The Beast"] = "The Beast"
	L["General Drakkisath"] = "General Drakkisath"
	L["Father Flame"] = "Father Flame"
	L["Awbee"] = "Awbee"
	L["Finkle Einhorn"] = "Finkle Einhorn"
	L["Doomrigger's Clasp"] = "Doomrigger's Clasp"
	L["Drakkisath's Brand"] = "Drakkisath's Brand"

	--Blackwing Lair
	L["Razorgore the Untamed"] = "Razorgore the Untamed"
	L["Vaelastrasz the Corrupt"] = "Vaelastrasz the Corrupt"
	L["Broodlord Lashlayer"] = "Broodlord Lashlayer"
	L["Firemaw"] = "Firemaw"
	L["Ebonroc"] = "Ebonroc"
	L["Flamegor"] = "Flamegor"
	L["Chromaggus"] = "Chromaggus"
	L["Nefarian"] = "Nefarian"
	L["Orb of Domination"] = "Orb of Domination";
	L["Master Elemental Shaper Krixix"] = "Master Elemental Shaper Krixix";

	--Deadmines
	L["Rhahk'Zor"] = "Rhahk'Zor";
	L["Miner Johnson"] = "Miner Johnson";
	L["Sneed"] = "Sneed";
	L["Sneed's Shredder"] = "Sneed's Shredder";
	L["Gilnid"] = "Gilnid";
	L["Mr. Smite"] = "Mr. Smite";
	L["Captain Greenskin"] = "Captain Greenskin";
	L["Edwin VanCleef"] = "Edwin VanCleef";
	L["Cookie"] = "Cookie";
	L["Defias Gunpowder"] = "Defias Gunpowder";

	--Gnomeregan
	L["Grubbis"] = "Grubbis";
	L["Viscous Fallout"] = "Viscous Fallout";
	L["Electrocutioner 6000"] = "Electrocutioner 6000";
	L["Crowd Pummeler 9-60"] = "Crowd Pummeler 9-60";
	L["Dark Iron Ambassador"] = "Dark Iron Ambassador";
	L["Mekgineer Thermaplugg"] = "Mekgineer Thermaplugg";
	L["Chomper"] = "Chomper";
	L["Blastmaster Emi Shortfuse"] = "Blastmaster Emi Shortfuse";
	L["Murd Doc <S.A.F.E.>"] = "Murd Doc <S.A.F.E.>";
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "Tink Sprocketwhistle <Engineering Supplies>";
	L["The Sparklematic 5200"] = "The Sparklematic 5200";
	L["Mail Box"] = "Mail Box";
	L["B.E Barechus <S.A.F.E.>"] = "B.E Barechus <S.A.F.E.>";
	L["Face <S.A.F.E.>"] = "Face <S.A.F.E.>";
	L["Hann Ibal <S.A.F.E.>"] = "Hann Ibal <S.A.F.E.>";

	--Molten Core
	L["Lucifron"] = "Lucifron"
	L["Magmadar"] = "Magmadar"
	L["Gehennas"] = "Gehennas"
	L["Garr"] = "Garr"
	L["Shazzrah"] = "Shazzrah"
	L["Baron Geddon"] = "Baron Geddon"
	L["Golemagg the Incinerator"] = "Golemagg the Incinerator"
	L["Sulfuron Harbinger"] = "Sulfuron Harbinger"
	L["Majordomo Executus"] = "Majordomo Executus"
	L["Ragnaros"] = "Ragnaros"
	
	--Scholomance
	L["Kirtonos the Herald"] = "Kirtonos the Herald"
	L["Jandice Barov"] = "Jandice Barov"
	L["Rattlegore"] = "Rattlegore"
	L["Marduk Blackpool"] = "Marduk Blackpool"
	L["Vectus"] = "Vectus"
	L["Ras Frostwhisper"] = "Ras Frostwhisper"
	L["Instructor Malicia"] = "Instructor Malicia"
	L["Doctor Theolen Krastinov"] = "Doctor Theolen Krastinov"
	L["Lorekeeper Polkelt"] = "Lorekeeper Polkelt"
	L["The Ravenian"] = "The Ravenian"
	L["Lord Alexei Barov"] = "Lord Alexei Barov"
	L["Lady Illucia Barov"] = "Lady Illucia Barov"
	L["Darkmaster Gandling"] = "Darkmaster Gandling"

	--Stratholme - Crusader's Square
	L["Fras Siabi"] = "Fras Siabi"
	L["Skul"] = "Skul"
	L["Hearthsinger Forresten"] = "Hearthsinger Forresten"
	L["The Unforgiven"] = "The Unforgiven"
	L["Postmaster Malown"] = "Postmaster Malown"
	L["Timmy the Cruel"] = "Timmy the Cruel"
	L["Malor the Zealous"] = "Malor the Zealous"
	L["Cannon Master Willey"] = "Cannon Master Willey"
	L["Crimson Hammersmith"] = "Crimson Hammersmith"
	L["Archivist Galford"] = "Archivist Galford"
	L["Balnazzar"] = "Balnazzar"
	L["Magistrate Barthilas"] = "Magistrate Barthilas"
	L["Stonespine"] = "Stonespine"
	L["Nerub'enkan"] = "Nerub'enkan"
	L["Black Guard Swordsmith"] = "Black Guard Swordsmith"
	L["Maleki the Pallid"] = "Maleki the Pallid"
	L["Baroness Anastari"] = "Baroness Anastari"
	L["Ramstein the Gorger"] = "Ramstein the Gorger"
	L["Baron Rivendare"] = "Baron Rivendare"
	L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>";
	L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "Master Craftsman Wilhelm <Brotherhood of the Light>";
	L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "Packmaster Stonebruiser <Brotherhood of the Light>";
	L["Stratholme Courier"] = "Stratholme Courier";
	L["Fras Siabi's Postbox"] = "Fras Siabi's Postbox";
	L["King's Square Postbox"] = "King's Square Postbox";
	L["Festival Lane Postbox"] = "Festival Lane Postbox";
	L["Elder Farwhisper"] = "Elder Farwhisper";
	L["Market Row Postbox"] = "Market Row Postbox";

	--Stratholme - The Gauntlet
	L["Elders' Square Postbox"] = "Elders' Square Postbox";
	L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "Archmage Angela Dosantos <Brotherhood of the Light>";
	L["Crusade Commander Korfax <Brotherhood of the Light>"] = "Crusade Commander Korfax <Brotherhood of the Light>";

	--The Stockade
	L["Targorr the Dread"] = "Targorr the Dread";
	L["Kam Deepfury"] = "Kam Deepfury";
	L["Hamhock"] = "Hamhock";
	L["Dextren Ward"] = "Dextren Ward";
	L["Bazil Thredd"] = "Bazil Thredd";
	L["Bruegal Ironknuckle"] = "Bruegal Ironknuckle";
	L["Rifle Commander Coe"] = "Rifle Commander Coe";
	L["Warden Thelwater"] = "Warden Thelwater";
	L["Nurse Lillian"] = "Nurse Lillian";

	--The Sunken Temple
	L["Atal'ai Defenders"] = "Atal'ai Defenders"
	L["Atal'alarion"] = "Atal'alarion"
	L["Dreamscythe"] = "Dreamscythe"
	L["Weaver"] = "Weaver"
	L["Jammal'an the Prophet"] = "Jammal'an the Prophet"
	L["Ogom the Wretched"] = "Ogom the Wretched"
	L["Morphaz"] = "Morphaz"
	L["Hazzas"] = "Hazzas"
	L["Avatar of Hakkar"] = "Avatar of Hakkar"
	L["Shade of Eranikus"] = "Shade of Eranikus"
	L["Lord Itharius"] = "Lord Itharius";
	L["Elder Starsong"] = "Elder Starsong";
	L["Jade"] = "Jade";
	L["Kazkaz the Unholy"] = "Kazkaz the Unholy";
	L["Zekkis"] = "Zekkis";
	
	-- Scarlet Monastery
	L["Interrogator Vishas"] = "Interrogator Vishas";
	L["Bloodmage Thalnos"] = "Bloodmage Thalnos";
	L["Azshir the Sleepless"] = "Azshir the Sleepless";
	L["Fallen Champion"] = "Fallen Champion";
	L["Ironspine"] = "Ironspine";
	L["Houndmaster Loksey"] = "Houndmaster Loksey";
	L["Arcanist Doan"] = "Arcanist Doan";
	L["Armory"] = "Armory";
	L["Herod"] = "Herod";
	L["Scarlet Commander Mograine"] = "Scarlet Commander Mograine";
	L["High Inquisitor Whitemane"] = "High Inquisitor Whitemane";
	L["High Inquisitor Fairbanks"] = "High Inquisitor Fairbanks";

	L["Cathedral"] = "Cathedral"
	L["Armory"] = "Armory"
	L["Library"] = "Library"

	--Uldaman
	L["Revelosh"] = "Revelosh"
	L["Baelog"] = "Baelog"
	L["Ironaya"] = "Ironaya"
	L["Obsidian Sentinel"] = "Obsidian Sentinel"
	L["Ancient Stone Keeper"] = "Ancient Stone Keeper"
	L["Galgann Firehammer"] = "Galgann Firehammer"
	L["Grimlok"] = "Grimlok"
	L["Archaedas"] = "Archaedas"

	L["Baelog's Chest"] = "Baelog's Chest";
	L["Kand Sandseeker <Explorer's League>"] = "Kand Sandseeker <Explorer's League>";
	L["Lead Prospector Durdin <Explorer's League>"] = "Lead Prospector Durdin <Explorer's League>";
	L["Olga Runesworn <Explorer's League>"] = "Olga Runesworn <Explorer's League>";
	L["Aoren Sunglow <The Reliquary>"] = "Aoren Sunglow <The Reliquary>";
	L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "High Examiner Tae'thelan Bloodwatcher <The Reliquary>";
	L["Lidia Sunglow <The Reliquary>"] = "Lidia Sunglow <The Reliquary>";
	L["Ancient Treasure"] = "Ancient Treasure";
	L["The Discs of Norgannon"] = "The Discs of Norgannon";
	
	-- Classic
	L["Lothos Riftwaker"] = "Lothos Riftwaker"
	L["Elder Morndeep"] = "Elder Morndeep"
	L["The Vault"] = "The Vault"
	L["Watchman Doomgrip"] = "Watchman Doomgrip"
	L["The Black Anvil"] = "The Black Anvil"
	L["The Shadowforge Lock"] = "The Shadowforge Lock"
	L["Schematic: Field Repair Bot 74A"] = "Schematic: Field Repair Bot 74A"
	L["Mistress Nagmara"] = "Mistress Nagmara"
	L["Private Rocknot"] = "Private Rocknot"
	L["Summoner's Tomb"] = "Summoner's Tomb"
	L["The Black Forge"] = "The Black Forge"
	L["Core Fragment"] = "Core Fragment"
	L["Master Elemental Shaper Krixix"] = "Master Elemental Shaper Krixix"
	L["Gnome"] = "Gnome"
	L["Torben Zapblast <Teleportation Specialist>"] = "Torben Zapblast <Teleportation Specialist>"
	L["Mail Box"] = "Mail Box"
	L["Blastmaster Emi Shortfuse"] = "Blastmaster Emi Shortfuse"
	L["Chomper"] = "Chomper"
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "Tink Sprocketwhistle <Engineering Supplies>"
	L["The Sparklematic 5200"] = "The Sparklematic 5200"
	L["Kernobee"] = "Kernobee"
	L["Alarm-a-bomb 2600"] = "Alarm-a-bomb 2600"
	L["Matrix Punchograph 3005-B"] = "Matrix Punchograph 3005-B"
	L["Matrix Punchograph 3005-C"] = "Matrix Punchograph 3005-C"
	L["Matrix Punchograph 3005-D"] = "Matrix Punchograph 3005-D"
	L["Dark Iron Ambassador"] = "Dark Iron Ambassador"
	L["Cathedral"] = "Cathedral"
	L["Armory"] = "Armory"
	L["Library"] = "Library"
	L["Vorrel Sengutz"] = "Vorrel Sengutz"
	L["Blood of Innocents"] = "Blood of Innocents"
	L["Divination Scryer"] = "Divination Scryer"
	L["The Deed to Southshore"] = "The Deed to Southshore"
	L["The Deed to Tarren Mill"] = "The Deed to Tarren Mill"
	L["The Deed to Brill"] = "The Deed to Brill"
	L["The Deed to Caer Darrow"] = "The Deed to Caer Darrow"
	L["Torch Lever"] = "Torch Lever"
	L["Secret Chest"] = "Secret Chest"
	L["Alchemy Lab"] = "Alchemy Lab"
	L["Jordan's Hammer"] = "Jordan's Hammer"
	L["Various Postbox Keys"] = "Various Postbox Keys"
	L["Stratholme Courier"] = "Stratholme Courier"
	L["Fras Siabi"] = "Fras Siabi"
	L["Elder Farwhisper"] = "Elder Farwhisper"
	L["Medallion of Faith"] = "Medallion of Faith"
	L["Ysida Harmon"] = "Ysida Harmon"
	L["Crusaders' Square Postbox"] = "Crusaders' Square Postbox"
	L["Market Row Postbox"] = "Market Row Postbox"
	L["Festival Lane Postbox"] = "Festival Lane Postbox"
	L["Elders' Square Postbox"] = "Elders' Square Postbox"
	L["King's Square Postbox"] = "King's Square Postbox"
	L["Fras Siabi's Postbox"] = "Fras Siabi's Postbox"
	L["3rd Box Opened: Postmaster Malown"] = "3rd Box Opened: Postmaster Malown"
	L["Sneed's Shredder"] = "Sneed's Shredder"
	L["Edwin VanCleef"] = "Edwin VanCleef"
	L["Mr. Smite"] = "Mr. Smite"
	L["Cookie"] = "Cookie"
	L["Stocks"] = "Stocks"
	L["Lord Itharius"] = "Lord Itharius"
	L["Priestess Udum'bra"] = "Priestess Udum'bra"
	L["Gomora the Bloodletter"] = "Gomora the Bloodletter"
	L["Troll Minibosses"] = "Troll Minibosses"
	L["Atal'alarion"] = "Atal'alarion"
	L["Weaver"] = "Weaver"
	L["Essence Font"] = "Essence Font"
	L["Elder Starsong"] = "Elder Starsong"
	L["Statue Activation Order"] = "Statue Activation Order"
	L["Baelog's Chest"] = "Baelog's Chest"
	L["Conspicuous Urn"] = "Conspicuous Urn"
	L["Remains of a Paladin"] = "Remains of a Paladin"
	L["Tablet of Will"] = "Tablet of Will"
	L["Shadowforge Cache"] = "Shadowforge Cache"
	L["The Discs of Norgannon"] = "The Discs of Norgannon"
	L["Ancient Treasure"] = "Ancient Treasure"
	L["Lorgalis Manuscript"] = "Lorgalis Manuscript"
	L["Argent Guard Thaelrid"] = "Argent Guard Thaelrid"
	L["Fathom Core"] = "Fathom Core"
	L["Dire Pool"] = "Dire Pool"
	L["Dire Maul Arena"] = "Dire Maul Arena"
	L["Elder Mistwalker"] = "Elder Mistwalker"
	L["Chase Begins"] = "Chase Begins"
	L["Chase Ends"] = "Chase Ends"
	L["Old Ironbark"] = "Old Ironbark"
	L["Ironbark the Redeemed"] = "Ironbark the Redeemed"
	L["Knot Thimblejack"] = "Knot Thimblejack"
	L["J'eevee's Jar"] = "J'eevee's Jar"
	L["Pylons"] = "Pylons"
	L["Shen'dralar Ancient"] = "Shen'dralar Ancient"
	L["Ancient Equine Spirit"] = "Ancient Equine Spirit"
	L["Ferra"] = "Ferra"
	L["Falrin Treeshaper"] = "Falrin Treeshaper"
	L["Lorekeeper Lydros"] = "Lorekeeper Lydros"
	L["Lorekeeper Javon"] = "Lorekeeper Javon"
	L["Lorekeeper Kildrath"] = "Lorekeeper Kildrath"
	L["Lorekeeper Mykos"] = "Lorekeeper Mykos"
	L["Shen'dralar Provisioner"] = "Shen'dralar Provisioner"
	L["Skeletal Remains of Kariel Winthalus"] = "Skeletal Remains of Kariel Winthalus"
	L["The Nameless Prophet"] = "The Nameless Prophet"
	L["Veng (The Fifth Khan)"] = "Veng (The Fifth Khan)"
	L["Maraudos (The Fourth Khan)"] = "Maraudos (The Fourth Khan)"
	L["Elder Splitrock"] = "Elder Splitrock"
	L["Belnistrasz"] = "Belnistrasz"
	L["Willix the Importer"] = "Willix the Importer"
	L["Heralath Fallowbrook"] = "Heralath Fallowbrook"
	L["Disciple of Naralex"] = "Disciple of Naralex"
	L["Naralex"] = "Naralex"
	L["Zul'Farrak Dead Hero"] = "Zul'Farrak Dead Hero"
	L["Weegli Blastfuse"] = "Weegli Blastfuse"
	L["Raven"] = "Raven"
	L["Elder Wildmane"] = "Elder Wildmane"

end