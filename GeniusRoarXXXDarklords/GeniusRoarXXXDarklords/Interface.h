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
    //A interface irá possuir um jogador a
    Jogador *a;
}

//Inicializa o objeto
-(instancetype)init;

//Exibe o menu no qual o usuário irá escolher se deseja jogar, ir para o rank ou sair
-(int)exibirMenu;

//Exibe o rank
-(void)exibirRank;

//Exibe a sequëncia de cores da rodada
-(void)exibirSequencia;

//Exibe o menu para o usuário escolher a cor a ser digitada
-(int)exibirEscolhaDeCor;

//Exibe uma mensagem de derrota do jogador
-(void)exibirDerrota;

//Exibe uma mensagem para mostrar que o jogador acertou a sequëncia
-(void)exibirAvanco;

//Exibe a mensagem para o usuário realizar o cadastro
-(NSString *)exibirMensagemDeCadastro;

@end
