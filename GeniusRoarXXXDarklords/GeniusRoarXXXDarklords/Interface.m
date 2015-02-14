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


@implementation Interface
-(instancetype)init{
    return self;
}

-(void)exibirMenu{
    int opcao;
    do{
        NSLog(@"Para jogar selecione 1");
        NSLog(@"Para ir para o rank selecione 2");
        NSLog(@"Para sair selecione 3");
    
    scanf("%d", &opcao);
    } while (opcao < 1 || opcao > 3);
    
    switch (opcao) {
        case 1:
            //Entra no jogo
            break;
        case 2:
            //Exibe rank
            [self exibirRank];
            break;
        case 3:
            //Sai do jogo
            break;
            
        default:
            break;
    }
}

-(void)exibirRank{
    NSLog(@"Rank:");
    //Adicionar metodo do rank que exiba a ordem    
}

-(void)exibirSequencia{
    //Adicionar metodo que faça a exibição das cores
    
}

-(int)exibirEscolhaDeCor{
    
    int opcaoCor;
    do{
      NSLog(@"Digite 0 para vermelho");
      NSLog(@"Digite 1 para amarelo");
      NSLog(@"Digite 2 para azul");
      NSLog(@"Digite 3 para verde");
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

-(NSString *)exibirMensagemDeCadastro{
    char *nome;
    NSLog(@"Digite o nome do seu usuário: ");
    scanf("%s",nome);
    NSString *s = [[NSString alloc]initWithFormat:@"%s", nome];
    return s;
}

@end
