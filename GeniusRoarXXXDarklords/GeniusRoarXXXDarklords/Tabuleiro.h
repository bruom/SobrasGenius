//
//  Tabuleiro.h
//  GeniusRoarXXXDarklords
//
//  Created by Bruno Omella Mainieri on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <time.h>
#import <stdlib.h>
#import "Fila.h"
#import "Cores.h"
#import "Jogador.h"
#import "Rank.h"
#import "Interface.h"
@class Interface;


@interface Tabuleiro : NSObject{
    Fila *fSis; //fila para guardar sequencia de imputs gerada pelo jogo
    Fila *fJog; //fila para guardar inputs corretos do usuario
    Fila *fAux; //fila auxiliar para ajudar na troca do conteudo das filas; preisa trocar por ponteiros para ser mais eficiente
    int score;
    Jogador *j;
    Rank *r;
    Interface *inter;
}

-(instancetype)initWithJogador:(NSString*)jogador andRank:(Rank*)ra andInterface:(Interface*)i;

//gera um valor pseudoaleatorio entre 0 e 3, representando o proximo comando que deve ser executado na sequencia
-(void) gerarComando;

//valida o input do usuario com o esperado: verifica se o input é igual ao proximo elemento na fila do sistema
-(BOOL) verificarInput:(int)input;

//metodo simples para exibição de cores no console
-(void) exibirCor;

//contem a logica para uma rodada (uma sequencia de cores)
-(int) jogarRodada;

//contem a logica para uma partida (varias rodadas, até que o jogador perca)
-(void) jogarPartida;

//finaliza uma partida, repassando as informações relevantes ao Rank
-(void) encerrarPartida;

@end
