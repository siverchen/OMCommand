//
//  OMCommandHelper.h
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OMCommandHelper : NSObject

+ (NSDictionary *)getCommandParam_View_Push:(UINavigationController *)navigation
                             ViewController:(UIViewController *)viewController
                                   Animated:(BOOL)animated;

+ (NSDictionary *)getCommandParam_Tool_Play:(NSString *)song;

@end
