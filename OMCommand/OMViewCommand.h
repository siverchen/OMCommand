//
//  OMViewCommand.h
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMCommand.h"



typedef enum {
    ViewCommandAdd,
    ViewCommandRemove,
    ViewCommandPush,
    ViewCommandPop
}ViewCommandType;

@interface OMViewCommand : OMCommand

@property (nonatomic, retain) UIView *view;

@end
