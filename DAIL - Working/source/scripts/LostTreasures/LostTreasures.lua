--Lost Treasures MOD scripts
--credit : okami29 at http://www.grimdawn.com/forums/showthread.php?t=42534
ltreasures = {}

local ltguardDBRs = { "records/treasures/creatures/enemies/hero/guardian01_boar_h06.dbr", "records/treasures/creatures/enemies/hero/guardian02_chthoniandevourer_h05.dbr", "records/treasures/creatures/enemies/hero/guardian03_fleshhulk_h04.dbr","records/treasures/creatures/enemies/hero/guardian04_trollhalfcorrupted_h05.dbr",'records/treasures/creatures/enemies/hero/guardian06_bonerat_melee_h06.dbr','records/treasures/creatures/enemies/hero/guardian07_chthoniandreadguard_h05.dbr','records/treasures/creatures/enemies/hero/guardian08_chthonianfiend_h05.dbr','records/treasures/creatures/enemies/hero/guardian09_chthonianleech_h05.dbr','records/treasures/creatures/enemies/hero/guardian10_dermapteran_h05.dbr','records/treasures/creatures/enemies/hero/guardian11_dranghoul_warrior_h07.dbr','records/treasures/creatures/enemies/hero/guardian12_gazer_h06.dbr','records/treasures/creatures/enemies/hero/guardian13_ghost_h06.dbr','records/treasures/creatures/enemies/hero/guardian14_golemrock_h06.dbr','records/treasures/creatures/enemies/hero/guardian15_harpy_h06.dbr','records/treasures/creatures/enemies/hero/guardian16_human_h04.dbr','records/treasures/creatures/enemies/hero/guardian17_obsidiandefiler_h05.dbr','records/treasures/creatures/enemies/hero/guardian18_skeletalgolem_h05.dbr','records/treasures/creatures/enemies/hero/guardian19_spider_h06.dbr','records/treasures/creatures/enemies/hero/guardian20_waspgiant_h07.dbr' }
local ltspawnbonus = { 4,5,6,7,8,9,10,11,12,98,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100 }
local ltnotificationkills = { 'tagT_onkill1','tagT_onkill2','tagT_onkill3','tagT_onkill4','tagT_onkill5','tagT_onkill6','tagT_onkill7','tagT_onkill8','tagT_onkill9','tagT_onkill10','tagT_onkill11','tagT_onkill12','tagT_onkill13','tagT_onkill14','tagT_onkill15','tagT_onkill16','tagT_onkill17','tagT_onkill18','tagT_onkill19','tagT_onkill20','tagT_onkill21','tagT_onkill22','tagT_onkill23','tagT_onkill24','tagT_onkill25','tagT_onkill26','tagT_onkill27','tagT_onkill28','tagT_onkill29','tagT_onkill30' }
local totalGuards = table.getn(ltguardDBRs)
local spawnedltguardU = 0
local killedltguard = 0

function ltreasures.summon(objectId)
	local newCreature = Entity.Create(objectId);
	local playerCoords = Game.GetLocalPlayer():GetCoords();
	newCreature:SetCoords(playerCoords);
end

function ltreasures.ononeshotremoved(objectId)
	local coords = Entity.Get(objectId):GetCoords()
	local player = Game.GetLocalPlayer()
	if Game.GetGameDifficulty() >= Game.Difficulty.Legendary then
		math.randomseed(Time.Now());
		local randomizer = math.random(1,totalGuards);
		local spawn = Entity.Create(ltguardDBRs[randomizer])
		spawn:SetCoords(coords)
	end
end


function ltreasures.ondieguardian(objectId)
		local coords = Entity.Get(objectId):GetCoords()
		killedltguard = killedltguard+1
		UI.Notify(ltnotificationkills[killedltguard])
		math.randomseed(Time.Now());
		local randomizer01 = math.random(1,100);
		local randomizerbonus = randomizer01 + ltspawnbonus[killedltguard]
		if randomizerbonus > 98 and spawnedltguardU < 3 then
			local ultimateguardian = Entity.Create('records/treasures/creatures/enemies/boss&quest/treasures_guardian_ultimate.dbr')
			ultimateguardian:SetCoords(coords);
			spawnedltguardU = spawnedltguardU +1
		end
end

function ltreasures.ondrop(objectId)
	local newCreature = Entity.Create('records/treasures/fx/skillsother/treasures_fxpak_lootbeam.dbr');
	local coords = Entity.Get(objectId):GetCoords()
	newCreature:SetCoords(coords);
	UI.Notify('tagT_ondrop');
end
function ltreasures.ondropdestroy(objectId)
	Entity.Get(objectId):Destroy()
end