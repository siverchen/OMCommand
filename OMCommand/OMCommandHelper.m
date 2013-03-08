//
//  OMCommandHelper.m
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMCommandHelper.h"


@implementation OMCommandHelper

+ (NSDictionary *)getCommandParam_View_Push:(UINavigationController *)navigation
                             ViewController:(UIViewController *)viewController
                                   Animated:(BOOL)animated{
    return [NSDictionary dictionaryWithObjectsAndKeys:navigation, @"Navigation", viewController, @"VC", [NSNumber numberWithBool:animated], @"Animated", nil];
}

+ (NSDictionary *)getCommandParam_Tool_Play:(NSString *)song{
    return [NSDictionary dictionaryWithObjectsAndKeys:song, @"Song", nil];
}

@end
