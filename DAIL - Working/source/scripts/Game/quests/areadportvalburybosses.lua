/*
	
	GRIM DAWN
	
	For more information, visit us at http://www.grimdawn.com
	
*/

gd.quests.areaDPortValburyBosses = {}


local doorBossA01 = 0
local doorBossA02 = 0
local doorBossB01 = 0
local doorBossB02 = 0
local doorPermaLocked = false
local doorLockedWarning = false
local doorBossDead = false



-- Bation of Chaos Boss, unlocks access to Epic Door.
function gd.quests.areaDPortValburyBosses.doorGuardianKilled()
	
	doorBossDead = true

end



-- Port Valbury boss door initialization
function gd.quests.areaDPortValburyBosses.doorBossA01OnAddToWorld(objectId)
	
	if Server then
		doorBossA01 = objectId
	
	end
	
end

function gd.quests.areaDPortValburyBosses.doorBossA02OnAddToWorld(objectId)
	
	if Server then
		doorBossA02 = objectId
	
	end
	
end

function gd.quests.areaDPortValburyBosses.doorBossB01OnAddToWorld(objectId)
	
	if Server then
		doorBossB01 = objectId
	
	end
	
end

function gd.quests.areaDPortValburyBosses.doorBossB02OnAddToWorld(objectId)
	
	if Server then
		doorBossB02 = objectId
	
	end
	
end


function gd.quests.areaDPortValburyBosses.Boss1Killed()
	
	if Server then
		local door01 = Door.Get(doorBossA01)
		local door02 = Door.Get(doorBossA02)
	
		if door01 != nil then
			door01:Open()
		
		end
	
		if door02 != nil then
			door02:Open()
		
		end
	
	end

end

-- Reanimator Boss
local reanimatorsDead = { false, false, false }

function gd.quests.areaDPortValburyBosses.reanimatorsDeadGlobalMP()

	GiveTokenToLocalPlayer("AREAD_PORTVALBURY_CLEARED")

end

local function ReanimatorsKilled()

	if Server then
		QuestGlobalEvent("portValburyReanimatorsDeadGlobalMP")

		local door01 = Door.Get(doorBossB01)
		local door02 = Door.Get(doorBossB02)
	
		if door01 != nil then
			door01:Open()
		
		end
	
		if door02 != nil then
			door02:Open()
		
		end
	
	end

end

function gd.quests.areaDPortValburyBosses.Boss2AKilled()

	if Server then
		reanimatorsDead[1] = true
		
		if reanimatorsDead[1] && reanimatorsDead[2] && reanimatorsDead[3] then
			ReanimatorsKilled()
		
		end
		
	end

end

function gd.quests.areaDPortValburyBosses.Boss2BKilled()

	if Server then
		reanimatorsDead[2] = true
		
		if reanimatorsDead[1] && reanimatorsDead[2] && reanimatorsDead[3] then
			ReanimatorsKilled()
		
		end
		
	end

end

function gd.quests.areaDPortValburyBosses.Boss2CKilled()

	if Server then
		reanimatorsDead[3] = true
		
		if reanimatorsDead[1] && reanimatorsDead[2] && reanimatorsDead[3] then
			ReanimatorsKilled()
		
		end
		
	end

end

--
-- Port Valbury Entry door control
--

function gd.quests.areaDPortValburyBosses.epicDoorOnInteractGlobalMP()

	doorPermaLocked = true

end

function gd.quests.areaDPortValburyBosses.epicDoorOnInteract(objectId, userId)
	
	local player = Player.Get(userId)
	local door = Door.Get(objectId)
		
	if (door != nil) then
		
		--if player:HasItem("records/items/crafting/materials/craft_skeletonkey.dbr", 1, false) && doorPermaLocked == false && doorBossDead == true then
		if player:HasItem("records/items/crafting/materials/craft_skeletonkey.dbr", 1, false) then
		
		
			-- Mark the door as locked permanently for all players
--			doorPermaLocked = true
			QuestGlobalEvent("portValburyEpicDoor")
			
			-- Consume key to unlock door		
			door:Open()
			player:TakeItem("records/items/crafting/materials/craft_skeletonkey.dbr", 1, false)
			
			UI.Notify("tagNotification_WarningValburyGates")
				
--		elseif player:HasItem("records/items/crafting/materials/craft_skeletonkey.dbr", 1, false) && doorLockedWarning == false && doorBossDead == true then
--			doorLockedWarning = true
--			UI.Notify("tagNotification_WarningValburyGatesLocked")
		
		end
			
	end
	
