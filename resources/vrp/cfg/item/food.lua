-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drunk(player)
   local seq = {
     {"move_m@drunk@verydrunk","idle",1},
     {"move_m@drunk@verydrunk","idle_intro",1},
     {"move_m@drunk@verydrunk","walk",1},
     {"move_m@drunk@verydrunk","wstart_l_0",1},
     {"move_m@drunk@verydrunk","wstart_r_0",1},
     {"move_m@drunk@verydrunk","wstop_l_0",1},
     {"move_m@drunk@verydrunk","wstop_r_0",1}
   }

  vRPclient.playAnim(player,{true,seq,true})
  SetTimeout(15000)
  vRP.stopAnim(false)
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- DRINKS --
-- create Water item
local water_choices = {}
water_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"water",1) then
      vRP.varyThirst(user_id,-25)
      vRPclient.notify(player,{"~b~ Drinking water."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["water"] = {"Water bottle","",water_choices,0.5}

-- create Milk item
local milk_choices = {}
milk_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"milk",1) then
      vRP.varyThirst(user_id,-20)
      vRPclient.notify(player,{"~b~ Drinking Milk."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["milk"] = {"Milk","",milk_choices,0.3}

-- create Coffee item
local coffee_choices = {}
coffee_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"coffee",1) then
      vRP.varyThirst(user_id,-10)
      vRPclient.notify(player,{"~b~ Drinking Coffee."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["coffee"] = {"Coffee","",coffee_choices,0.2}

-- create Tea item
local tea_choices = {}
tea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tea",1) then
      vRP.varyThirst(user_id,-15)
      vRPclient.notify(player,{"~b~ Drinking Tea."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tea"] = {"Tea","",tea_choices,0.2}

-- create iceTea item
local icetea_choices = {}
icetea_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"icetea",1) then
      vRP.varyThirst(user_id,-20)
      vRPclient.notify(player,{"~b~ Drinking ice-Tea."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["icetea"] = {"ice-Tea","",icetea_choices,0.5}

-- create Orange Juice item
local orangejuice_choices = {}
orangejuice_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"orangejuice",1) then
      vRP.varyThirst(user_id,-25)
      vRPclient.notify(player,{"~b~ Drinking Orange Juice."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["orangejuice"] = {"Orange Juice.","",orangejuice_choices,0.5}

-- create Goca Gola item
local gocagola_choices = {}
gocagola_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"gocagola",1) then
      vRP.varyThirst(user_id,-35)
      vRPclient.notify(player,{"~b~ Drinking Goca Gola."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["gocagola"] = {"Goca Gola","",gocagola_choices,0.3}

-- create RedGull item
local redgull_choices = {}
redgull_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"redgull",1) then
      vRP.varyThirst(user_id,-40)
      vRPclient.notify(player,{"~b~ Drinking RedGull."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["redgull"] = {"RedGull","",redgull_choices,0.3}

-- create Lemon limonad item
local lemonlimonad_choices = {}
lemonlimonad_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"lemonlimonad",1) then
      vRP.varyThirst(user_id,-45)
      vRPclient.notify(player,{"~b~ Drinking Lemon limonad."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}
items["lemonlimonad"] = {"Lemon limonad","",lemonlimonad_choices,0.3}

-- create Vodka item
local vodka_choices = {}
vodka_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"vodka",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Drinking Vodka."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      play_drunk(player)
      vRP.closeMenu(player)
    end
  end
end}
items["vodka"] = {"Vodka","",vodka_choices,0.5}

-- create Whiskey item
local whiskey_choices = {}
whiskey_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"whiskey",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Drinking Whiskey."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      play_drunk(player)
      vRP.closeMenu(player)
    end
  end
end}
items["whiskey"] = {"Whiskey","",whiskey_choices,0.5}

-- create JackNCoke item
local jackncoke_choices = {}
jackncoke_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"jackncoke",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Drinking Jack n Coke."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      play_drunk(player)
      vRP.closeMenu(player)
    end
  end
end}
items["jackncoke"] = {"Jack n Coke","",jackncoke_choices,0.7}

-- create Beer item
local beer_choices = {}
beer_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"beer",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Drinking Beer."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      play_drunk(player)
      vRP.closeMenu(player)
    end
  end
end}
items["beer"] = {"Beer","",beer_choices,0.5}

-- create Wine item
local wine_choices = {}
wine_choices["Drink"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"wine",1) then
      vRP.varyThirst(user_id,-65)
      vRP.varyHunger(user_id, 15)
      vRPclient.notify(player,{"~b~ Drinking Wine."})
      vRPclient.playScreenEffect(player,{"DrugsDrivingIn",3*60})
      play_drink(player)
      play_drunk(player)
      vRP.closeMenu(player)
    end
  end
end}
items["wine"] = {"Wine","",wine_choices,0.8}


--FOOD

-- create Bread item
local breed_choices = {}
breed_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"bread",1) then
      vRP.varyHunger(user_id,-10)
      vRPclient.notify(player,{"~o~ Eating Bread."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["breed"] = {"Bread","",breed_choices,0.5}

-- create Corn item
local corn_choices = {}
corn_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"corn",1) then
      vRP.varyHunger(user_id,-20)
      vRPclient.notify(player,{"~o~ Eating George's Soul."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["corn"] = {"Corn","",corn_choices,0.5}

-- create Wings item
local wings_choices = {}
wings_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"wings",1) then
      vRP.varyHunger(user_id,-20)
      vRPclient.notify(player,{"~o~ Eating Wings."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["Wings"] = {"Wings","",wings_choices,0.5}

-- create Donut item
local donut_choices = {}
donut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"donut",1) then
      vRP.varyHunger(user_id,-15)
      vRPclient.notify(player,{"~o~ Eating Donut."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["donut"] = {"Donut","",donut_choices,0.2}

-- create Peach item
local peach_choices = {}
peach_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"peach",1) then
      vRP.varyHunger(user_id,-15)
      vRPclient.notify(player,{"~o~ Eating Peach."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["peach"] = {"Peach","",peach_choices,0.2}

-- create Tacos item
local tacos_choices = {}
tacos_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tacos",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Eating Tacos."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}
items["tacos"] = {"Tacos","",tacos_choices,0.2}

-- create sandwich item
local sd_choices = {}
sd_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"sandwich",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Eating sandwich."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["sandwich"] = {"Sandwich","A tasty snack.",sd_choices,0.8}

-- create Kebab item
local kebab_choices = {}
kebab_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"kebab",1) then
      vRP.varyHunger(user_id,-45)
      vRPclient.notify(player,{"~o~ Eating Kebab."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["kebab"] = {"Kebab","",kebab_choices,0.4}

-- create Premium Donut item
local pdonut_choices = {}
pdonut_choices["Eat"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"pdonut",1) then
      vRP.varyHunger(user_id,-25)
      vRPclient.notify(player,{"~o~ Eating Premium Donut."})
      play_eat(player)
      vRP.closeMenu(player)
    end
  end
end}

items["pdonut"] = {"Premium Donut","",pdonut_choices,0.5}


return items
