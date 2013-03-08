//
//  OMCommandControl.m
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMCommandControl.h"


static OMCommandControl *control = nil;

@implementation OMCommandControl

+ (OMCommandControl *)shareControl{
    if (control == nil){
        control = [[OMCommandControl alloc] init];
    }
    return control;
}

- (id)init{
    if (self = [super init]){
        commands[0] = [[OMViewCommand alloc] init];
        commands[1] = [[OMToolCommand alloc] init];
    }
    return self;
}

- (void)doCommandType:(NSUInteger)index Commandid:(NSUInteger)cid Param:(id)param{
    [commands[index] executeCommand:cid Param:param];
}

@end
