///como no nosso jogo não possui camera,não precisamos escolher entre Draw ou Draw GUI

/*
bom, aqui usaremos algumas funçoes, mas ja vamos aproveitar e tambem falar sobre o padraõ de identificar
os nomes da função 
neste objeto,queremos desenhar a quantidade de pontos, sendo estes um texto 
fazendo a tradução direta , teremos as palavras draw(desenhar) e text(texto),então podemos checar
pela existencia da função draw_text()
e ela existe mesmo
em si,que muitas funçoes dá para descobrir apenas pelas traduçoes letrais 
por exemplo,um padrão é que qualquer função para desenhar começa com a a palavra draw
e funçoes que tenha a ver com o texto(comteudo),terão a palavra text envolvida
as funçoes que tem algo a ver com a fase, geralmente contarem room no nome e assim por diante
bom,agora queremos criar uma variave que é simples fazer isto, é so  criar uma variavel e receber"pontos: "a quantidadede pontos)
neste caso,podemos pensar que é simples fazer isto, é so criar uma variavel e receber "pontos: " + global.pontos
mas há um  problema nisto ,pois o tipo der global.pontos não é um texto/string, ele é um valor do tipo inteiro,
certo?
então, antes de somar este texto,teremos que comverter o valor inteiro em um valor de texto,
para isto, usaremos a função string()
descrição da função:
function string(val_or_format: Any, [....:Any*]) -> string
with this function you can turn any value into a string.
val_or_format the value to be turned into a string or a format string.
			  values to replace the placeholders with.

Tradução:
função string(val_or_format: quaquer, [....:qualquer*]) retorno do tipo string
com esta função,voce consegue tornar qualquer valor em um valor string.
val_or_format 0 valor que queira tornar em string ou no formato string
				Valores para substituir os placeborders
no nosso cso,usaremos a função deste jeito 
mensagem = "pontos: "+ string(global.pontos)
*/
mensagem = "pontos: " + string(global.pontos) + " de " + string(global.quantidadeColetaveis)

/*agora iremos usar o draw_text() passando a mensagem como o texto
descrição da função:
function draw_text(x: Real, y: Real, string: Any) -> Underfined
with this function you can draw any string at any position within the room (for drawing real -
-numbers you should use the string ()function to convert them into text)
X the x coordinate of  the draw string.
Y the y coordinate of  the draw string.
string the string to draw

Tradução:
Função draw_text(x: valor real y: valor real, string:qualquer valor)reotrno indefinido ou vazio 
com esta função,voce consegue desenhar qualquer string em qualquer posição da room (para desenhar números
reais voce devera usar a função string() para converter eles em texto)
X O da cordenada x do desenho da string
Y O da cordenada y do desenho da string
string O valor string a ser desenhado
no nosso caso,ja usamos a função sring, agora é so fazer o comando
*/
draw_text(x, y, mensagem)