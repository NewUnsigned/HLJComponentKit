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
    
    HLJComponentStyleModel *style = [HLJComponentStyleModel new];
    
    HLJButtonComponentViewModel *button = [[HLJButtonComponentViewModel alloc] init];
    button.style = style;
    button.style.margin = @[@10, @10, @10, @10];
    button.style.padding = @[@10, @10, @10, @10];
    button.style.cornerRadius = 4.0;
    button.style.backgroundColor = [UIColor orangeColor];
    button.style.tintColor = @"#000000";
    button.title = @"这是一个button";
    [self.components addObject:button];
    
    HLJButtonComponentViewModel *button1 = [[HLJButtonComponentViewModel alloc] init];
    button1.style = style;
    [self.components addObject:button1];;
}

@end
