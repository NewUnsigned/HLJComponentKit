//
//  HLJBasicComponent.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/5/6.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJBasicComponent.h"

@implementation HLJBasicComponent

- (UIView *)renderContent {
    return nil;
}

- (void)renderInContent:(UIView *)content {}

- (CGSize)referenceSizeWithContainerSize:(CGSize)size {
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
