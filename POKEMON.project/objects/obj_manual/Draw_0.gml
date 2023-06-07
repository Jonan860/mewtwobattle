
draw_set_font(font0)
draw_set_valign(fa_left)
var attm3=1/1.75*100
var attm2=1/1.50*100
var attm1=1/1.25*100
var att0=1*100
var att1=1.25*100
var att2=1.5*100
var att3=1.75*100
var defm3=175
var defm2=150
var defm1=125
var def0=100        // 1/(1-x)=y    1/y=1-x x=1-1/y=(y-1)/y
draw_text_ext(32,32,string_hash_to_newline(@"
Trycker man på tangenbordsknapp 'F' så sätter man på eller av fullscreen. För att kunna stänga av spelet krävs att fullscreen är avstängt. För övrigt så behöver man endast använda musen med vänster musknapp. Tryck på switch för att byta pokemon. Pokimonerna har två 'moves', en som gör skada och en som antingen ändrar en attribut (defence eller attack) på sig själv eller Mewtwo. Alla egna pokemonerna gör lika mycket skada och moves som ändrar attributerna gör detta med en nivå, vilket går att avläsa från texten brevid pokemonen. Förändringarna av attribut nivåerna(bonusarna) ändrar attributerna på så sätt att pokemonarna förbättras/försämras linjärt med 25% av ursprungsförmågan. Alltså för attack_bonus motsvarar nivåerna -3,-2,-1,0,1,2,3 mot att pokimonens attackstyrka är lika med "
+string(attm3)+"%,"+string(attm2)+"%,"+string(attm1)+"%,"+string(att0)+"%,"+string(att1)+"%,"+string(att2)+"%,"+string(att3)+"%"+" av dess ursprungliga attackstyrka(då attack bonus=0)."+" För defence bonus gäller att nivåerna -3,-2,-1,0,1,2,3 motsvarar att skadan som tas är "
+string(att3)+",%"+string(att2)+",%"+string(att1)+",%"+string(att0)+",%"+string(attm1)+",%"+string(attm2)+",%"+string(attm3)+",%"+" utav den ursprungliga skadan som tas(då defence bonus=0)."+" Man förlorar när en av ens egna pokemon blir besegrad."+" För att starta spelet tryck på knappen nedan."),32,room_width-32)
var oldcolor=draw_get_color()
draw_set_color(c_green)
draw_rectangle(xx1,yy1,xx2,yy2,1)
draw_text(xx1,yy1,string_hash_to_newline(startatxt))
draw_set_color(oldcolor)
draw_set_font(fontoriginal)


