//
//  NSArray+SafeOperate.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (SafeOperate)

- (nullable id)safeObjectAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
