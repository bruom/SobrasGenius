//
//  Tabuleiro.m
//  GeniusRoarXXXDarklords
//
//  Created by Bruno Omella Mainieri on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import "Tabuleiro.h"
#include <stdlib.h>

@implementation Tabuleiro

-(instancetype)initWithJogador:(NSString *)jogador andRank:(Rank *)ra{
    self = [super init];
    
    if(self){
        fSis = [[Fila alloc]init];
        fJog = [[Fila alloc]init];
        r = ra;
        j = [r selecionarUmJogador:jogador];
        score = 0;
    }
    
    return self;
}

-(void)gerarComando{
    
    NSNumber *r = [[NSNumber alloc]initWithInt:arc4random_uniform(3)];
    [fSis enfileirar:r];
}

-(BOOL)verificarInput:(int)input{
    NSNumber *goal = [[NSNumber alloc]initWithInt:[fSis ler]];
    [fJog enfileirar:[fSis ler]];
    [fSis desenfileirar];
    if(input==(int)goal){
        return true;
    }
    return false;
}

-(int)exibirCor{
    NSNumber *aux = [[NSNumber alloc]initWithInt:[fSis ler]];
    [fJog enfileirar:aux];
    [fSis desenfileirar];
    return (int)aux;
}

-(int)jogarRodada{  // rodada é um ciclo composto por: jogo mostra sequencia - jogador repete sequencia
    Fila *fAux = [[Fila alloc]init];
    int cont=0;
    [self gerarComando];
    while(![fSis vazio]){
        //printar a cor e tal -> exibir cor;
        cont++;
    }
    fAux = fSis;
    fSis = fJog;
    fJog = fAux;
    while(cont>0){
        int input = 0; //ler do usuario
        if(![self verificarInput:input]){
            [fJog juntarFila:fSis];
            score = [fJog size] -1;
            return -1;
        }
        cont--;
    }
    return 1;
}

-(void)jogarPartida{
    BOOL fim = false;
    while(!fim){
        int res = [self jogarRodada];
        if(res==-1)
            fim=true;
    }
    [self encerrarPartida];
}

-(void)encerrarPartida{
    [j setQPontos:[j qPontos]+1];
    if(score > [j mPontos]){
        [j setMPontos:score];
    }
    [r adicionarUmJogadorExistente:j];
}

@end
