//
//  Tabuleiro.h
//  GeniusRoarXXXDarklords
//
//  Created by Bruno Omella Mainieri on 2/13/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fila.h"
#import "Cores.h"

@interface Tabuleiro : NSObject{
    Fila *fSis; //fila para guardar sequencia de imputs gerada pelo jogo
    Fila *fJog; //fila para guardar inputs corretos do usuario
    int score;
}

-(instancetype)init;

-(void) gerarComando;

-(BOOL) verificarInput:(int)input;

-(int) exibirCor;

@end
