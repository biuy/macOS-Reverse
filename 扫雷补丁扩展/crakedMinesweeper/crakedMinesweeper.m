//
//  crakedMinesweeper.m
//  crakedMinesweeper
//
//  Created by biu on 2018/12/16.
//Copyright © 2018 ustc.biu. All rights reserved.
//

#import "crakedMinesweeper.h"
#import "GameState+Hook.h"

@interface crakedMinesweeper()

@end


@implementation crakedMinesweeper

/**
 * @return the single static instance of the plugin object
 */
+ (instancetype)sharedInstance
{
    static crakedMinesweeper *plugin = nil;
    @synchronized(self) {
        if (!plugin) {
            plugin = [[self alloc] init];
        }
    }
    return plugin;
}


/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void)load
{
    [NSClassFromString(@"GameState") hookGameState];
    crakedMinesweeper *plugin = [crakedMinesweeper sharedInstance];
    NSLog(@"++++++++ %@ plugin loaded ++++++++", plugin);
}


@end
