--OMEGA MOD scripts
--credit : okami29 at http://www.grimdawn.com/forums/showthread.php?p=387218

omega.scripts = {}

function omega.scripts.onherodeath()
	if Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
		local player = Game.GetLocalPlayer();
		player:GiveItem('records/omega/items/questitems/Omega_Soul_Heroes.dbr', 1, true);
--			if 	player:GetQuestState(0x4B25F880) != QuestState.InProgress then
--				player:GrantQuest(0x4B25F880,0x36BE5A40);
--			end
		omega.scripts.spawnomegaboss();
	end
	----START CALL for DAIL if Omega mod merge with DAIL.Function callDAILonherodeath() is inside DAIL.lua
	callDAILonherodeath()
	----END CALL for DAIL mod
end

function omega.scripts.onbossdeath()
	if Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
		local player = Game.GetLocalPlayer();
		player:GiveItem('records/omega/items/questitems/Omega_Soul_Boss.dbr', 1, true);
	end
end

function omega.scripts.summonatfeet(objectID)
	local newCreature = Entity.Create(objectID);
	local playerCoords = Game.GetLocalPlayer():GetCoords();
	newCreature:SetCoords(playerCoords);
end

function omega.scripts.spawnomegaboss()
local bonusRandomizer = 0
local spOMbossRandomizer = 0
local spOMbosschance = 0
local player = Game.GetLocalPlayer();
math.randomseed(Time.Now())
spOMbossRandomizer = math.random(1,18000)
local t={'OMEGA_LEVEL_1','OMEGA_LEVEL_2','OMEGA_LEVEL_3','OMEGA_LEVEL_4','OMEGA_LEVEL_5','OMEGA_LEVEL_6','OMEGA_LEVEL_7','OMEGA_LEVEL_8','OMEGA_LEVEL_9','OMEGA_LEVEL_10','OMEGA_LEVEL_11','OMEGA_LEVEL_12','OMEGA_LEVEL_13','OMEGA_LEVEL_14','OMEGA_LEVEL_15','OMEGA_LEVEL_16','OMEGA_LEVEL_17','OMEGA_LEVEL_18','OMEGA_LEVEL_19','OMEGA_LEVEL_20','OMEGA_LEVEL_21','OMEGA_LEVEL_22','OMEGA_LEVEL_23','OMEGA_LEVEL_24','OMEGA_LEVEL_25','OMEGA_LEVEL_26','OMEGA_LEVEL_27','OMEGA_LEVEL_28','OMEGA_LEVEL_29','OMEGA_LEVEL_30','OMEGA_LEVEL_31','OMEGA_LEVEL_32','OMEGA_LEVEL_33','OMEGA_LEVEL_34','OMEGA_LEVEL_35','OMEGA_LEVEL_36','OMEGA_LEVEL_37','OMEGA_LEVEL_38','OMEGA_LEVEL_39','OMEGA_LEVEL_40','OMEGA_LEVEL_41','OMEGA_LEVEL_42','OMEGA_LEVEL_43','OMEGA_LEVEL_44','OMEGA_LEVEL_45','OMEGA_LEVEL_46','OMEGA_LEVEL_47','OMEGA_LEVEL_48','OMEGA_LEVEL_49','OMEGA_LEVEL_50','OMEGA_LEVEL_51','OMEGA_LEVEL_52','OMEGA_LEVEL_53','OMEGA_LEVEL_54','OMEGA_LEVEL_55','OMEGA_LEVEL_56','OMEGA_LEVEL_57','OMEGA_LEVEL_58','OMEGA_LEVEL_59','OMEGA_LEVEL_60','OMEGA_LEVEL_61','OMEGA_LEVEL_62','OMEGA_LEVEL_63','OMEGA_LEVEL_64','OMEGA_LEVEL_65','OMEGA_LEVEL_66','OMEGA_LEVEL_67','OMEGA_LEVEL_68','OMEGA_LEVEL_69','OMEGA_LEVEL_70','OMEGA_LEVEL_71','OMEGA_LEVEL_72','OMEGA_LEVEL_73','OMEGA_LEVEL_74','OMEGA_LEVEL_75','OMEGA_LEVEL_76','OMEGA_LEVEL_77','OMEGA_LEVEL_78','OMEGA_LEVEL_79','OMEGA_LEVEL_80','OMEGA_LEVEL_81','OMEGA_LEVEL_82','OMEGA_LEVEL_83','OMEGA_LEVEL_84','OMEGA_LEVEL_85','OMEGA_LEVEL_86','OMEGA_LEVEL_87','OMEGA_LEVEL_88','OMEGA_LEVEL_89','OMEGA_LEVEL_90','OMEGA_LEVEL_91','OMEGA_LEVEL_92','OMEGA_LEVEL_93','OMEGA_LEVEL_94','OMEGA_LEVEL_95','OMEGA_LEVEL_96','OMEGA_LEVEL_97','OMEGA_LEVEL_98','OMEGA_LEVEL_99','OMEGA_LEVEL_100'}		
		for i=1,100 do
			if player:HasToken(t[i]) then
			bonusRandomizer=i
			break
			end
		end
	spOMbosschance=spOMbossRandomizer+bonusRandomizer
	
	if spOMbosschance > 18000 then
		local spOMpetRandomizer = 0
		local OmegaNemesisDBRs = { 'records/omega/creatures/om_spawnerpet_aetherial.dbr','records/omega/creatures/om_spawnerpet_chthonian.dbr','records/omega/creatures/om_spawnerpet_kymon.dbr','records/omega/creatures/om_spawnerpet_order.dbr','records/omega/creatures/om_spawnerpet_outlaw.dbr','records/omega/creatures/om_spawnerpet_undead.dbr' }
		local totalOmegaNemesis = table.getn(OmegaNemesisDBRs)
		--math.randomseed(Time.Now())
		spOMpetRandomizer = math.random(1,totalOmegaNemesis)
		omega.scripts.summonatfeet(OmegaNemesisDBRs[spOMpetRandomizer]);

	end
