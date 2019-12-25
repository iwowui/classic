-----------------------------------------------------
-- LocaleSupport.lua
-- English strings by default, localizations override with their own.
------------------------------------------------------
-- This file contains strings which must be localized in order for Feed-O-Matic features to work in other locales.
-- Note: strings which are the same as in the enUS version needn't be localized; they can be commented out.
------------------------------------------------------

-- Diet names. These should be the seven possible diets returned from GetPetFoodTypes() and shown in the Pet tab of the character window (when mousing over the food icon). 
-- (Want to get them all nice and quick for your localization? Go tame a bear or boar... they eat anything. Except Mechanical Bits.)
-- THESE STRINGS MUST BE LOCALIZED for Feed-O-Matic to work properly in other locales.
FOM_DIET_MEAT					= "Meat"
FOM_DIET_FISH					= "Fish"
FOM_DIET_BREAD					= "Bread"
FOM_DIET_CHEESE					= "Cheese"
FOM_DIET_FRUIT					= "Fruit"
FOM_DIET_FUNGUS					= "Fungus"
FOM_DIET_MECH					= "Mechanical Bits"

-- Beast family names; we use these to provide optional pet-specific feeding emotes (see FeedOMatic_Emotes.lua)
FOM_BASILISK					= "Basilisk"				-- Mists
FOM_BAT							= "Bat"
FOM_BEAR						= "Bear"
FOM_BEETLE						= "Beetle"                  -- Cataclysm
FOM_BIRD_OF_PREY				= "Bird of Prey"        	-- WotLK
FOM_BOAR						= "Boar"                	
FOM_CARRION_BIRD				= "Carrion Bird"        	
FOM_CAT							= "Cat"                 	
FOM_CHIMAERA					= "Chimaera"            	-- WotLK exotic
FOM_CLEFTHOOF					= "Clefthoof"				-- Warlords
FOM_CORE_HOUND					= "Core Hound"          	-- WotLK exotic
FOM_CRAB						= "Crab"                	
FOM_CRANE						= "Crane"					-- Mists
FOM_CROCOLISK					= "Crocolisk"           	
FOM_DEVILSAUR					= "Devilsaur"           	-- WotLK exotic
FOM_DIREHORN					= "Direhorn"				-- Warlords
FOM_DOG							= "Dog"                     -- Cataclysm
FOM_DRAGONHAWK					= "Dragonhawk"          	-- BC
FOM_FOX							= "Fox"                     -- Cataclysm
FOM_GOAT						= "Goat"					-- Mists
FOM_GORILLA						= "Gorilla"             	
FOM_HYENA						= "Hyena"               	
FOM_HYDRA						= "Hydra"					-- Warlords
FOM_MECHANICAL					= "Mechanical"				-- Legion special
FOM_MONKEY						= "Monkey"                  -- Cataclysm
FOM_MOTH						= "Moth"                	-- WotLK
FOM_NETHER_RAY					= "Nether Ray"          	-- BC
FOM_OXEN						= "Oxen"					-- Legion
FOM_PORCUPINE					= "Porcupine"				-- Mists
FOM_QUILEN						= "Quilen"					-- Mists exotic
FOM_RAPTOR						= "Raptor"              	
FOM_RAVAGER						= "Ravager"             	-- BC
FOM_RIVERBEAST					= "Riverbeast"				-- Warlords
FOM_RYLAK						= "Rylak"					-- Warlords
FOM_SCALEHIDE					= "Scalehide"				-- Legion
FOM_SCORPID						= "Scorpid"             	
FOM_SERPENT						= "Serpent"             	-- BC
FOM_SHALE_SPIDER				= "Shale Spider"            -- Cataclysm exotic
FOM_SILITHID					= "Silithid"            	-- WotLK exotic
FOM_SPIDER						= "Spider"              	
FOM_SPIRIT_BEAST				= "Spirit Beast"        	-- WotLK exotic
FOM_SPOREBAT					= "Sporebat"            	-- BC
FOM_STAG						= "Stag"					-- Warlords
FOM_TALLSTRIDER					= "Tallstrider"         	
FOM_TURTLE						= "Turtle"              	
FOM_WARP_STALKER				= "Warp Stalker"			-- BC
FOM_WASP						= "Wasp"                	-- WotLK
FOM_WATER_STRIDER				= "Water Strider"			-- Mists exotic
FOM_WIND_SERPENT				= "Wind Serpent"        	
FOM_WOLF						= "Wolf"                	
FOM_WORM						= "Worm"                	-- WotLK exotic


