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
-(instancetype)init{
    self = [super init];
    if(self){
        Jogador *a = [[Jogador alloc] init];
    }
    return self;
}

-(int)exibirMenu{
    int opcao;
    do{
        NSLog(@"Para jogar selecione 1");
        NSLog(@"Para se registrar selecione 2");
        NSLog(@"Para ir para o rank selecione 3");
        NSLog(@"Para sair selecione 4");
    
    scanf("%d", &opcao);
    } while (opcao < 1 || opcao > 4);
    
    return opcao;
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
    
}

-(int)exibirEscolhaDeCor{
    
    int opcaoCor;
    do{
      NSLog(@"Digite 0 para vermelho");
      NSLog(@"Digite 1 para amarelo");
      NSLog(@"Digite 2 para azul");
      NSLog(@"Digite 3 para verde");
      scanf("%d", &opcaoCor);
        } while (opcaoCor < 1 || opcaoCor > 4);
    
    return opcaoCor;
    
}

-(void)exibirDerrota{
    NSLog(@"Você perdeu! %@:", [a nomeUsuario]);
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
