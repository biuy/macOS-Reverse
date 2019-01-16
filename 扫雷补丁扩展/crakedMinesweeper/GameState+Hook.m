//
//  GameState+Hook.m
//  crakedMinesweeper
//
//  Created by biu on 2018/12/16.
//  Copyright © 2018 ustc.biu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameState+Hook.h"

@implementation NSObject(GameStateHook)

+ (void)hookGameState {
    NSError *error;
    [self jr_swizzleMethod:@selector(robot)
                withMethod:@selector(craked_robot)
                     error:&error];
    if (error) {
        NSLog(@"+++++hookGameState error: %@", error);
    }
}

- (int)craked_robot {
    return 1;
}

@end
