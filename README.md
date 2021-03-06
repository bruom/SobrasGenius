# SobrasGenius
Repositório do projeto do jogo Genius pelo console, em Objective-C, do grupo dos Sobras. 
André Lucas, Bruno Faganello, Bruno Omella Mainieri, Vitor Kawai Sala, Wellington Pardim

Sobre as estruturas de dados utilizados:

Optamos pelo uso de filas para gerenciar as sequências de comandos do jogo, tanto a gerada pelo sistema quanto a criada a partir dos input do usuário. Usamos duas filas para este fim (e um ponteiro auxiliar para realizar a troca das 2 filas ao fim de uma partida), uma "fila sistema" e um "fila jogador".

A fila sistema contem a sequencia de todos os inputs, e os novos inputs necessários são adicionados a ela quando gerados. Quando o jogo exibe os inputs necessários daquela rodada, eles são lidos desta fila, desenfileirados, e enfileirados numa fila auxiliar. Ao final da exibição, a fila auxiliar passa a ser a fila do sistema, já que contem, novamente, a sequencia completa de inputs, sua ordem inalterada.

A fila jogador recebe os inputs, desenfileirados da fila sistema, conforme o jogador acerta cada cor na sequencia. Assim, o primeiro elemento da fila sistema sempre será a próxima cor que deve ser inserida. Assim, a ordem das cores é naturalmente garantida. Quando o jogador acerta todas as cores de uma sequencia (ou seja, a fila jogador contem a sequencia inteira e a fila sistema esta vazia), são trocadas novamente as filas, para que possa ser iniciada a próxima rodada.

Nossa escolha se deu pois, neste modelo de jogo, é mantida uma sequencia de comandos, que só é manipulada de duas maneiras: 1 - o primeiro elemento é lido, seja para exibir na tela ou para comparar com o input do usuário 2 - um novo comando é inserido ao final da sequencia já existente. Estas duas operações são extremamente simples e eficientes de implementar usando filas. Além disso, como a ordem dos elementos no jogo é imutável, a fila garante esta ordem não seja acidentalmente alterada por qualquer motivo, já que a própria estrutura não permite este tipo de operação.

E para o armazenamento dos jogadores, utilizamos uma lista. Pois esta estrutura permite mantermos, a lista de jogadores, de forma ordenada, permitindo exibir o rank dos jogadores, do melhor para o pior, de forma que não necessite organiza-lá antes de realizar a operação. Ao exportar a lista, uma cópia é feita em forma de uma lista, visto que a nossa lista se mantém ordenada, a fila irá ser gerada de forma que os primeiros jogadores que entrarão na fila são os jogadores que possuem as melhores pontuações.