end



function omega.scripts.beginomegaquest()
	local player = Game.GetLocalPlayer();
	if Game.GetGameDifficulty() >= Game.Difficulty.Legendary and player:GetQuestState(0x4B25F880) != QuestState.InProgress then
	player:GrantQuest(0x4B25F880,0x36BE5A40);
	end
end


function omega.scripts.reset()
		local player = Game.GetLocalPlayer()
		--if Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
			local t={'OMEGA_LEVEL_1','OMEGA_LEVEL_2','OMEGA_LEVEL_3','OMEGA_LEVEL_4','OMEGA_LEVEL_5','OMEGA_LEVEL_6','OMEGA_LEVEL_7','OMEGA_LEVEL_8','OMEGA_LEVEL_9','OMEGA_LEVEL_10','OMEGA_LEVEL_11','OMEGA_LEVEL_12','OMEGA_LEVEL_13','OMEGA_LEVEL_14','OMEGA_LEVEL_15','OMEGA_LEVEL_16','OMEGA_LEVEL_17','OMEGA_LEVEL_18','OMEGA_LEVEL_19','OMEGA_LEVEL_20','OMEGA_LEVEL_21','OMEGA_LEVEL_22','OMEGA_LEVEL_23','OMEGA_LEVEL_24','OMEGA_LEVEL_25','OMEGA_LEVEL_26','OMEGA_LEVEL_27','OMEGA_LEVEL_28','OMEGA_LEVEL_29','OMEGA_LEVEL_30','OMEGA_LEVEL_31','OMEGA_LEVEL_32','OMEGA_LEVEL_33','OMEGA_LEVEL_34','OMEGA_LEVEL_35','OMEGA_LEVEL_36','OMEGA_LEVEL_37','OMEGA_LEVEL_38','OMEGA_LEVEL_39','OMEGA_LEVEL_40','OMEGA_LEVEL_41','OMEGA_LEVEL_42','OMEGA_LEVEL_43','OMEGA_LEVEL_44','OMEGA_LEVEL_45','OMEGA_LEVEL_46','OMEGA_LEVEL_47','OMEGA_LEVEL_48','OMEGA_LEVEL_49','OMEGA_LEVEL_50','OMEGA_LEVEL_51','OMEGA_LEVEL_52','OMEGA_LEVEL_53','OMEGA_LEVEL_54','OMEGA_LEVEL_55','OMEGA_LEVEL_56','OMEGA_LEVEL_57','OMEGA_LEVEL_58','OMEGA_LEVEL_59','OMEGA_LEVEL_60','OMEGA_LEVEL_61','OMEGA_LEVEL_62','OMEGA_LEVEL_63','OMEGA_LEVEL_64','OMEGA_LEVEL_65','OMEGA_LEVEL_66','OMEGA_LEVEL_67','OMEGA_LEVEL_68','OMEGA_LEVEL_69','OMEGA_LEVEL_70','OMEGA_LEVEL_71','OMEGA_LEVEL_72','OMEGA_LEVEL_73','OMEGA_LEVEL_74','OMEGA_LEVEL_75','OMEGA_LEVEL_76','OMEGA_LEVEL_77','OMEGA_LEVEL_78','OMEGA_LEVEL_79','OMEGA_LEVEL_80','OMEGA_LEVEL_81','OMEGA_LEVEL_82','OMEGA_LEVEL_83','OMEGA_LEVEL_84','OMEGA_LEVEL_85','OMEGA_LEVEL_86','OMEGA_LEVEL_87','OMEGA_LEVEL_88','OMEGA_LEVEL_89','OMEGA_LEVEL_90','OMEGA_LEVEL_91','OMEGA_LEVEL_92','OMEGA_LEVEL_93','OMEGA_LEVEL_94','OMEGA_LEVEL_95','OMEGA_LEVEL_96','OMEGA_LEVEL_97','OMEGA_LEVEL_98','OMEGA_LEVEL_99','OMEGA_LEVEL_100'}
			local t2={'OMEGA_TOTALSPEED_1','OMEGA_TOTALSPEED_2','OMEGA_TOTALSPEED_3','OMEGA_TOTALSPEED_4','OMEGA_TOTALSPEED_5','OMEGA_TOTALSPEED_6','OMEGA_TOTALSPEED_7','OMEGA_TOTALSPEED_8','OMEGA_TOTALSPEED_9','OMEGA_TOTALSPEED_10','OMEGA_TOTALSPEED_11','OMEGA_TOTALSPEED_12','OMEGA_TOTALSPEED_13','OMEGA_TOTALSPEED_14','OMEGA_TOTALSPEED_15','OMEGA_TOTALSPEED_16','OMEGA_TOTALSPEED_17','OMEGA_TOTALSPEED_18','OMEGA_TOTALSPEED_19','OMEGA_TOTALSPEED_20','OMEGA_TOTALSPEED_21','OMEGA_TOTALSPEED_22','OMEGA_TOTALSPEED_23','OMEGA_TOTALSPEED_24','OMEGA_TOTALSPEED_25','OMEGA_TOTALSPEED_26','OMEGA_TOTALSPEED_27','OMEGA_TOTALSPEED_28','OMEGA_TOTALSPEED_29','OMEGA_TOTALSPEED_30','OMEGA_SHIELD_1','OMEGA_SHIELD_2','OMEGA_SHIELD_3','OMEGA_SHIELD_4','OMEGA_SHIELD_5','OMEGA_PROJSPEED_1','OMEGA_PROJSPEED_2','OMEGA_PROJSPEED_3','OMEGA_PROJSPEED_4','OMEGA_PROJSPEED_5','OMEGA_COOLDOWN_1','OMEGA_ABSREDUCTION_1','OMEGA_ENERGYREDUC_1','OMEGA_PETDAMAGE_1','OMEGA_PETDAMAGE_2','OMEGA_MAXRESIST_1','OMEGA_ALLDAMAGE_1','OMEGA_ALLDAMAGE_2','OMEGA_ALLDAMAGE_3','OMEGA_ALLDAMAGE_4','OMEGA_ALLDAMAGE_5','OMEGA_ALLDAMAGE_6','OMEGA_ALLDAMAGE_7','OMEGA_LLEECH_1','OMEGA_HEALTH_1','OMEGA_DEFENSE_1','OMEGA_REFLECTION_1','OMEGA_REFLECTION_2','OMEGA_PROJSPEED_6','OMEGA_PROJSPEED_7','OMEGA_PROJSPEED_8'}

			for i=1,61 do
				player:RemoveToken(t2[i])
			end

			for i=1,100 do
				if player:HasToken(t[i]) then
				player:GiveItem('records/omega/items/questitems/omega_orb.dbr',i,true);	
				break
				end
			end
			UI.Notify("tagOM_onReset");


