/// @description gerando a transição

if(ativador=false)
{}
else if(direcao=1&&ativador=true)
{
	ativador=false;
	instance_create_layer(room_width,0,"transicao",obj_transicaoD);
	instance_create_layer(0,0,"transicao",obj_transicaoE);
}
else if(direcao=0&&ativador=true)
{
	ativador=false
	instance_create_layer(room_width/2,0,"transicao",obj_transicaoD);
	instance_create_layer(room_width/2,0,"transicao",obj_transicaoE);
}