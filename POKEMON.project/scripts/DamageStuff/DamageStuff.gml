function getAttackBonusDamageModifier(){
return ifElseReturn(owner.attack_bonus>=0,
1+BONUSMULTIPLIER*owner.attack_bonus,
1/(1-BONUSMULTIPLIER*owner.attack_bonus))
}

function getDefenceBonusDamageModifier(target){
return ifElseReturn(target.defence_bonus>=0
, 1/(1+BONUSMULTIPLIER*target.defence_bonus)
, 1-BONUSMULTIPLIER*target.defence_bonus
)
}

function do_damage(target){
	target.HP -= damage*getAttackBonusDamageModifier()*getDefenceBonusDamageModifier(target)
}