end
function omega.scripts.reward()
		local player = Game.GetLocalPlayer()
		--if Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
			local t={'OMEGA_LEVEL_1','OMEGA_LEVEL_2','OMEGA_LEVEL_3','OMEGA_LEVEL_4','OMEGA_LEVEL_5','OMEGA_LEVEL_6','OMEGA_LEVEL_7','OMEGA_LEVEL_8','OMEGA_LEVEL_9','OMEGA_LEVEL_10','OMEGA_LEVEL_11','OMEGA_LEVEL_12','OMEGA_LEVEL_13','OMEGA_LEVEL_14','OMEGA_LEVEL_15','OMEGA_LEVEL_16','OMEGA_LEVEL_17','OMEGA_LEVEL_18','OMEGA_LEVEL_19','OMEGA_LEVEL_20','OMEGA_LEVEL_21','OMEGA_LEVEL_22','OMEGA_LEVEL_23','OMEGA_LEVEL_24','OMEGA_LEVEL_25','OMEGA_LEVEL_26','OMEGA_LEVEL_27','OMEGA_LEVEL_28','OMEGA_LEVEL_29','OMEGA_LEVEL_30','OMEGA_LEVEL_31','OMEGA_LEVEL_32','OMEGA_LEVEL_33','OMEGA_LEVEL_34','OMEGA_LEVEL_35','OMEGA_LEVEL_36','OMEGA_LEVEL_37','OMEGA_LEVEL_38','OMEGA_LEVEL_39','OMEGA_LEVEL_40','OMEGA_LEVEL_41','OMEGA_LEVEL_42','OMEGA_LEVEL_43','OMEGA_LEVEL_44','OMEGA_LEVEL_45','OMEGA_LEVEL_46','OMEGA_LEVEL_47','OMEGA_LEVEL_48','OMEGA_LEVEL_49','OMEGA_LEVEL_50','OMEGA_LEVEL_51','OMEGA_LEVEL_52','OMEGA_LEVEL_53','OMEGA_LEVEL_54','OMEGA_LEVEL_55','OMEGA_LEVEL_56','OMEGA_LEVEL_57','OMEGA_LEVEL_58','OMEGA_LEVEL_59','OMEGA_LEVEL_60','OMEGA_LEVEL_61','OMEGA_LEVEL_62','OMEGA_LEVEL_63','OMEGA_LEVEL_64','OMEGA_LEVEL_65','OMEGA_LEVEL_66','OMEGA_LEVEL_67','OMEGA_LEVEL_68','OMEGA_LEVEL_69','OMEGA_LEVEL_70','OMEGA_LEVEL_71','OMEGA_LEVEL_72','OMEGA_LEVEL_73','OMEGA_LEVEL_74','OMEGA_LEVEL_75','OMEGA_LEVEL_76','OMEGA_LEVEL_77','OMEGA_LEVEL_78','OMEGA_LEVEL_79','OMEGA_LEVEL_80','OMEGA_LEVEL_81','OMEGA_LEVEL_82','OMEGA_LEVEL_83','OMEGA_LEVEL_84','OMEGA_LEVEL_85','OMEGA_LEVEL_86','OMEGA_LEVEL_87','OMEGA_LEVEL_88','OMEGA_LEVEL_89','OMEGA_LEVEL_90','OMEGA_LEVEL_91','OMEGA_LEVEL_92','OMEGA_LEVEL_93','OMEGA_LEVEL_94','OMEGA_LEVEL_95','OMEGA_LEVEL_96','OMEGA_LEVEL_97','OMEGA_LEVEL_98','OMEGA_LEVEL_99','OMEGA_LEVEL_100'}	

				for i=1,99 do
					if player:HasToken(t[i]) then
						player:GiveToken(t[i+1])
						player:RemoveToken(t[i])
						--player:GiveItem('records/omega/items/questitems/omega_orb.dbr',1,true);
						local dbrrecipe='records/omega/items/crafting/blueprints/other/omega_craft_proof_'..(i+1)..'.dbr'
						player:GiveItem(dbrrecipe,1,true);
						break
					end
				end
			--UI.Notify("tagOM_onReset");


