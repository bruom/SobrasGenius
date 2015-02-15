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


// Inicializa o objecto instanciando uma Lista vazia.
-(instancetype)init;

// Seleciona um jogador para a rodada, e retorna o mesmo, caso não tenha um jogador com o nome, passado por parâmetro, um novo é instanciado e selecionado como jogador atual.
-(Jogador *)selecionarUmJogador:(NSString *)nome;

// Adiciona um jogador existente ao Rank, mantendo o rank de forma ordenado por pontos (DESC);
-(void)adicionarUmJogadorExistente:(Jogador *)jogador;

// Adiciona um novo jogador, o mesmo é colocado como jogador atual.
-(void)adicionarUmJogadorNovo:(NSString *)nome;

// Retorna o primeiro lugar da Lista (Jogador com a maior pontuação)
-(Jogador *)pegarPrimeiroLugar;

// Remove um jogador
-(void)removerJogador:(Jogador *)jogador;

// Retorna a posição de um jogador na Lista
-(int)pegarPosicaoDoJogador:(Jogador *)jogador;

// Retorna a posição de um jogador na lista
-(int)pegarPosicaoDoJogadorPeloNome:(NSString *)nome;

// Gera uma fila de jogadores, ordenado a partira das pontuações (de forma descendente).
-(Fila *)pegarRankDeJogadores;

@property Jogador *jogadorAtual;

@end