------------------------------------------------------

if (GetLocale() == "zhCN") then

-- Diet names. These should be the seven possible diets returned from GetPetFoodTypes() and shown in the Pet tab of the character window (when mousing over the food icon). 
-- (Want to get them all nice and quick for your localization? Go tame a bear or boar... they eat anything.)
-- THESE STRINGS MUST BE LOCALIZED for Feed-O-Matic to work properly in other locales.
FOM_DIET_MEAT					= "肉"
FOM_DIET_FISH					= "鱼"
FOM_DIET_BREAD					= "面包"
FOM_DIET_CHEESE					= "奶酪"
FOM_DIET_FRUIT					= "水果"
FOM_DIET_FUNGUS					= "蘑菇"

-- Beast family names; we use these to provide optional pet-specific feeding emotes (see FeedOMatic_Emotes.lua)
FOM_BAT							= "蝙蝠"                       
FOM_BEAR						= "熊"                    
FOM_BOAR						= "野猪"                   
FOM_CARRION_BIRD				= "秃鹰"           
FOM_CAT							= "猫"                        
FOM_CRAB						= "螃蟹"                   
FOM_CROCOLISK					= "鳄鱼"               
FOM_GORILLA						= "猩猩"                   
FOM_HYENA						= "土狼"                   
FOM_OWL							= "猫头鹰"                      
FOM_RAPTOR						= "迅猛龙"                  
FOM_SCORPID						= "蝎子"                   
FOM_SPIDER						= "蜘蛛"                   
FOM_TALLSTRIDER					= "陆行鸟"              
FOM_TURTLE						= "乌龟"                   
FOM_WIND_SERPENT				= "风蛇"           
FOM_WOLF						= "狼"                    
FOM_DRAGONHAWK					= "龙鹰"					-- BC
FOM_NETHER_RAY					= "虚空鳍刺"				-- BC
FOM_RAVAGER						= "破坏者"				-- BC
FOM_SERPENT						= "毒蛇"					-- BC
FOM_SPOREBAT					= "孢子蝙蝠"				-- BC
FOM_WARP_STALKER				= "扭曲行者"				-- BC
FOM_WORM						= "蠕虫"					-- WotLK exotic
FOM_SPIRIT_BEAST				= "灵魂兽"        		-- WotLK exotic
FOM_WASP						= "巨蜂"                	-- WotLK
FOM_SILITHID					= "异种虫"            	-- WotLK exotic
FOM_MOTH						= "蛾子"                	-- WotLK exotic
FOM_DEVILSAUR					= "魔暴龙"           	-- WotLK exotic
FOM_CHIMAERA					= "奇美拉"            	-- WotLK exotic
FOM_CORE_HOUND					= "熔岩犬"        	  	-- WotLK exotic
FOM_BIRD_OF_PREY				= "猛禽"      		  	-- WotLK
FOM_SHALE_SPIDER				= "页岩蛛"				-- Cataclysm exotic
FOM_MONKEY						= "猴子"					-- Cataclysm
FOM_FOX							= "狐狸"					-- Cataclysm
FOM_DOG							= "狗"					-- Cataclysm
FOM_BEETLE						= "甲虫"					-- Cataclysm
FOM_BASILISK					= "石化蜥蜴"				-- Mists
FOM_CLEFTHOOF					= "裂蹄牛"				-- Warlords
FOM_CRANE						= "鹤"					-- Mists
FOM_DIREHORN					= "恐角龙"				-- Warlords
FOM_GOAT						= "山羊"					-- Mists
FOM_HYDRA						= "九头蛇"				-- Warlords
FOM_MECHANICAL					= "机械"					-- Legion special
FOM_OXEN						= "牛"					-- Legion
FOM_PORCUPINE					= "箭猪"					-- Mists
FOM_QUILEN						= "魁麟"					-- Mists exotic
FOM_RIVERBEAST					= "淡水兽"				-- Warlords
FOM_RYLAK						= "双头飞龙"				-- Warlords
FOM_SCALEHIDE					= "鳞甲类"				-- Legion
FOM_STAG						= "雄鹿"					-- Warlords
FOM_WATER_STRIDER				= "水黾"					-- Mists exotic