end
function omega.scripts.notifylevel()
local t={'OMEGA_LEVEL_1','OMEGA_LEVEL_2','OMEGA_LEVEL_3','OMEGA_LEVEL_4','OMEGA_LEVEL_5','OMEGA_LEVEL_6','OMEGA_LEVEL_7','OMEGA_LEVEL_8','OMEGA_LEVEL_9','OMEGA_LEVEL_10','OMEGA_LEVEL_11','OMEGA_LEVEL_12','OMEGA_LEVEL_13','OMEGA_LEVEL_14','OMEGA_LEVEL_15','OMEGA_LEVEL_16','OMEGA_LEVEL_17','OMEGA_LEVEL_18','OMEGA_LEVEL_19','OMEGA_LEVEL_20','OMEGA_LEVEL_21','OMEGA_LEVEL_22','OMEGA_LEVEL_23','OMEGA_LEVEL_24','OMEGA_LEVEL_25','OMEGA_LEVEL_26','OMEGA_LEVEL_27','OMEGA_LEVEL_28','OMEGA_LEVEL_29','OMEGA_LEVEL_30','OMEGA_LEVEL_31','OMEGA_LEVEL_32','OMEGA_LEVEL_33','OMEGA_LEVEL_34','OMEGA_LEVEL_35','OMEGA_LEVEL_36','OMEGA_LEVEL_37','OMEGA_LEVEL_38','OMEGA_LEVEL_39','OMEGA_LEVEL_40','OMEGA_LEVEL_41','OMEGA_LEVEL_42','OMEGA_LEVEL_43','OMEGA_LEVEL_44','OMEGA_LEVEL_45','OMEGA_LEVEL_46','OMEGA_LEVEL_47','OMEGA_LEVEL_48','OMEGA_LEVEL_49','OMEGA_LEVEL_50','OMEGA_LEVEL_51','OMEGA_LEVEL_52','OMEGA_LEVEL_53','OMEGA_LEVEL_54','OMEGA_LEVEL_55','OMEGA_LEVEL_56','OMEGA_LEVEL_57','OMEGA_LEVEL_58','OMEGA_LEVEL_59','OMEGA_LEVEL_60','OMEGA_LEVEL_61','OMEGA_LEVEL_62','OMEGA_LEVEL_63','OMEGA_LEVEL_64','OMEGA_LEVEL_65','OMEGA_LEVEL_66','OMEGA_LEVEL_67','OMEGA_LEVEL_68','OMEGA_LEVEL_69','OMEGA_LEVEL_70','OMEGA_LEVEL_71','OMEGA_LEVEL_72','OMEGA_LEVEL_73','OMEGA_LEVEL_74','OMEGA_LEVEL_75','OMEGA_LEVEL_76','OMEGA_LEVEL_77','OMEGA_LEVEL_78','OMEGA_LEVEL_79','OMEGA_LEVEL_80','OMEGA_LEVEL_81','OMEGA_LEVEL_82','OMEGA_LEVEL_83','OMEGA_LEVEL_84','OMEGA_LEVEL_85','OMEGA_LEVEL_86','OMEGA_LEVEL_87','OMEGA_LEVEL_88','OMEGA_LEVEL_89','OMEGA_LEVEL_90','OMEGA_LEVEL_91','OMEGA_LEVEL_92','OMEGA_LEVEL_93','OMEGA_LEVEL_94','OMEGA_LEVEL_95','OMEGA_LEVEL_96','OMEGA_LEVEL_97','OMEGA_LEVEL_98','OMEGA_LEVEL_99','OMEGA_LEVEL_100'}

