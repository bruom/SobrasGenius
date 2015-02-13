//
//  Rank.h
//  GeniusRoarXXXDarklords
//
//  Created by Wellington Pardim Ferreira on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface Rank : NSObject{
    NSMutableArray *rank;
    Jogador *jogadorAtual;
}

-(instancetype)init;

-(Jogador *)selecionarUmJogador:(NSString *)nome;

-(void)adicionarUmJogador:(Jogador *)jogador;

-(Jogador *)pegarPrimeiroLugar;

-(Jogador *)pegarJogadorAtual;

-(void)removerJogador:(NSString *)nome;

-(void)zerarListaDeJogadores;


@property Jogador *jogadorAtual;

@end
