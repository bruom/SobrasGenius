//
//  Fila.h
//  Fila 1
//
//  Created by Bruno Omella Mainieri on 2/6/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Pilha.h"

@interface Fila : NSObject
{
    NSMutableArray *elementos;
}

-(void) enfileirar:(NSObject*)elem;
-(void) desenfileirar;
-(NSObject*)ler;
-(BOOL)vazio;
-(void)imprimir;
-(BOOL)busca:(id)q;
-(void)juntarFila:(Fila*)f;
-(int)size;
//-(void)inverter:(Pilha*)p;


@end
