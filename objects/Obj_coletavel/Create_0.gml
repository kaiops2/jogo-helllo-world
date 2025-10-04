/*
assim como criamos os pontos no objplayer aqui poderiamos tambem criar a quantidade de objcoletavel direto
o problema é que ,o evento de create é realixado toda vez que uma nova instancia é criada 
quando fizemos isto  com  o objPlayer,não havia problema,pois tinhamos apenas uma instancia dele por
então como ele global.pontos recebia 0,era até melhor que substitui-se o valor anterior 
mas agora teremos que achar um metodo para definir se ja ha objColetaveis, e se existir vamos apenas 
aumentar a quantidade de em 1,se não existir vamos criar a variavel global.
aqui não poderiamos checar a existencia do objColetaveis ,pois quando chamamos ele, a propia instancia 
do obj coletavel já conta como existente, e ai vai dar erro no jogo pois ao tentar somar 1 com algo
que não existe ,dara errado então ussaremos outro metodo 
iremos usar uma função que checa a existencia da variavel global
Descrição:
function variable_global_exists(name; string)-> bool
with this function you can check whether a global scope variable exists or not.
name The name of the global variables to check for (as a string)

tradução
função variável_global_existe(nome; string)-> bool
Com esta função, você pode verificar se uma variável de escopo global existe ou não.
nome O nome das variáveis ​​globais a serem verificadas (como uma string)

Então se existir a variavel global ,aumentaremos o valor em 1,se não,definimos ela em 1
*/
if variable_global_exists("quantidadeColetaveis"){
	global.quantidadeColetaveis ++
}
else{
	global.quantidadeColetaveis = 1
}
