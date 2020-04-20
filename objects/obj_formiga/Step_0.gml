
//o keyboard_check acontece enquanto segura ja o pressed acontece apenas quando aperta
if(!invencivel){

	var esq = keyboard_check(vk_left);			//checando se estou segurando esquerda
	var dir = keyboard_check(vk_right);			//checando se estou segurando direita
	var cima = keyboard_check(vk_up);			//checando se estou segurando cima
	var baixo = keyboard_check(vk_down);		//checando se estou segurando baixo
contando+=1;
if contando >= 25 && (esq || dir || cima || baixo){
	audio_play_sound(snd_andar,1,0);
	contando = 0;
}
cont+=1;
if cont>= 5 && (esq || dir|| cima){
	instance_create_layer(x,y+32,"instances",obj_rastro);
	cont = 0;
}

		//------movimento horizontal------
	//"checando"
	var velh = (dir-esq) * vel;
	//aplicando velocidade
	x += velh;
	if(velh == 0){
		if image_angle>=0{
			image_angle -=1 ;
		}
		else{
			image_angle+=1;
		}
		
	}
	if(sign(velh) >0){
		if(image_angle >= -15){
		image_angle -= lerp(1,10,0.25);
		}
	}
	if(sign(velh) <0){
		if(image_angle <= 15){
		image_angle += lerp(1,10,0.25);
		}
	}
	//------movimento verical------
	//checando
	var velv = (baixo-cima) * vel;
	//aplicando velocidade
	y += velv;
	y+=2;
	// perdendo controle 
}
x= clamp(x,32,room_width-32);
y=clamp(y,32,room_height-32);
if(y >= room_height-32){
	global.vida=0;
}
if(!invencivel && place_meeting(x,y,obj_galho)){
	audio_play_sound(snd_tomeidano,10,0);
	invencivel = true;
	global.vida-=1;
	alarm[1] = room_speed/2
	instance_create_layer(0,0,"instances",obj_treme);
	image_angle+=20;
	direction = direction + 180;
	speed = 5
	alarm[1] = room_speed/2;

}


var vento = instance_place(x,y,obj_vento);
if(!s_controle && vento && !invencivel){
	image_angle+=25;
	instance_create_layer(x,y,"instances",obj_treme);
	s_controle = true;
	direction = vento.direction;
	speed = 5
	alarm[1] = room_speed/2;
}


if(global.vida<=0){
	instance_destroy();
	audio_play_sound(snd_morreu,2,0);
}

//usando primeira imagem
if(!invencivel){
	image_index = 0;
	image_speed = 0;
}

else{
	image_speed = 2
}