local player = Game.GetLocalPlayer();
	if player:HasToken('OMEGA_START_QUEST') then
		for i=1,100 do
			if player:HasToken(t[i]) then
				local tagnotify ='tagOM_notifylevel'..i
				UI.Notify(tagnotify);
				break
			end
		end
	else	
	UI.Notify('tagOM_notifylevel0');
	end
end

function omega.scripts.bossMIonAddToWorld(objectId)
	UI.Notify('tagOM_bossMIdrop');
		local itemCoords = Entity.Get(objectId):GetCoords()
	    local test = Entity.Create('records/omega/fx/skills/om_fxpak_attackradius_sparkeffect.dbr');
			
				if (test != nil) then
					test:NetworkEnable()
					test:SetCoords(itemCoords)
				end
end

-----Give a low chance to summon the corresponding Omega boss when opening Nemesis chest in Ultimate Difficulty.
function omega.scripts.onopenchestnemesis(objectID)
	local player = Game.GetLocalPlayer()
	if player:HasToken('OMEGA_START_QUEST') and Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
		local spOMbosschance = 0
		math.randomseed(Time.Now())
		spOMbosschance = math.random(1,100)
			if spOMbosschance > 96 then
					omega.scripts.summonatfeet(objectID)
				else
					if player:HasToken('OMEGA_BUFF_SPAWN') then
						omega.scripts.summonatfeet(objectID)
						player:RemoveToken('OMEGA_BUFF_SPAWN')
					end
			end
	end
end

function omega.scripts.onopenchestaetherial()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_aetherial.dbr');
end
function omega.scripts.onopenchestchthonian()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_chthonian.dbr');
end
function omega.scripts.onopenchestkymon()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_kymon.dbr');
end
function omega.scripts.onopenchestorder()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_order.dbr');
end
function omega.scripts.onopenchestoutlaw()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_outlaw.dbr');
end
function omega.scripts.onopenchestundead()
	omega.scripts.onopenchestnemesis('records/omega/creatures/om_spawnerpet_undead.dbr');
end


function omega.scripts.QuestGiveronAddToWorld(objectId)

	if ((omega_toggle == nil or omega_toggle == false) and (Game.GetLocalPlayer():HasToken('OMEGA_TOGGLE_CAST'))) then
		omega.scripts.castskills()
		omega_toggle = true
	end
	
end

---------------------POC Scrolls from Warebare
omega.scripts.fnCall = false


-- when the pet dies & core functionality
function omega.scripts.entityOnDie()
print("entityOnDie")
    local aActions = omega.scripts.fnCall()
    local _player = Game.GetLocalPlayer()

	-- if you want to give the player an item
    if(aActions.GiveItems ~= nil)then
        wanez.giveItems(aActions.GiveItems)
    end
	-- let the player know what happened
    if(aActions.Notify ~= nil)then
        UI.Notify(aActions.Notify)
    end
	
	-- you can add even more actions if there is something reoccurring in your mod and you would like to save typing
end

