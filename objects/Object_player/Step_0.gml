/*
aqui iremos codificar o processo de andar deo player
Nós vamos a função keybord_check()
Mas o que ela faz?
Primeiro vamos pegar a discrição dela
Uma dica,o mouse encima da função ela ira mostrar uma descrição dela
Descrição:
funtion keybord_check(key:  Constante VirtualKey or Real) -> Bool
whith this function you can check to see if a key is held down or not.
key The key to check the dow state of.

Tradução:
A função keybord_check(Key/Teclas: constante. do teclado ou um valor real) e retorno da função e do tipo booleano(true ou false)
Com esta função,voce consegue checar se uma tecla foi apertada ou não
E key/tecla é o parametro,  ela representa qual tecla voce deseja conferir

No nosso casso,nós queremos que toda vez que a tecla vk_up seja apertada,nós vamos diminuir
O valor de y em 3, afinal velocidade possui o valor de 3

lembrando que y é referente ao plano vertical,e x ao plano horizontal
E como o ponto mais alto visivel é 0, nós teremos que nos aproximar dele, neste caso
Diminuindo o valor de y
E afunção if, só funciona quando um valor é verdadeiro, ou seja true
Então apenas quando eu apertar a tecla vk_up, (Que é a seta para sima do teclado), irá se movimentar para cima

O que é vk_,basicamente são todas as teclas do teclado que não são relacionadas ao idioma
Ou seja, tudo que não é letra ou acento
Mas e se quisermos apertar as letras? Como fazemos?
vamos usar outra função, neste caso a função ord()
descrição da funçção:
function takes a single character imput string and returns the Unicode (UTF8) string the string with to find the Unicode code.

Tradução:
Função ord(texto: Tipo String) -> retorno de valor Real(decimal)
Esta função pega um caracter unico dentro da string e retornar em valor Uncidade(UTF8)-
-basicamente pega o valor real do endereço númerico daquela tecla 
texto referece a letra a qual voce deseja achar em valor Unicode
lembrando que valores de texto se encomtram dentro de aspas e com a letra maíuscula
Exemplo keyboard_check(ord("W"))

Só que nós  queremos que funcione se apertar a W ou a seta certo?
Neste caso,temos que adicionar ukma condição de uma coisa oui outra
sabendo como funciona, nos vamos usar qual,o and ou o or?
Ou seja, if keybord_check(vk_up) or keybord_check(ord("W))
*/
if keyboard_check(vk_up) or keyboard_check(ord("W")){
	y -= velocidade
}

if keyboard_check(vk_down) or keyboard_check(ord("S")){
	y += velocidade
}

if keyboard_check(vk_left) or  keyboard_check(ord("A")){
	x -= velocidade
	
	/*
	troca da direção da imagem
	uma das propiedades do objeto é a image_xscale
	o que ela faz? ela mexe com o tamanho da imagem horizontalmente
	o valor de image_xscale aumentara junto
	sendo o valor padrão dele começando em 1, ou seja, todo
	objeto tem o seu valor de tamanho em 1 de largura e 1 de altura
	comparando a imagem normal
	exemplo: uma imagem que possui 32x32 o objeto pegara esta
	escala de 1 para 1 
	mas porque mexeremos com este valor?
	pois este valor pode ser negativo, por tanto ela inventera a direção
	da imagem, por exemplo, o meu sprite,normalmente olha para a direita
	então,se eu quiser que ele olhe para a esquerda,basta inverter
	o valor que há no imge_xscale
	então,se o valor normal é de 1x1, significa que para olhar para 
	esquerda vai ser -1x1
	se invewrter o  valor da altura, fara ela ficar de cabeça para baixo
	no player,não usaremos isto,mas no meu inimigo sim
	*/
	//jeito mais facil porem não global
	//image_xscale = -1
	
	//jeito global
		//image_xscale *= -1
		/*
		mas antes de inverter,temos que verificar se eu já não estou olhando
		para esta direção,se não ficaremos invertendo infinitamente
		para isto é simples
		só precisamos verificar se o valor de image_xscale é maior ou menor do valor
		que queremos,exemplo,sabemos que olhar a esquerda o valor tem q ser
		negativo,ou seja, menor que 0,então só precisamos verificar se o valor esta
		mais do que isto
		*/
	image_xscale *= -1
}

if keyboard_check(vk_right) or  keyboard_check(ord("D")){
	x += velocidade
	
	//jeito mais facil porem não global
	//image_xscale = 1
	
	if image_xscale < 0{
		image_xscale *= -1
	}
}

/* 
bom,agora que criamos os pontos,eu quero que toda vez que eu coletar todos os colataveis da sala,mude
para a procima sala.
Aqui,podemos fazer dois caminhos,o primiro é sempre ter um numero fixo de coletaveis na tela,por exemplo 5
ou seja, deste jeito, obrigatoriamente, teriamos que ficar limitados a 5 coletaveis no jogo,e não poderiamos
nem colocar a mais ou a menos, por isso, vamos usar uma forma que ficar limitado a 5 coletaveis ,na sala
e quando a quantidade de pontos ser igual a quantidade de coletaveis na tela, iremos para a proxima sala
o metodo que iremos usar,é criar uma variavel global, e toda vez que eu adicionar mais uma instancia do objColetavel
aumente em 1 a quantidade total
*/

