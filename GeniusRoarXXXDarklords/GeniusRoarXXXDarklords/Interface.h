//
//  Interface.h
//  GeniusRoarXXXDarklords
//
//  Created by Andre Lucas Ota on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"
#import "Cores.h"
#import "Rank.h"
#import "Tabuleiro.h"
#import "Jogador.h"

@interface Interface : NSObject{
    /*A interface irá possuir um jogador a
    Jogador *a;
     Removi esse atributo. Agora o método de mostrar a derrota recebe o atributo do próprio tabuleiro
     */
    Rank *rank;
}
-(instancetype)init;
-(int)exibirMenu;
-(void)exibirRank:(Fila*)fila;
-(void)exibirSequencia;

//Exibe o menu para o usuário escolher a cor a ser digitada
-(int)exibirEscolhaDeCor;

//Exibe uma mensagem de derrota do jogador
-(void)exibirDerrota: (Jogador *)j : (int)score;

//Exibe uma mensagem para mostrar que o jogador acertou a sequëncia
-(void)exibirAvanco: (int)score;

//Exibe a mensagem para o usuário realizar o cadastro
-(NSString *)escolherJogador;

@end
