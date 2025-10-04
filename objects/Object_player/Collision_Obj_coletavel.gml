/*
Aqui nos queremos que toda vez que eu encostar nos objetos coletaveis eles desapareçam
E aumente a quantidade de pontos em 1
Para fazer desaparecer,iremos usar a mesma função usada para destruir a instancia player
com algumas alteraçoes 
descrição da fumção instance_destroi() no objplayer.colission.objinimigo linha 6
lembrando que quando chamamos a função sem parametros, o padrão e destruir a instanciaa qual
a qual a chamou,mas se fizermos isto, ira destruir o instancia do player,então teremos que mandar 
um parametro que indentifique a instancia do objColetavel
quando nos estamos em um evento de colisão,esta parte fica mais"facil",pois apenas precisamos
mandar dentro do parametro o other,pois ele já identificara a outra instancia
futuramente,iremos usar um metodo que identifica qual é a instancia comoutra função
*/
instance_destroy(other)

/*então a parte de destruir os coletaveis esta feita,o que iremos fazer agora é criar os pontos e mostrar-los
dentro do jogo
para criarmos os pontos, teoricamente, iriamos criar apenas uma variavel,o problema disto,é que não poderiamos
acessar este valor de outros objetos,para podermos usar este valor em quaisquer outros objetos,criaremos uma
variavel global,que é bem simples,é só antes de criar a variavel,colocar "global"
então para criar seria global.nomeVariavel
no nosso caso,no evento de create do player,iremos criar a variavel global.pontos recebendo 0
e quando colidirmos com um objColetavel, aumentamos a quantidade de pontos em 1
*/

//agora aumentaremos a quantidade de ponts sempre em 1, pois ao usar ++ ele incrementa o valor anterior em 1
global.pontos++
//bom,criamos avariavel mas não comseguimos ve-la,para isto criaremos um novo objeto que ficara responsavel 
//para mostrar o valor atual da variavel