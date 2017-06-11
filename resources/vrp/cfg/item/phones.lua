




local function play_smoke(player)
   local seq = {
     {"mp_player_int_uppersmoke","mp_player_int_smoke_enter",1},
     {"mp_player_int_uppersmoke","mp_player_int_smoke",1},
     {"mp_player_int_uppersmoke","mp_player_int_smoke_exit",1}
   }

  vRPclient.playAnim(player,{true,seq,false})
end

local items = 

["brokia"]= {"Brokia Phone","",{},0.0}
