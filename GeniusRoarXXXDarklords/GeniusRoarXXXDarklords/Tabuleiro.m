//
//  Tabuleiro.m
//  GeniusRoarXXXDarklords
//
//  Created by Bruno Omella Mainieri on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import "Tabuleiro.h"

@implementation Tabuleiro

-(instancetype)initWithJogador:(NSString *)jogador andRank:(Rank *)ra andInterface:(Interface *)i{
    self = [super init];
    
    if(self){
        fSis = [[Fila alloc]init];
        fJog = [[Fila alloc]init];
        fAux = [[Fila alloc]init];
        r = ra;
        j = [r selecionarUmJogador:jogador];
        score = 0;
        inter = i;
    }
    
    return self;
}

-(void)gerarComando{
    NSNumber *n = [[NSNumber alloc]initWithInt:arc4random_uniform(3)];
    [fSis enfileirar:n];
}

-(BOOL)verificarInput:(int)input{    // depois de MUITO penar para entender casting de inteiros em Objective-C, eis o codigo horrivel e funcional
    NSNumber *number = (NSNumber *)[fSis ler];
    int goal = [number intValue];
    [fJog enfileirar:[fSis ler]];
    [fSis desenfileirar];
    if(input==(int)goal){
        return true;
    }
    return false;
}

-(void)exibirCor{
    NSNumber *number = (NSNumber *)[fSis ler];
    int cor = [number intValue];
    switch((int)cor){
        case 0:
            NSLog(@"0 - Vermelho");
            break;
        case 1:
            NSLog(@"1 - Amarelo");
            break;
        case 2:
            NSLog(@"2 - Azul");
            break;
        default:
            NSLog(@"3 - Verde");
            break;
    }
    //NSLog(@"%@", [fSis ler]);
    [fJog enfileirar:[fSis ler]];
    [fSis desenfileirar];
}


-(int)jogarRodada{  // rodada é um ciclo composto por: jogo mostra sequencia - jogador repete sequencia
    
    int cont=0;
    [self gerarComando];
    int aux = 0;
    while(![fSis vazio]){
        sleep(1);

        [inter limpaTela];
        NSLog((aux % 2 ? @"@" : @"#")); // intercala os sinais para diferenciar uma cor de outra
        [self exibirCor];
        cont++;
        aux++;
    }
    fAux = fSis;
    fSis = fJog;
    fJog = fAux;

    sleep(1);

    while(cont>0){
        [inter limpaTela];
        int input = [inter exibirEscolhaDeCor];
        
        if(![self verificarInput:input]){  //se o jogador errar o input, ele perde: juntamos as filas e contamos o total -1, que é o score
            [fJog juntarFila:fSis];
            score = [fJog size] -1;
            return -1;
        }
        cont--;
    }
    score = [fJog size];
    [inter exibirAvanco: score];
    fAux = fSis;
    fSis = fJog;
    fJog = fAux;
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
    [r adicionarUmJogadorExistente:j]; // adiciona o jogador atual ao Ranking, com score e numero de partidas atualizados
    [inter exibirDerrota:j:score];
}

@end
