//
//  OMToolCommand.m
//  OMCommand
//
//  Created by Chen Lei on 13-3-8.
//  Copyright (c) 2013年 cmc. All rights reserved.
//

#import "OMToolCommand.h"


@implementation OMToolCommand

- (void)executeCommand:(NSUInteger)cid Param:(id)param{
    switch (cid) {
        case OMToolCommandPlay:{
            if ([[param objectForKey:@"Type"] isEqual:@"Next"]){
                NSLog(@"player playnext");
            }else if ([[param objectForKey:@"Type"] isEqual:@"Prev"]){
                NSLog(@"player playnext");
            }else if ([[param objectForKey:@"Type"] isEqual:@"Play"]){
                NSLog(@"player playnext");
            }else if ([[param objectForKey:@"Type"] isEqual:@"Pause"]){
                NSLog(@"player playnext");
            }else if ([[param objectForKey:@"Type"] isEqual:@"Seek"]){
                NSLog(@"player playnext");
            }
            break;
        }
        default:
            break;
    }
}

@end
