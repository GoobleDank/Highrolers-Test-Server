
local cfg = {}

-- define market types like garages and weapons
-- _config: blipid, blipcolor, permission (optional, only users with the permission will have access to the market)

cfg.market_types = {
  ["food"] = {
    _config = {blipid=52, blipcolor=2},

    -- list itemid => price
    -- Drinks
    ["milk"] = 2,
    ["water"] = 2,
    ["coffee"] = 4,
    ["tea"] = 4,
    ["icetea"] = 8,
    ["orangejuice"] = 8,
    ["gocagola"] = 12,
    ["redgull"] = 12,
    ["lemonlimonad"] = 14,
    ["vodka"] = 30,

    --Food
    ["breed"] = 2,
    ["donut"] = 2,
    ["tacos"] = 8,
    ["sandwich"] = 60,
    ["kebab"] = 20,
    ["pdonut"] = 15,
  },
  ["drugstore"] = {
    _config = {blipid=51, blipcolor=2, permission="emergency.shop"},
    ["medkit"] = 5,
    ["pills"] = 2,
    ["coffee"] = 0,
    ["donut"] = 0
  },

   ["Products"] = {
    _config = {blipid=51, blipcolor=2, permission="delivery.shop"},
    ["TV"] = 600,
    ["phonecrate"] = 1000,
    ["furbees"] = 800,
    ["golfball"] = 900,
    ["beer"] = 700
  },

  ["bar"] = {
    _config = {blipid=93, blipcolor=4},
    ["vodka"] = 20,
    ["jackncoke"] = 15,
    ["whiskey"] = 20,
    ["beer"] = 10,
    ["wine"] = 55,
    ["wings"] = 25,
    ["Box Of Matches"] = 3
  }
}


-- list of markets {type,x,y,z}

cfg.markets = {
  {"food",-47.522762298584,-1756.85717773438,29.4210109710693},
  {"food",25.7454013824463,-1345.26232910156,29.4970207214355}, 
  {"food",1135.57678222656,-981.78125,46.4157981872559}, 
  {"food",1163.53820800781,-323.541320800781,69.2050552368164}, 
  {"food",374.190032958984,327.506713867188,103.566368103027}, 
  {"food",2555.35766601563,382.16845703125,108.622947692871}, 
  {"food",2676.76733398438,3281.57788085938,55.2411231994629}, 
  {"food",1960.50793457031,3741.84008789063,32.3437385559082},
  {"food",1393.23828125,3605.171875,34.9809303283691}, 
  {"food",1166.18151855469,2709.35327148438,38.15771484375}, 
  {"food",547.987609863281,2669.7568359375,42.1565132141113}, 
  {"food",1698.30737304688,4924.37939453125,42.0636749267578}, 
  {"food",1729.54443359375,6415.76513671875,35.0372200012207}, 
  {"food",-3243.9013671875,1001.40405273438,12.8307056427002}, 
  {"food",-2967.8818359375,390.78662109375,15.0433149337769}, 
  {"food",-3041.17456054688,585.166198730469,7.90893363952637}, 
  {"food",-1820.55725097656,792.770568847656,138.113250732422}, 
  {"food",-1486.76574707031,-379.553985595703,40.163387298584}, 
  {"food",-1223.18127441406,-907.385681152344,12.3263463973999}, 
  {"food",-707.408996582031,-913.681701660156,19.2155857086182},
  {"drugstore",-497.977142333984,-328.329895019531,34.501636505127},
  {"drugstore",451.671600341797,-980.363342285156,30.6895885467529},
  {"bar",-560.127807617188,287.055633544922,82.1764602661133}, --Tequi-La-La
  {"bar",1985.67993164063,3053.75390625,47.2151870727539}, -- Yellow Jack
  {"bar",128.1410369873,-1286.1120605469,29.281036376953}, -- Strip Club
  {"Products",-439.8359375,6146.7470703125,31.4782104492188}  -- Postop
}

return cfg