-- bonus function to give multiple items to the player
--[[
wanez = {} -- not used
function wanez.giveItems(optItems,argUnique) -- TODO: argUnique
    local argUnique = argUnique or false
    local _player = Game.GetLocalPlayer()
    if(type(optItems) == 'table')then
        for i=1,table.getn(optItems) do
            _player:GiveItem(optItems[i],1,true)
        end;
    else
        _player:GiveItem(optItems,1,true)
    end
end
function omega.scripts.useSkill_01() --not used
	omega.scripts.fnCall = function()
		-- you can return a table with options
		-- in this case giving items to the player
		print("useSkill_01")
		local aActions = {
            ['GiveItems']= {
				'records/omega/scroll/item_scroll_01.dbr',
				'records/omega/scroll/item_scroll_02.dbr'
			}
        }
        
		-- or just do whatever you want to happen directly
		UI.Notify('tagPOC_Notify')
		
		-- it doesnt matter how you prefer it, giving an item with the table just saves some typing (no player instance required)
		
		return aActions;
	end;
end;

function omega.scripts.useSkill_02() --not used
print("useSkill_02")
	omega.scripts.fnCall = function()
		local _player = Game.GetLocalPlayer()
		local newItem = Entity.Create('records/omega/scroll/item_scroll_02_buff.dbr')
        newItem:SetCoords(_player:GetCoords())
		
		--UI.Notify('create buff')
		-- return aActions is not required since we are not using any of its features, not need to return anything
	end;
end;
]]

function omega.scripts.clonechestonOpen(objectId)
	local player = Game.GetLocalPlayer()
	if (Game.GetGameDifficulty() >= Game.Difficulty.Legendary) && (player:HasItem('records/omega/items/questitems/Omega_Challenge_Token_1.dbr', 1, true)) then
	player:TakeItem('records/omega/items/questitems/Omega_Challenge_Token_1.dbr', 1, true);
	local chestEntity = Entity.Get(objectId)
	local spawnCoords = chestEntity:GetCoords()
	chestEntity:Destroy()
	local newCreature = Entity.Create('records/omega/creatures/enemies/boss&quest/om_challenge_phase_1.dbr');
	newCreature:SetCoords(spawnCoords);
	end
end
function omega.scripts.challengeBossonDie(objectId)
	--local player = Game.GetLocalPlayer()
	--if (Game.GetGameDifficulty() >= Game.Difficulty.Legendary) then
	--player:GiveItem('records/omega/items/questitems/Omega_Soul_Boss.dbr', 20, true);
	--end
end
--------Challenge Boss spawn on Secret Chest location on Ultimate if has already discovered chest and has token


