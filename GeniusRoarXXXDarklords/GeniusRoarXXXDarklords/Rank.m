//
//  Rank.m
//  GeniusRoarXXXDarklords
//
//  Created by Wellington Pardim Ferreira on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import "Rank.h"

@implementation Rank
// ctor
-(instancetype)init{
    self = [super init];
    if(self){
        rank = [[NSMutableArray alloc] init];
    }
    return self;
}

-(Jogador *)selecionarUmJogador:(NSString *)nome{
    int pos = [self pegarPosicaoDoJogadorPeloNome:nome]; // Verifica se um jogador existe. Se pos = -1 => Jogador não está presente no rank
    if(pos != -1){  // Se jogador já se encontra no rank
        jogadorAtual = [rank objectAtIndex:pos];
        [rank removeObjectAtIndex:pos]; // Remove do rank
        return jogadorAtual;    // Retorna o jogador
    }
    [self adicionarUmJogadorNovo:nome]; // Se jogador não existe no rank, instancia um novo.
    return jogadorAtual;
}

-(void)adicionarUmJogadorExistente:(Jogador *)jogador{
    int pontuacao = [jogador mPontos];
    int size = (int)[rank count];
    int i = 0;
    // Verifica qual posição o jogador será inserido.
    while (i < size && [(Jogador *)[rank objectAtIndex:i] mPontos] > pontuacao);
    [rank insertObject:jogador atIndex:i];
}

-(void)adicionarUmJogadorNovo:(NSString *)nome{
    jogadorAtual = [[Jogador alloc] init];
    [jogadorAtual setNomeUsuario:nome];
    [jogadorAtual setQPontos:0];
    [jogadorAtual setMPontos:0];
}

-(Jogador *)pegarPrimeiroLugar{
    return [rank firstObject];
}

-(void)removerJogador:(Jogador *)jogador{
    int pos = [self pegarPosicaoDoJogador:jogador];
    [rank removeObjectAtIndex:pos];
}

-(int)pegarPosicaoDoJogador:(Jogador *)jogador{
    int size = (int)[rank count];
    for(int i = 0 ; i < size ; i++){
        Jogador *j = [rank objectAtIndex:i];
        if([[j nomeUsuario] compare:[jogador nomeUsuario]])
            return i;
    }
    return -1;
}

-(int)pegarPosicaoDoJogadorPeloNome:(NSString *)nome{
    int size = (int)[rank count];
    for(int i = 0 ; i < size ; i++){
        Jogador *j = [rank objectAtIndex:i];
        if([[j nomeUsuario] compare:nome])
            return i;
    }
    return -1;
}

-(Fila *)pegarRankDeJogadores{
    Fila *f = [[Fila alloc] init];
    for(Jogador *j in rank){
        [f enfileirar:j];
    }
    return f;
}


@synthesize jogadorAtual;

@end

