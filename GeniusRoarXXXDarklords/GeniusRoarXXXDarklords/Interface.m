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

-(void)exibirMenu{
    NSLog(@"Para jogar selecione 1");
    NSLog(@"Para se registrar selecione 2");
    NSLog(@"Para ir para o rank selecione 3");
    NSLog(@"Para sair selecione 4");
}

-(void)exibirRank{
    NSLog(@"Rank:");
    //Adicionar metodo do rank que exiba a ordem    
}

-(void)exibirSequencia{
    //Adicionar metodo que faça a exibição das cores
    
}

-(void)exibirEscolhaDeCor{
    NSLog(@"Digite 0 para vermelho");
    NSLog(@"Digite 1 para amarelo");
    NSLog(@"Digite 2 para azul");
    NSLog(@"Digite 3 para verde");
}

-(void)exibirDerrota{
    NSLog(@"Você PERDEU! %@, sua pontuação foi: %d", nomeUsuario, pontos);
}

-(void)exibirAvanco{
    NSLog(@"Você avançou um nível!");
}

-(void)exibirMensagemDeCadastro{
    NSLog(@"Digite o nome do seu usuário: ");
}


@end