end

------------------------------------------------------

if (GetLocale() == "zhTW") then

-- Diet names. These should be the seven possible diets returned from GetPetFoodTypes() and shown in the Pet tab of the character window (when mousing over the food icon). 
-- (Want to get them all nice and quick for your localization? Go tame a bear or boar... they eat anything.)
-- THESE STRINGS MUST BE LOCALIZED for Feed-O-Matic to work properly in other locales.
FOM_DIET_MEAT                   = "肉"
FOM_DIET_FISH                   = "魚"
FOM_DIET_BREAD                  = "麵包"
FOM_DIET_CHEESE                 = "乳酪"
FOM_DIET_FRUIT                  = "水果"
FOM_DIET_FUNGUS                 = "蘑菇"

-- Beast family names; we use these to provide optional pet-specific feeding emotes (see FeedOMatic_Emotes.lua)
FOM_BAT                         = "蝙蝠"                       
FOM_BEAR                        = "熊"                    
FOM_BOAR                        = "野豬"                   
FOM_CARRION_BIRD                = "禿鷹"           
FOM_CAT                         = "貓"                        
FOM_CRAB                        = "螃蟹"                   
FOM_CROCOLISK                   = "鱷魚"               
FOM_GORILLA                     = "猩猩"                   
FOM_HYENA                       = "土狼"                   
FOM_OWL                         = "貓頭鷹"                      
FOM_RAPTOR                      = "迅猛龍"                  
FOM_SCORPID                     = "蠍子"                   
FOM_SPIDER                      = "蜘蛛"                   
FOM_TALLSTRIDER                 = "陸行鳥"              
FOM_TURTLE                      = "烏龜"                   
FOM_WIND_SERPENT                = "風蛇"           
FOM_WOLF                        = "狼"                    
FOM_DRAGONHAWK                  = "龍鷹"                  -- BC
FOM_NETHER_RAY                  = "虛空鰭刺"                -- BC
FOM_RAVAGER                     = "破壞者"             -- BC
FOM_SERPENT                     = "毒蛇"                  -- BC
FOM_SPOREBAT                    = "孢子蝙蝠"                -- BC
FOM_WARP_STALKER                = "扭曲行者"                -- BC
FOM_WORM                        = "蠕虫"                  -- WotLK exotic
FOM_SPIRIT_BEAST                = "灵魂兽"             -- WotLK exotic
FOM_WASP                        = "巨蜂"                  -- WotLK
FOM_SILITHID                    = "异种虫"             -- WotLK exotic
FOM_MOTH                        = "蛾子"                  -- WotLK exotic
FOM_DEVILSAUR                   = "魔暴龙"             -- WotLK exotic
FOM_CHIMAERA                    = "奇美拉"             -- WotLK exotic
FOM_CORE_HOUND                  = "熔岩犬"             -- WotLK exotic
FOM_BIRD_OF_PREY                = "猛禽"                  -- WotLK
FOM_SHALE_SPIDER                = "页岩蛛"             -- Cataclysm exotic
FOM_MONKEY                      = "猴子"                  -- Cataclysm
FOM_FOX                         = "狐狸"                  -- Cataclysm
FOM_DOG                         = "狗"                   -- Cataclysm
FOM_BEETLE                      = "甲虫"                  -- Cataclysm
FOM_BASILISK                    = "石化蜥蜴"                -- Mists
FOM_CLEFTHOOF                   = "裂蹄牛"             -- Warlords
FOM_CRANE                       = "鹤"                   -- Mists
FOM_DIREHORN                    = "恐角龙"             -- Warlords
FOM_GOAT                        = "山羊"                  -- Mists
FOM_HYDRA                       = "九头蛇"             -- Warlords
FOM_MECHANICAL                  = "机械"                  -- Legion special
FOM_OXEN                        = "牛"                   -- Legion
FOM_PORCUPINE                   = "箭猪"                  -- Mists
FOM_QUILEN                      = "魁麟"                  -- Mists exotic
FOM_RIVERBEAST                  = "淡水兽"             -- Warlords
FOM_RYLAK                       = "双头飞龙"                -- Warlords
FOM_SCALEHIDE                   = "鳞甲类"             -- Legion
FOM_STAG                        = "雄鹿"                  -- Warlords
FOM_WATER_STRIDER               = "水黾"                  -- Mists exotic

end
