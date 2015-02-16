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

-(void) gerarComando;

-(BOOL) verificarInput:(int)input;

-(void) exibirCor;

-(int) jogarRodada;

-(void) jogarPartida;

-(void) encerrarPartida;

@end
