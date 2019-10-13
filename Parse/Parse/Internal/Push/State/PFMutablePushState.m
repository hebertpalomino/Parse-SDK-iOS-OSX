/**
 * Copyright (c) 2015-present, Parse, LLC.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "PFMutablePushState.h"

#import "PFPushState_Private.h"

@implementation PFMutablePushState

@dynamic channels;
@dynamic queryState;
@dynamic expirationDate;
@dynamic expirationTimeInterval;
@dynamic pushDate;
@dynamic payload;

///--------------------------------------
#pragma mark - Payload
///--------------------------------------

- (void)setPayloadWithMessage:(NSString *)message {
    if (!message) {
        self.payload = nil;
    } else {
        NSDictionary *data = [[NSDictionary alloc]initWithObjectsAndKeys:[message copy], @"alert", @"Increment", @"badge", @"1", @"content-available", nil];
        NSLog(@"here");
        //self.payload = @{ @"alert" : [message copy] };

        self.payload = data;    }
}

@end
