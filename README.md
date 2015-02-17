# SobrasGenius
Repoistorio do projeto do jogo Genius pelo console, em Objective-C, do grupo dos Sobras.
Sobre as estruturas de dados utilizados:

Optamos pelo uso de filas para gerenciar as sequencias de comandos do jogo, tanto a gerada pelo sistema quanto a criada a partir dos input do usuario. Usamos duas filas para este fim (e uma terceira, auxiliar, apenas para realizar a troca entre as filas), uma "fila sistema" e um "fila jogador". 

A fila sistema contem a sequencia de todos os inputs, e os novos inputs necessários são adicionados a ela quando gerados. Quando o jogo exibe os inputs necessários daquela rodada, eles são lidos desta fila, desenfileirados, e enfileirados numa fila auxiiar. Ao final da exibição, a fila auxiliar passa a ser a fila do sistema, já que contem, novamente, a sequencia completa de inputs, sua ordem inalterada.

A fila jogador recebe os inputs, desenfileirados da fila sistema, conforme o jogador acerta cada cor na sequencia. Assim, o primeir elemento da fila sistema sempre será a próxima cor que deve ser inserida. Assim, a ordem das cores é naturalmente garantida. Quando o jogador acerta todas as cores de uma sequencia (ou seja, a fila jogador contem a seuqencia inteira e a fila sistema esta vazia), são trocadas novamente as filas, para que possa ser inicada a próxima rodada.

Nossa escolha se deu porque, neste modelo de jogo, é mantida uma sequencia de comandos, que só é manipulada de duas maneiras: 
1 - o primeiro elemento é lido, seja para exibir na tela ou para comparar com o input do usuário
2 - um novo comando é inserido ao final da sequencia já existente
Estas duas operações são extremamente simples e eficientes de impementar usando filas. Além disso, como a ordem dos elementos no jogo é imutável, a fila garante esta ordem não seja acidentalmente alterada por qualquer motivo, já que a própria estrutura não permite este tipo de operação.


