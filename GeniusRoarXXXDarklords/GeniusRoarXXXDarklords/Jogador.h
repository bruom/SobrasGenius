//
//  Jogador.h
//  GeniusRoarXXXDarklords
//
//  Created by Bruno Faganello Neto on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jogador : NSObject

{
    NSString *nomeUsuario;
    int mPontos;
    int qJogos;
}

@property NSString *nomeUsuario;
@property int mPontos;
@property int qPontos;

@end
