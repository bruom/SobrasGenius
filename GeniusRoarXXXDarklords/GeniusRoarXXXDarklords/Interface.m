//
//  Interface.m
//  GeniusRoarXXXDarklords
//
//  Created by Andre Lucas Ota on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import "Interface.h"
#import "Cores.h"
#import "Rank.h"
#import "Tabuleiro.h"
#import "Jogador.h"
#import "Fila.h"


@implementation Interface
-(instancetype)initWithRank:(Rank *)r{
    self = [super init];
    if(self){
        Jogador *a = [[Jogador alloc] init];
    }
    return self;
}

-(void)exibirMenu{   //este metodo contem o loop principal do jogo,: depois de jogar ou verificar o rank, o usuario sempre volta pra esse menu
    int opcao;
    Tabuleiro *tab;
    while(true){
        do{
            NSLog(@"Para jogar selecione 1");
            NSLog(@"Para ir para o rank selecione 2");
            NSLog(@"Para sair selecione 3");
    
            scanf("%d", &opcao);
        } while (opcao < 1 || opcao > 3);
    
        switch (opcao) {
            case 1:
                //Entra no jogo
                tab = [[Tabuleiro alloc]initWithJogador:[self escolherJogador] andRank:rank andInterface:self];
                [tab jogarPartida];
                break;
            case 2:
                //Exibe rank
                [self exibirRank];
                break;
            case 3:
                //Sai do jogo
                exit(0);
                break;
            
            default:
                break;
        }
    }
}

-(void)exibirRank:(Fila*)fila{
    NSLog(@"Rank:");
    int i = 1;

    while(![fila vazio]){
     
        Jogador *aux = [fila ler];
        
        NSLog(@"1-%d lugar, Jogador %5@",i, aux);
        [fila desenfileirar];
        i++;
    
        
    }
     
     }

-(void)exibirSequencia{
    //Adicionar metodo que faça a exibição das cores
    //Fazer cores "piscarem"
    //Exibir as cores ao invés dos numeros (?)
    
}

-(int)exibirEscolhaDeCor{
    
    int opcaoCor;
    do{
      NSLog(@"1-VERMELHO   2-AMARELO   2-AZUL   3-VERDE");
      scanf("%d", &opcaoCor);
        } while (opcaoCor < 0 || opcaoCor > 3);
    
    return opcaoCor;
}

-(void)exibirDerrota:(Jogador *)j :(int)score{
    NSLog(@"Você perdeu %@! Sua pontuação foi de %d pontos!", [j nomeUsuario], score);
          }

-(void)exibirAvanco: (int)score{
    NSLog(@"Você avançou um nível!");
}

-(NSString*)escolherJogador{
    //falta o rank reconhecer se o usuário já está cadastrado ou não
    
    char nome[30];
    NSLog(@"Digite o nome do seu usuário: ");
    scanf("%s",nome);
    NSString *s = [[NSString alloc]initWithFormat:@"%s", nome];
    NSLog(@"Usuario: %s", nome);
    return s;
}

@end
