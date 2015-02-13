//
//  Fila.m
//  Fila 1
//
//  Created by Bruno Omella Mainieri on 2/6/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

#import "Fila.h"

@implementation Fila

-(id)init{
    self = [super init];
    elementos = [[NSMutableArray alloc]init];
    return self;
}

-(void)enfileirar:(NSObject *)elem{
    if(elem==nil)
        return;
    [elementos addObject:elem];
}

-(void)desenfileirar{
    if([self vazio])
        return;
    [elementos removeObjectAtIndex:0];
}

-(NSObject*)ler{
    if([self vazio])
        return nil;
    return [elementos firstObject];
    
}

-(BOOL)vazio{
    if([elementos count]==0)
        return TRUE;
    return FALSE;
}

-(void)imprimir{
    for(NSString *aux in elementos){
        NSLog(@"%@",aux);
    }
}

-(BOOL)busca:(id)q{
    return [elementos containsObject:q];
}

-(void)inverter:(Pilha *)p{
    while(![self vazio]){
        [p empilhar:[self ler]];
        [self desenfileirar];
    }
    
    while(![p vazio]){
        [self enfileirar:[p topo]];
        [p desempilhar];
    }
    
}

@end
