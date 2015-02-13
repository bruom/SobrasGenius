//
//  Interface.h
//  GeniusRoarXXXDarklords
//
//  Created by Andre Lucas Ota on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"
#import "Cores.h"
#import "Rank.h"
#import "Tabuleiro.h"
#import "Jogador.h"

@interface Interface : NSObject{
    Jogador *a;
    
}
-(instancetype)init;
-(int)exibirMenu;
-(void)exibirRank;
-(void)exibirSequencia;
-(int)exibirEscolhaDeCor;
-(void)exibirDerrota;
-(void)exibirAvanco;
-(NSString *)exibirMensagemDeCadastro;

@end
