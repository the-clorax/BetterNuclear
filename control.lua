script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    -- if they're wearing our armor
    if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("depleted-uranium-armor") >= 1 then
       -- slow them doen
       player.character.character_running_speed_modifier = 0.8
    end
  end
)