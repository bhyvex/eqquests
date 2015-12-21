function event_click_door(e)
  local door_id = e.door:GetDoorID();
  local instance_id = nil;

  if (door_id == 2) then
    instance_id = eq.get_instance_id('chambersa', 1);
    if (instance_id ~= nil and instance_id ~= 0) then
      e.self:MovePCInstance(304, instance_id, 0, 0, 0, 254);
    else
      instance_id = eq.get_instance_id('chambersa', 2);
      if (instance_id ~= nil and instance_id ~= 0) then
        e.self:MovePCInstance(304, instance_id, 0, 0, 0, 254);
      else
        e.self:Message(13, "You are not part of an instance.");
      end
    end


  end

end