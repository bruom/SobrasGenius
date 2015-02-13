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

-(int)exibirMenu{
    int opcao=0;
    do{
        NSLog(@"Para jogar selecione 1");
        NSLog(@"Para se registrar selecione 2");
        NSLog(@"Para ir para o rank selecione 3");
        NSLog(@"Para sair selecione 4");
    
    scanf("%d", &opcao);
    } while (opcao < 1 || opcao > 4);
    
    return opcao;
}

-(void)exibirRank{
    NSLog(@"Rank:");
    //Adicionar metodo do rank que exiba a ordem    
}

-(void)exibirSequencia{
    //Adicionar metodo que faça a exibição das cores
    
}

-(void)exibirEscolhaDeCor{
    
    int opcaoCor=0;
    do{
      NSLog(@"Digite 0 para vermelho");
      NSLog(@"Digite 1 para amarelo");
      NSLog(@"Digite 2 para azul");
      NSLog(@"Digite 3 para verde");
    scanf("%d", &opcaoCor);
        } while (opcaoCor < 1 || opcaoCor > 4);
        
}

-(void)exibirDerrota{
    NSLog(@"Você perdeu! %@, sua pontuação foi: %i", nomeUsuario, pontos);
}

-(void)exibirAvanco{
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