function omega.scripts.secret(objectId,ChNum)
print("omegasecret chnum:",ChNum)
--local tcreature={'records/omega/creatures/enemies/boss&quest/om_boss_challenge2.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge3.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge4.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge5.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge6.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge7.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge8.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge9.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge10.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge11.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge12.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge13.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge14.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge15.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge16.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge17.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge18.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge19.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge20.dbr','records/omega/creatures/enemies/boss&quest/om_boss_challenge20.dbr'}
local tcreature={'records/omega/creatures/enemies/boss&quest/om_challenge_phase_1.dbr'}
local tItem={'records/omega/items/questitems/Omega_Challenge_Token_2.dbr','records/omega/items/questitems/Omega_Challenge_Token_3.dbr','records/omega/items/questitems/Omega_Challenge_Token_4.dbr','records/omega/items/questitems/Omega_Challenge_Token_5.dbr','records/omega/items/questitems/Omega_Challenge_Token_6.dbr','records/omega/items/questitems/Omega_Challenge_Token_7.dbr','records/omega/items/questitems/Omega_Challenge_Token_8.dbr','records/omega/items/questitems/Omega_Challenge_Token_9.dbr','records/omega/items/questitems/Omega_Challenge_Token_10.dbr','records/omega/items/questitems/Omega_Challenge_Token_11.dbr','records/omega/items/questitems/Omega_Challenge_Token_12.dbr','records/omega/items/questitems/Omega_Challenge_Token_13.dbr','records/omega/items/questitems/Omega_Challenge_Token_14.dbr','records/omega/items/questitems/Omega_Challenge_Token_15.dbr','records/omega/items/questitems/Omega_Challenge_Token_16.dbr','records/omega/items/questitems/Omega_Challenge_Token_17.dbr','records/omega/items/questitems/Omega_Challenge_Token_18.dbr','records/omega/items/questitems/Omega_Challenge_Token_19.dbr','records/omega/items/questitems/Omega_Challenge_Token_20.dbr','records/omega/items/questitems/Omega_Challenge_Token_21.dbr'}
local tToken={'SECRETCHEST_A05','SECRETCHEST_A09','SECRETCHEST_A12','SECRETCHEST_B02','SECRETCHEST_B04','SECRETCHEST_B10','SECRETCHEST_B12','SECRETCHEST_B13','SECRETCHEST_B16','SECRETCHEST_C03','SECRETCHEST_C10','SECRETCHEST_C13','SECRETCHEST_D06','SECRETCHEST_D09','SECRETCHEST_D10','SECRETCHEST_D13','SECRETCHEST_D18','SECRETCHEST_D19','SECRETCHEST_D20','SECRETCHEST_D14'}

	local player = Game.GetLocalPlayer()
	if (Game.GetGameDifficulty() >= Game.Difficulty.Legendary) && (player:HasItem(tItem[ChNum], 1, true) && player:HasToken(tToken[ChNum])) then
		player:TakeItem(tItem[ChNum], 1, true);
		local chestEntity = Entity.Get(objectId)
		local spawnCoords = chestEntity:GetCoords()
		local newCreature = Entity.Create(tcreature[1]);
		newCreature:SetCoords(spawnCoords);
		print("omegasecret Summon:",ChNum)
	else
		if ChNum == 1 then gd.dungeonChests.secretChests.secretA05OnAddToWorld(objectId)
			elseif ChNum == 2 then gd.dungeonChests.secretChests.secretA09OnAddToWorld(objectId)
			elseif ChNum == 3 then gd.dungeonChests.secretChests.secretA12OnAddToWorld(objectId)
			elseif ChNum == 4 then gd.dungeonChests.secretChests.secretB02OnAddToWorld(objectId)
			elseif ChNum == 5 then gd.dungeonChests.secretChests.secretB04OnAddToWorld(objectId)
			elseif ChNum == 6 then gd.dungeonChests.secretChests.secretB10OnAddToWorld(objectId)
			elseif ChNum == 7 then gd.dungeonChests.secretChests.secretB12OnAddToWorld(objectId)
			elseif ChNum == 8 then gd.dungeonChests.secretChests.secretB13OnAddToWorld(objectId)
			elseif ChNum == 9 then gd.dungeonChests.secretChests.secretB16OnAddToWorld(objectId)
			elseif ChNum == 10 then gd.dungeonChests.secretChests.secretC03OnAddToWorld(objectId)
			elseif ChNum == 11 then gd.dungeonChests.secretChests.secretC10OnAddToWorld(objectId)
			elseif ChNum == 12 then gd.dungeonChests.secretChests.secretC13OnAddToWorld(objectId)
			elseif ChNum == 13 then gd.dungeonChests.secretChests.secretD06OnAddToWorld(objectId)
			elseif ChNum == 14 then gd.dungeonChests.secretChests.secretD09OnAddToWorld(objectId)
			elseif ChNum == 15 then gd.dungeonChests.secretChests.secretD10OnAddToWorld(objectId)
			elseif ChNum == 16 then gd.dungeonChests.secretChests.secretD13OnAddToWorld(objectId)
			elseif ChNum == 17 then gd.dungeonChests.secretChests.secretD18OnAddToWorld(objectId)
			elseif ChNum == 18 then gd.dungeonChests.secretChests.secretD19OnAddToWorld(objectId)
			elseif ChNum == 19 then gd.dungeonChests.secretChests.secretD20OnAddToWorld(objectId)
			elseif ChNum == 20 then gd.dungeonChests.secretChests.secretD14OnAddToWorld(objectId)
		end
	end
end
--Warden Cellar 2

function omega.scripts.secretA05OnAddToWorld(objectId)
		omega.scripts.secret(objectId,1)
end
--East Marsh 2
function omega.scripts.secretA09OnAddToWorld(objectId)
		omega.scripts.secret(objectId,2)
end
--Witch God Temple 2
function omega.scripts.secretA12OnAddToWorld(objectId)
		omega.scripts.secret(objectId,3)
end
--Cronley's Hideout 2
function omega.scripts.secretB02OnAddToWorld(objectId)
		omega.scripts.secret(objectId,4)
end
--Undercity 2
function omega.scripts.secretB04OnAddToWorld(objectId)
		omega.scripts.secret(objectId,5)
end

--SoT 5
function omega.scripts.secretB10OnAddToWorld(objectId)
		omega.scripts.secret(objectId,6)
end

--Four Hills Ruins 2
function omega.scripts.secretB12OnAddToWorld(objectId)
		omega.scripts.secret(objectId,7)
end
--Old Arkovia 1 
function omega.scripts.secretB13OnAddToWorld(objectId)
		omega.scripts.secret(objectId,8)
end
--Arkovian Foothills 3
function omega.scripts.secretB16OnAddToWorld(objectId)
		omega.scripts.secret(objectId,9)
