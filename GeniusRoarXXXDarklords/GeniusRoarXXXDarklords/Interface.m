//
//  Interface.m
//  GeniusRoarXXXDarklords
//
//  Created by Andre Lucas Ota on 13/02/15.
//  Copyright (c) 2015 Os Sobras. All rights reserved.
//

#import "Interface.h"

@implementation Interface
-(instancetype)initWithRank:(Rank *)r{
    self = [super init];
    if(self){
        rank = r;
    }
    return self;
}

-(void)exibirMenu{   //este metodo contem o loop principal do jogo,: depois de jogar ou verificar o rank, o usuario sempre volta pra esse menu
    int opcao;
    Tabuleiro *tab;
    while(true){
        do{
            [self limpaTela];
            NSLog(@"\nPara jogar selecione 1 " "\n""Para ir para o rank selecione 2 ""\n""Para sair selecione 3");
    
            scanf("%d", &opcao);
            fpurge(stdin);
        } while (opcao < 1 || opcao > 3);
    
        switch (opcao) {
            case 1:
                //Entra no jogo
                tab = [[Tabuleiro alloc]initWithJogador:[self escolherJogador] andRank:rank andInterface:self];
                [self contagemRegressiva];
                [tab jogarPartida];
                break;
            case 2:
                //Exibe rank
                [self exibirRank];
                break;
            case 3:
                //Sai do jogo
                exit(0);
                break;
            
            default:
                break;
        }
    }
}

-(void)exibirRank{
    [self limpaTela];
    NSLog(@"Rank:");
    Fila *jogadores = [rank pegarRankDeJogadores];
    if([jogadores vazio])
        NSLog(@"Não há ninguem aqui ainda!");
    else{
        NSLog(@"Ranking:");
        int cont = 1;
        while(![jogadores vazio]){
            Jogador *j = (Jogador *)[jogadores ler];
            NSLog(@"%d - %@ - Highscore: %d", cont, [j nomeUsuario], [j mPontos]);
            [jogadores desenfileirar];
            cont++;
        }
    }
    NSLog(@"Pressione qualquer tecla para continuar.");
    getchar();
    fpurge(stdin);

}

-(void)exibirSequencia{
    //Adicionar metodo que faça a exibição das cores
    //Fazer cores "piscarem"
    //Exibir as cores ao invés dos numeros (?)
    
}

-(int)exibirEscolhaDeCor{
    
    int opcaoCor;
    do{
        NSLog(@"\n0-VERMELHO   1-AMARELO   2-AZUL   3-VERDE");
        scanf("%d", &opcaoCor);
        fpurge(stdin);

    } while (opcaoCor < 0 || opcaoCor > 3);
    
    return opcaoCor;
}

-(void)exibirDerrota:(Jogador *)j :(int)score{
    [self limpaTela];
    NSLog(@"Você perdeu %@! Sua pontuação foi de %d pontos!", [j nomeUsuario], score);
    NSLog(@"Pressione qualquer tecla para continuar.");
    getchar();
    fpurge(stdin);
}

-(void)exibirAvanco: (int)score{
    NSLog(@"Você avançou um nível!");
    sleep(2);
}

-(NSString*)escolherJogador{
    char nome[30];
    [self limpaTela];
    NSLog(@"Digite o nome do seu usuário: ");
    scanf("%s",nome);
    NSString *s = [[NSString alloc]initWithFormat:@"%s", nome];
    NSLog(@"Usuario: %s", nome);
    return s;
}

-(void)limpaTela{
    NSLog(@"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
}

-(void)contagemRegressiva{
    NSLog(@"O jogo irá começar em:");
    sleep(2);
    NSLog(@"3");
    sleep(1);
    NSLog(@"2");
    sleep(1);
    NSLog(@"1");
    sleep(1);
    NSLog(@"GO");
    sleep(1);
}

@end
