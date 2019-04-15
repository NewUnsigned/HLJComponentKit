//
//  HLJTestSectionController.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJTestSectionController.h"
#import "HLJButtonComponentViewModel.h"

@implementation HLJTestSectionController

- (void)didUpdateToObject:(id)object {
    HLJButtonComponentViewModel *button = [[HLJButtonComponentViewModel alloc] init];
    button.margin = @[@10, @10, @10, @10];
    button.padding = @[@10, @10, @10, @10];
    button.cornerRadius = 4.0;
    button.backgroundColor = [UIColor orangeColor];
    button.tintColor = @"#000000";
    button.title = @"这是一个button";
    [self.components addObject:button];
    
    HLJButtonComponentViewModel *button1 = [[HLJButtonComponentViewModel alloc] init];
    button1.margin = @[@10, @10, @10, @10];
    button1.padding = @[@10, @10, @10, @10];
    [self.components addObject:button1];;
}

@end
