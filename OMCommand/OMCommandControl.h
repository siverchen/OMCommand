//
//  OMCommandControl.h
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OMCommand;

typedef enum {
    OMCommandControlView,
    OMCommandControlTools,
    OMCommandAlert
}OMCommandControlType;

@interface OMCommandControl : NSObject {
    OMCommand *commands[3];
}

+ (OMCommandControl *)shareControl;
- (void)doCommandType:(NSUInteger)index Commandid:(NSUInteger)cid Param:(id)param;

@end
