contador++;
if(contador >=60){
	global.tempo++;
	contador = 0;
}
if(global.tempo!=0 && ((global.tempo mod 15) == 0) && contador == 1){
	global.level +=1;
}