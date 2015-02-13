//
//  Rank.h
//  GeniusRoarXXXDarklords
//
//  Created by Wellington Pardim Ferreira on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Fila.h"

@interface Rank : NSObject{
    NSMutableArray *rank;
    Jogador *jogadorAtual;
}

-(instancetype)init;

-(Jogador *)selecionarUmJogador:(NSString *)nome;

-(void)adicionarUmJogadorExistente:(Jogador *)jogador;

-(void)adicionarUmJogadorNovo:(NSString *)nome;

-(Jogador *)pegarPrimeiroLugar;

-(void)removerJogador:(Jogador *)jogador;

-(int)pegarPosicaoDoJogador:(Jogador *)jogador;

-(int)pegarPosicaoDoJogadorPeloNome:(NSString *)nome;

-(Fila *)pegarRankDeJogadores;

@property Jogador *jogadorAtual;

@end
