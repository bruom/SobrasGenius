//
//  main.m
//  GeniusRoarXXXDarklords
//
//  Created by Vitor Kawai Sala on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tabuleiro.h"
#import "Interface.h"
#import "Rank.h"
#import "Fila.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Codigo da execução do programa
        Rank *r = [[Rank alloc]init];  // Objeto Rank que contem os jogadores - como não há persistencia, o reigstro de jogadores é perdido sempre que o jogo é fechado
        Interface *i = [[Interface alloc]initWithRank:r]; //Objeto Interface que trata de exeibir mensagens e ler input - não guarda atributos
        
        NSLog(@"Programa iniciado."); //inicio da execução
        [i exibirMenu];
        
        
    }
    return 0;
}
