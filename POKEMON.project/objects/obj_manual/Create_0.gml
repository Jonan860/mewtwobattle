draw_set_font(font0)
draw_set_valign(fa_left)
startatxt = "Starta spel!"
firstCornerX = room_width/2 - string_width(string_hash_to_newline(startatxt))/2
firstCornerY = room_height - 32 - string_height(string_hash_to_newline(startatxt))
secondCornerX = room_width/2 + string_width(string_hash_to_newline(startatxt))/2
secondCornerY = room_height - 32
draw_set_font(fontoriginal)