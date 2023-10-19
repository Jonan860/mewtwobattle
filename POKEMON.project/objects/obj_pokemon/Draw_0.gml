if(global.active_starter == id){
	var old_color = draw_get_color()
	draw_set_color(c_black)
	draw_text(x - 420, y - 190, string_hash_to_newline("Stats"))
	draw_text(x - 470, y - 170, string_hash_to_newline("Defence Bonus : " + string(defence_bonus)))
	draw_text(x - 470, y - 150, string_hash_to_newline("Attack Bonus : " + string(attack_bonus)))
	draw_set_color(old_color)
	draw_self();
	draw_healthbar(x - 80, y - 180, x + 80, y - 200, HP, c_black, c_red, c_lime, 0, true, true);
	draw_text(x + 90, y - 200, string_hash_to_newline("HP : "+string(HP)))
}
if(global.mewtwo == id){
	draw_self()
	var pc;
	pc = (HP / max_hp) * 100;
	draw_healthbar(x + 50, y - 5, x + 250, y - 25, pc, c_black, c_red, c_lime, 0, true, true)
	var old_color = draw_get_color()
	draw_set_color(c_black)
	draw_text(x + 260, y - 25, string_hash_to_newline("HP : " + string(HP)))
	draw_text(x + 400, y + 50, string_hash_to_newline("Stats"))
	draw_text(x + 350, y + 70, string_hash_to_newline("Defence Bonus : " + string(defence_bonus)))
	draw_text(x + 350, y + 90,string_hash_to_newline("Attack Bonus : " + string(attack_bonus)))
	draw_set_color(old_color)
}

