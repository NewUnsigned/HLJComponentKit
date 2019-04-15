//
//  NSArray+SafeOperate.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "NSArray+SafeOperate.h"

@implementation NSArray (SafeOperate)

- (id)safeObjectAtIndex:(NSUInteger)index {
    if (index >= 0 && index < self.count) {
        return self[index];
    }
    return nil;
}

@end
