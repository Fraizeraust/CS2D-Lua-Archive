local Armour = {}
local Player = {}

Armour.Player = {}

function MenuInit(id, action)
  if ( action == 1 ) then
    menu(id, "Armours Menu, Light Armour, Armour, Heavy Armour, Medic Armour, Remove recent armour!")
  end
end


function MenuDialog(id, title, button)
  if ( title == "Armours Menu" ) then
    if ( button == 1 ) then
      parse("equip " .. id .. " 79")
      msg2(id, "\169152251152You're equipped with a Light armour!")
      Armour.Player = nil
    elseif ( button == 2 ) then
      parse("equip " .. id .. " 80")
      msg2(id, "\169152251152You're equipped with a Armour!")
      Armour.Player = nil
    elseif ( button == 3 ) then
      parse("equip " .. id .. " 81")
      msg2(id, "\169152251152You're equipped with a Heavy Armour!")
      Armour.Player = nil
    elseif ( button == 4 ) then
      parse("equip " .. id .. " 82")
      msg2(id, "\169152251152You're equipped with a Medic Armour")
      Armour.Player = nil
    elseif ( button == 5 ) then
      parse("setarmor " .. id .. " 0")
      msg2(id, "\169220200600Your recent armour has been removed!")
      Armour.Player = nil
    end
  end
end

addhook("serveraction", "MenuInit")
addhook("menu", "MenuDialog")
