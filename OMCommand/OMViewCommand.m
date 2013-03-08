//
//  OMViewCommand.m
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMViewCommand.h"


@implementation OMViewCommand


- (void)executeCommand:(NSUInteger)cid Param:(id)param{
    switch (cid) {
        case ViewCommandPush:{
            UIViewController *vc = nil;
            if ([param objectForKey:@"VCName"]){
                vc = [[NSClassFromString([param objectForKey:@"VCName"]) alloc] init];
            }else if ([param objectForKey:@"VC"]){
                vc = [param objectForKey:@"VC"];
            }
            BOOL animated = [[param objectForKey:@"Animated"] boolValue];
            [[param objectForKey:@"Navigation"] pushViewController:vc animated:animated];
            break;
        }
        default:
            break;
    }
}

@end
