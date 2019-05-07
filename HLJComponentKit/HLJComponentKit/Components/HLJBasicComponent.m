//
//  HLJBasicComponent.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/5/6.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJBasicComponent.h"
#import "NSArray+SafeOperate.h"

@implementation HLJBasicComponent

@synthesize margin = _margin;
@synthesize marginInsets = _marginInsets;
@synthesize padding = _padding;
@synthesize paddingInsets = _paddingInsets;
@synthesize reuseIdentifier = _reuseIdentifier;

- (void)setMargin:(NSArray *)margin {
    _margin = margin;
    
    _marginInsets = UIEdgeInsetsMake([[_margin safeObjectAtIndex:0] floatValue],
                                     [[_margin safeObjectAtIndex:1] floatValue],
                                     [[_margin safeObjectAtIndex:2] floatValue],
                                     [[_margin safeObjectAtIndex:3] floatValue]);
}

- (void)setPadding:(NSArray *)padding {
    _padding = padding;
    
    _paddingInsets = UIEdgeInsetsMake([[_margin safeObjectAtIndex:0] floatValue],
                                      [[_margin safeObjectAtIndex:1] floatValue],
                                      [[_margin safeObjectAtIndex:2] floatValue],
                                      [[_margin safeObjectAtIndex:3] floatValue]);
}

- (UIView *)renderContent {
    return nil;
}

- (void)renderInContent:(UIView *)content {}

- (CGSize)contentSizeWithContainerSize:(CGSize)size {
    return CGSizeZero;
}

- (BOOL)shouldContentUpdateWithNext:(id<HLJComponentProtocol>)next {
    return self != next;
}

- (BOOL)shouldRenderWithNext:(id<HLJComponentProtocol>)next content:(UIView *)content {
    return self != next;
}

- (void)contentWillDisplayWithContent:(UIView *)content {
    NSLog(@"%@ %s",NSStringFromClass([self class]),__func__);
}

- (void)contentDidEndDisplayWithContent:(UIView *)content {
    NSLog(@"%@ %s",NSStringFromClass([self class]),__func__);
}

@end
