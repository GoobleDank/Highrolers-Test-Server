
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)
--police function
local police = {}
function police.init(player)
  local weapons = {}
  weapons["WEAPON_STUNGUN"] = {ammo=1000}
  weapons["WEAPON_COMBATPISTOL"] = {ammo=100}
  weapons["WEAPON_NIGHTSTICK"] = {ammo=0}
  weapons["WEAPON_FLASHLIGHT"] = {ammo=0}
  
  vRPclient.giveWeapons(player,{weapons,true})
  vRPclient.setCop(player,{true})
end

function police.onjoin(player)
  police.init(player)
  vRPclient.notify(player,{"You have went on duty."})
end

function police.onleave(player)
  vRPclient.giveWeapons(player,{{},true})
  vRPclient.notify(player,{"You have went off duty."})
  vRPclient.setCop(player,{false})
end

function police.onspawn(player)
  police.init(player)
  vRPclient.notify(player,{"You are a Police Officer."})
end

local ems = {}
function ems.init(player)
  local weapons = {}
  weapons["WEAPON_FIREEXTINGUISHER"] = {ammo=0}
  weapons["WEAPON_FLASHLIGHT"] = {ammo=0}
  
  vRPclient.giveWeapons(player,{weapons,true})
  vRPclient.setEms(player,{true})
end

function ems.onjoin(player)
  ems.init(player)
  vRPclient.notify(player,{"You are an EMT!"})
end

function ems.onleave(player)
  vRPclient.giveWeapons(player,{{},true})
  vRPclient.notify(player,{"You have left the Hospital."})
  vRPclient.setEms(player,{false})
end

function ems.onspawn(player)
  ems.init(player)
  vRPclient.notify(player,{"You are an EMT."})
end

local taxi = {}
function taxi.onjoin(player)
  vRPclient.notify(player,{"You are a Taxi Driver!"})
end

function taxi.onspawn(player)
  vRPclient.notify(player,{"You are a Taxi Driver."})
end

function taxi.onleave(player)
  vRPclient.notify(player,{"Quit Taxi Driver job."})
end

local brokia = {}
function brokia.onjoin(player)
local user_id = vRP.getUserId(player)
  vRP.giveInventoryItem(user_id,"brokia", 1)
  vRP.giveMoney(user_id,-50)
	vRPclient.notify(source,{"You have activated your Brokia Phone"})
end

function brokia.onleave(player)
  vRPclient.notify(source,{"You have deactivated your Contract"})
end

local function user_spawn(player)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil and vRP.isFirstSpawn(user_id) then
    -- welcome instructions
    local data = vRP.getUserDataTable(user_id)

    vRPclient.notify(player,{"Loading : Please wait..."})
  end
end

cfg.groups = {
 
   ["admin"] = {
   _config = {onspawn = function(player) vRPclient.notify(player,{"Logged in as an Admin."}) end},
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
    "player.coords",
    "player.tptome",
    "player.tpto",
    "admin.tickets",
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem",
  },
  -- the group user is auto added to all logged players
  ["user"] = {
    _config = { gtype = "job", onspawn = user_spawn },
    "police.askid",
    "player.calladmin",
    "phones.store",
    "player.list",
    "citizen.paycheck"
  },
  --phone groups
  ["Activate Brokia Phone"] = {
    _config = { gtype = "phone", onjoin = brokia.onjoin, onleave = brokia.onleave },
    "player.phone",
    "player.calladmin",
    "phone.bill"
  },
  
  ["Cancel Contract"] = {
    _config = { gtype = "phone",},
    "police.askid",
    "player.calladmin",
    "phone.store"
  },
  -- Emergency
  ["police"] = {
    _config = { gtype = "job", onleave = police.onleave, onjoin = police.onjoin, onspawn = police.onspawn },
    "police.cloakroom",
    "police.pc",
    "police.handcuff",
    "police.putinveh",
    "police.askid",
    "police.check",
    "police.service",
    "police.vehicle",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    "police.fine",
    "police.jail",
    "police.drag",
	  "emergency.revive",
    "emergency.shop",
    "police.paycheck",
    "police.access"
  },

  ["Go off duty"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "police.access"
  },

  ["EMS"] = {
 _config = { gtype = "job", onspawn = ems.onspawn, onjoin = ems.onjoin, onleave = ems.onleave },
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
    "emergency.vehicle",
    "police.paycheck",
    "ems.cloakroom"
  },
 
  ["taxi"] = {
    _config = { gtype = "job", onspawn = taxi.onspawn, onjoin = taxi.onjoin, onleave = taxi.onleave },
    "taxi.service",
    "taxi.vehicle",
    "taxi.paycheck"
  },
  ["Go off duty"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "police.access"
  },
  ["citizen"] = {
    _config = { gtype = "job" }
    "player.calladmin",
    "citizen.paycheck"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = {
    "admin"
  },
  [3] = { 
    "admin",
    "police",
    "Go off duty"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor permission (optional)

cfg.selectors = {
  ["Jobs"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
    "taxi",
    "citizen"
  },
  ["police"] = {
    _config = {x = 437.924987792969,y = -987.974182128906, z = 30.6896076202393 , blipid = 351, blipcolor= 38, permission = "police.access" },
    "police",
    "Go off duty"
  },
  ["EMS"] = {
    _config = {x=-498.959716796875,y=-335.715148925781,z=34.5017547607422, blipid = 351, blipcolor= 1 },
    "EMS",
    "Go off duty"
  },
  ["Life Invader"] = {
    _config = {x=-1082.90014648438,y=-248.791107177734,z=37.7632904052734, blipid = 351, blipcolor= 1 },
    "Activate Brokia Phone",
    "Cancel Contract"
    
  }
}

return cfg

