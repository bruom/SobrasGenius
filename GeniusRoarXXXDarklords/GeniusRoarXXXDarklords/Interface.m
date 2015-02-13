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
    
}

-(void)exibirSequencia{
    
}

-(void)exibirDerrota{
    NSLog(@"Você PERDEU! %@", nomeDeUsuario);
}

-(void)exibirAvanco{
    NSLog(@"Você avançou um nível!");
}

-(void)exibirMensagemDeCadastro{
    
}

@end