/*
Agora com o sistema de pontuaçaõ implementado, vamos começar a mudança de fases
No nosso jogo a condiçaõ vai ser de coletar todos as instancias do obkColetaveis
E assim que chegar,mudamos de fase
*/
if global.pontos == global.quantidadeColetaveis{
	
//E aqui começaremos a mudança de fase
/*
para fazermos as mudança~s de fase, temos algumas opções:
Primeira opção,usar a variavel do sistema "room"
room é aonde fica a fase atual,caso você coloque ela para receber
outra fase,ela ira para lá
exp: room = FASE2
ou seja, toda vez que chegarmos na pontuação total,iremos para FASE2
a primeira coisa a se observar, é que a quantidade atual
isto acontece pois colocamos que,quando a variavel global quantidadeColetavel
ja existir,apenas somando os pontos,e acaba interferindo no processo
de troca de fase
então a primeira atualização deve ser que ,toda vez que mexermos com algo
relacionado a transição ou reset da fase,temos que zerar todas as variaveis
relacionadas com o inicio de uma fase
	
outra coisa que percebemos,é que quando tamos na rmFASE2, continuaremos nela 
uma das formas de resolver , seria colando infinitos if e else,o que não é necessario
então para a troca de fases usaremos uma função
no caso,as mais comuns são a room_goto(),room_goto_next(), e para voltar
seria a room_goto_previus()
resumidamente:
room_goto(); vai para uma fase usando o numero da sequencia de onde ela esta 
ou seja se eu quiser ir para uma fase especifica,eu usa ela
exemplo,eu sei que a primeira fase é tela de menu,quando eu quiser ir para
tela de menu,eu coloco room_goto(0)
mas como saber qual é o numero da fase?
primeiramente, as fases funcionam com um vetor, ou seja elas ficam 
ordenadas com a primeira posição sendo a posição 0, aultima semdo a quantidade de fases
menos 1,(exp: se tiver 3 fases , a ultima fase esta na posição 2
se tiver 10, ma posição 9,se tiver 127, na posição 126)
segundamente,para descobrir a posição,é só ir em room_order no framewo
room_goto_next(): vai para a proxima sala na ordem 
ou seja,se tiver na sala 1, ela vai para a sala 2, e assim por diante 
exemplo,em um jogo,geralmente ao terminar uma fase, nós temos 3 botoes
geralmente o primeiro vai para a fase de menu,o segundo reinicia a fase
e o terceiro e de ir para a proxima fase
por fim, a função room_goto_previus():
ela vai para a fase anterior na lista
exemplo, em um jogo de RPG,quando voce entra em uma dungeon e depois sai dela
se aonde vc estava for a fase anterior a dungeon,é só usar esta função
certo,dito tudo isto,qual voces acham mais viavel para o nosso jogo?
ok,iremos de room_goto_next()
descrição:
function room_goto_next() -> Undefined
With this function you can make your game go to the next one as
listed in the Room Manager at the time the game was compiled.

tradução:
função room_goto_next(sem parametros) retorno vazio ou Indefinido
Com esta função, você pode fazer seu jogo avançar para o próximo, conforme listado no Gerenciador
de Salas no momento em que o jogo foi compilado
	
*/
global.quantidadeColetaveis = 0
//room_goto_next()
/*
apos compilarmos ,vimos que a função deu certo na primeira fase 
mas da erro na segunda por não possuir uma proxima fase
para consertar isto ,teremos que fazer a a validação da fase atual
pois,somente quando não for a  ultima fase, iremos para proxima
e quando tivermos na ultima,voltaremos para a primeira
usaremos algumas variaveis do sistema para isso
A sala atual,fica ana variavel room
a primeira fase do jogo fica em room_first
a ultima fase do jogo,fica em room_last
*/

if room != room_last{
	room_goto_next()
}
else{
	room = room_first
}
}

/*
aqui vamos impedir do player sair pelos cantos do jogo

uma das propriedades do player é a posição X e Y
elas são referentes aonde elas estaõ dentro da room 
então, vamos entender o que  é sair da tela pelos cantos da fase
falamos isto, quando o X ou Y ficam fora do campo visivel da sala 
e os campos visiveis começam da posiçaõ 0 tanto do x quanto do Y
e vão até o valor da largura e da altura 
exemplo, no meu jogo, a largura da sala é de 1366 e a altura de 768
então qual vai ser o x (plano horizontal) é menor que 0(mais a esquerda) ou maior que a largura da sala
(1366,mais a direita)
e se o Y(plano vertical) é menor que 0 (mais em cima) ou maior que
a altura da sala (768, mais abaixo)
caso qualquer um deste valores seja verdadeiro, é só somar o mesmo valor
invertido
Exemplo: SE eu sair para a esquerda, quer dizer que eu acabei de diminuir
pelo valor de velocidade, para voltar ao campo visivel,é so eu somar
o valor de velocidade
*/
//saida pela esquerda
if x < 0{
	x += velocidade
}
//para direita
if x > room_width{
	x -= velocidade
}

//para cima
if y < 0{
	y += velocidade
}

//para baixo
if y > room_height{
	y -= velocidade
}

/*
para finalizar,podemos assumir que todas as proíedades que são visiveis
podem ser alteradas dentro de um codigo
*/
