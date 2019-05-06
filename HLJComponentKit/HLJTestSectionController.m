//
//  HLJTestSectionController.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJTestSectionController.h"
#import "HLJButtonComponent.h"
#import "HLJLabelComponent.h"

@implementation HLJTestSectionController

- (void)didUpdateToObject:(HLJComponentModel *)object {
    self.inset = object.inset;
//    HLJComponentStyleModel *style = [HLJComponentStyleModel new];

    HLJButtonComponent *button = [[HLJButtonComponent alloc] init];
//    button.style = style;
//    button.style.margin = @[@10, @10, @10, @10];
//    button.style.padding = @[@10, @10, @10, @10];
//    button.style.cornerRadius = 4.0;
//    button.style.backgroundColor = [UIColor orangeColor];
//    button.style.tintColor = @"#000000";
    button.title = @"这是一个button";
    [self.components addObject:button];
    
    HLJButtonComponent *button1 = [[HLJButtonComponent alloc] init];
    button1.title = @"这是第二个button";
    [self.components addObject:button1];
    
    HLJLabelComponent *label = [[HLJLabelComponent alloc] init];
    label.text = @"这是第二个button";
    [self.components addObject:label];
    
    HLJLabelComponent *label1 = [[HLJLabelComponent alloc] init];
    label1.text = @"这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button这是第二个button";
    [self.components addObject:label1];
}

@end
