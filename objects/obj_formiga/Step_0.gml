
//o keyboard_check acontece enquanto segura ja o pressed acontece apenas quando aperta
if(!invencivel){

	var esq = keyboard_check(vk_left);			//checando se estou segurando esquerda
	var dir = keyboard_check(vk_right);			//checando se estou segurando direita
	var cima = keyboard_check(vk_up);			//checando se estou segurando cima
	var baixo = keyboard_check(vk_down);		//checando se estou segurando baixo

	//testando o tiro tirar depois de testar

	//impedindo que o player saia da tela

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
if(y = room_height-32){
	instance_destroy();	
}
if(!invencivel && place_meeting(x,y,obj_galho)){
	invencivel = true;
	vida-=1;
	alarm[1] = room_speed/2
	instance_create_layer(x,y,"instances",obj_treme);
	image_angle+=20;
	direction = direction + 180;
	speed = 5
	alarm[1] = room_speed/2;

}


var vento = instance_place(x,y,obj_vento);
if(!s_controle && vento && !invencivel){
	image_angle+=5;
	instance_create_layer(x,y,"instances",obj_treme);
	s_controle = true;
	direction = vento.direction;
	speed = 5
	alarm[1] = room_speed/2;
}


if(vida<=0){
	game_restart();
}

//usando primeira imagem
if(!invencivel){
	image_index = 0;
	image_speed = 0;
}

else{
	image_speed = 2
}