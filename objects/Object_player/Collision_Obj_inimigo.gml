/*
Nós queremos que toda vez que encostar no inimigo, independente se eu encostar encima
Ou embaixo dele, eu quero que o player morrar e reinicie a fase 
Para isso,usaremos as funções instance_destroi() e a rom_restart()
descrição de cada uma:
instance_destroi():
function instance destroy([d: Asset.GMObject OR Id. Instance OR Constant.All].-
- [execute_event_flag: Bool]) -> Underfined
You call this function whenever you wish to destroy an instance,normally-
triggering a destroy Event and also a Clam Up Event.
id The instance ID or object_index to destry-
- (optional, default is true)
execute_event_flag
Lembrando que instancia seria o "ser" e  o "cetegoria" do "ser"
Tradução:
A função instance_destroy(id da instancia(primeiro parametro):-
- o objeto o qual voce quer destruir (as categorias)-
-ou o id da instancia( o ser ) ou todas as constantes,ou seja,todas as instancias],-
-[executar o evento permitido segundo parametro : valor booleano(true ou false)]} ->-
- retorno vazio ou indefinido
Voce chama esta função quando voce deseja destruir uma instancia,normalmente desencadiando -
- no evento de destruição da instancia como tambem o evento de limpeza
 ********Lenbrando que eventos são quando algo acontece
 1º Id se refere a identificação do index do objeto que queira destruir(é opcional, o padrão-
 -é destruir a instancia que chamou esta função)
 2º Executar o evento permitido: se refere a permissão do evento ser executado ou não - 
 -	(opitional,pois o padrão é verdadeiro)
 
 room_restart() Underfined
 This function will restart the current room, as if had just been entered.
 
 Função room_restart(sem parametro) e retorno indefinido ou vazio:
 esta função irá reiniciar a sala atual, como se tivesse acabada de ser executada -
 (ou seja, como ela foi feita normalmente)
*/
instance_destroy()
room_restart()