end
--Shrine to Forgotten God
function omega.scripts.secretC03OnAddToWorld(objectId)
		omega.scripts.secret(objectId,10)
end
--Tyrant's Hold 3
function omega.scripts.secretC10OnAddToWorld(objectId)
		omega.scripts.secret(objectId,11)
end
--Darkvale Gate 5
function omega.scripts.secretC13OnAddToWorld(objectId)
		omega.scripts.secret(objectId,12)
end

--Obsidian Throne
function omega.scripts.secretD06OnAddToWorld(objectId)
		omega.scripts.secret(objectId,13)
end
--BoC 3
function omega.scripts.secretD09OnAddToWorld(objectId)
		omega.scripts.secret(objectId,14)
end
--Asterkarn Valley 1
function omega.scripts.secretD10OnAddToWorld(objectId)
		omega.scripts.secret(objectId,15)
end
--Necropolis 1
function omega.scripts.secretD13OnAddToWorld(objectId)
		omega.scripts.secret(objectId,16)
end
--Necropolis Crypt 1
function omega.scripts.secretD18OnAddToWorld(objectId)
		omega.scripts.secret(objectId,17)
end
--Final Tomb 3
function omega.scripts.secretD19OnAddToWorld(objectId)
		omega.scripts.secret(objectId,18)
end
--Necropolis Aetherfire
function omega.scripts.secretD20OnAddToWorld(objectId)
		omega.scripts.secret(objectId,19)
end
--Zealot Tomb 2
function omega.scripts.secretD14OnAddToWorld(objectId)
		omega.scripts.secret(objectId,20)
end

---shrine
function omega.scripts.shrine01OnAddToWorld(objectId)
		
end

-----Omega Cast ALL endless buffs skills
function omega.scripts.castskills()
	local player = Game.GetLocalPlayer()
	if player:HasToken('OMEGA_TOTALSPEED_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed1.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed2.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_3') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed3.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_4') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed4.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_5') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed5.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_6') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed6.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_7') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed7.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_8') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed8.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_9') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed9.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_10') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed10.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_11') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed11.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_12') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed12.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_13') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed13.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_14') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed14.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_15') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed15.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_16') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed16.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_17') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed17.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_18') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed18.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_19') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed19.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_20') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed20.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_21') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed21.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_22') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed22.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_23') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed23.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_24') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed24.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_25') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed25.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_26') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed26.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_27') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed27.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_28') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed28.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_29') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed29.dbr')
	end
	if player:HasToken('OMEGA_TOTALSPEED_30') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_totalspeed30.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed1.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed2.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_3') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed3.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_4') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed3.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_5') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed5.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_6') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed6.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_7') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed7.dbr')
	end
	if player:HasToken('OMEGA_PROJSPEED_8') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_projspeed8.dbr')
	end
	if player:HasToken('OMEGA_ABSREDUCTION_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_absreduc.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage1.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage2.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_3') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage3.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_4') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage4.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_5') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage5.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_6') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage6.dbr')
	end
	if player:HasToken('OMEGA_ALLDAMAGE_7') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_alldamage7.dbr')
	end
	if player:HasToken('OMEGA_SHIELD_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_shield1.dbr')
	end
	if player:HasToken('OMEGA_SHIELD_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_shield2.dbr')
	end
	if player:HasToken('OMEGA_SHIELD_3') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_shield3.dbr')
	end
	if player:HasToken('OMEGA_SHIELD_4') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_shield4.dbr')
	end
	if player:HasToken('OMEGA_SHIELD_5') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_shield5.dbr')
	end
	if player:HasToken('OMEGA_COOLDOWN_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_cooldownreduc.dbr')
	end
	if player:HasToken('OMEGA_ENERGYREDUC_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_costreduc.dbr')
	end
	if player:HasToken('OMEGA_PETDAMAGE_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_petdamage1.dbr')
	end
	if player:HasToken('OMEGA_PETDAMAGE_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_petdamage2.dbr')
	end
	if player:HasToken('OMEGA_MAXRESIST_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_maxresist.dbr')
	end
	if player:HasToken('OMEGA_LLEECH_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_lifeleech.dbr')
	end
	if player:HasToken('OMEGA_HEALTH_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_health.dbr')
	end
	if player:HasToken('OMEGA_DEFENSE_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_defense.dbr')
	end
	if player:HasToken('OMEGA_REFLECTION_1') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_reflection1.dbr')
	end
	if player:HasToken('OMEGA_REFLECTION_2') then
	omega.scripts.summonatfeet('records/omega/creatures/castskills/om_cast_reflection2.dbr')
	end
end


