//
//  HLJButtonComponentViewModel.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJButtonComponentViewModel.h"

@implementation HLJButtonComponentViewModel

- (NSNumber *)viewHeight {
    return @(100.0);
}

- (Class<HLJComponentViewProtocol>)viewClass {
    return NSClassFromString(@"HLJButtonComponentCollectionViewCell");
}

@synthesize viewHeight;

@end
