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
}

if keyboard_check(vk_right) or  keyboard_check(ord("D")){
	x += velocidade
}