end


--
-- Exit Shortcut Control
-- Only opens after main chest is opened
-- 
local shortcutId = 0
local shortcutOpen = false

function gd.quests.areaDPortValburyBosses.unlockShortcut()

	UI.Notify("tagNotificationStepsOfTormentShortcut")
	
	if Server then
		shortcutOpen = true
		
		local door = Door.Get(shortcutId)
		
		-- Unlock Shortcut
		if door != nil then
			door:SetLocked(false)
			door:Open()
		end
		
	
	end
	
end

function gd.quests.areaDPortValburyBosses.exitShortcutOnAddToWorld(objectId)
	
	if Server then
		shortcutId = objectId
		
		if shortcutOpen then
			local door = Door.Get(objectId)
			
			if (door:IsLocked()) then
				door:SetLocked(false)
				door:Open()
				
			end
		
		end
		
	end
	
end

-- No Riftgate region warning trigger
function gd.quests.areaDPortValburyBosses.warningNoRiftgates(triggererId)

	local player = Player.Get(triggererId)

	if (player != nil) && (player:HasToken("WARNING_PORTVALBURY") == false) then
		UI.Notify("tagNotification_WarningRiftgateDisabled")
		GiveTokenIfPlayer(triggererId, "WARNING_PORTVALBURY")
	end
	
end



--
-- Conflagration Blockade
--

-- Possible Blockade states
local BlockadeState = { Active = 0, Destroyed = 1}

local blockadeId = 0
local spawnedBlockade = false

-- Blockade

local blockadeStateObjects = orderedTable();
	blockadeStateObjects["CONFLAGRATION_BLOCKADECLEARED"]	= { state = BlockadeState.Destroyed,  dbr = nil }
	blockadeStateObjects[""] 								= { state = BlockadeState.Active, dbr = "records/storyelements/questassets/debriswall_conflagration_break.dbr" }

function gd.quests.areaDPortValburyBosses.blockadeOnAddToWorld(objectId)

	if Server then
	
		if (not spawnedFloodedPassageBlockade) then

			local userdata = {};
			TokenStateBasedObjectSwap(objectId, userdata, blockadeStateObjects);
			Shared.setUserdata(objectId, userdata);
			
			spawnedFloodedPassageBlockade = true
			
		end
		
	end
	
end

function gd.quests.areaDPortValburyBosses.blockadeAvatarOnAddToWorld(objectId)

	if Server then
	
		blockadeId = objectId
		
	end
	
end

gd.quests.areaDPortValburyBosses.blockadeOnDestroy = ClearObjectUserdata
	
-- Detonation Site
local detonationSiteStateObjects = orderedTable();
	detonationSiteStateObjects["CONFLAGRATION_BLOCKADECLEARED"]	= { state = BlockadeState.Destroyed,  dbr = nil }
	detonationSiteStateObjects[""] 								= { state = BlockadeState.Active, dbr = "records/creatures/npcs/questnpcs/interactiveobjects/npc_detonationsite_conflagration.dbr" }

function gd.quests.areaDPortValburyBosses.detonationSiteOnAddToWorld(objectId)

	if Server then
	
		local userdata = {};
		TokenStateBasedObjectSwap(objectId, userdata, detonationSiteStateObjects);
		Shared.setUserdata(objectId, userdata);
		
	end
	
end

gd.quests.areaDPortValburyBosses.detonationSiteOnDestroy = ClearObjectUserdata

-- Destroy Blockade
function gd.quests.areaDPortValburyBosses.blockadeDestroyGlobalMP()

GiveTokenToLocalPlayer("CONFLAGRATION_BLOCKADECLEARED")

end

function gd.quests.areaDPortValburyBosses.blockadeDestroy()

	if Server then
	
		if blockadeId != 0 then
			local Blockade = Destructible.Get(blockadeId)
			local coords = Blockade:GetCoords()
			Blockade:Destroy(Vec(0,1,0), 1000, false)
			blockadeId = 0
			
			local pfx = Entity.Create("records/fx/skillsother/attackradius/detonatelarge_fxpak01.dbr")
			if pfx != nil then
				pfx:NetworkEnable()
				pfx:SetCoords(coords)
			end
		end
		
		QuestGlobalEvent("detonationConflagrationToken")
		
	end
	
end
