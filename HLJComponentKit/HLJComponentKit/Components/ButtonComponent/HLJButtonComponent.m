//
//  HLJButtonComponentViewModel.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJButtonComponent.h"
#import "UIColor+Extension.h"

@implementation HLJButtonComponent

- (UIView *)renderContent {
    if (_button) {
        return _button;
    }
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.tintColor = [UIColor whiteColor];
    _button.titleLabel.font = [UIFont systemFontOfSize:14.0];
    _button.layer.cornerRadius = 4.0;
    return _button;
}

- (void)renderInContent:(UIButton *)content {
    [content setTitle:_title forState:UIControlStateNormal];
    content.backgroundColor = [UIColor randomColor];
}

- (CGSize)contentSizeWithContainerSize:(CGSize)size {
    return CGSizeMake(size.width, 44.0);
}

- (void)contentWillDisplayWithContent:(UIView *)content {
    NSLog(@"%@ %s",NSStringFromClass([self class]),__func__);
}

- (void)contentDidEndDisplayWithContent:(UIView *)content {
    NSLog(@"%@ %s",NSStringFromClass([self class]),__func__);
}

@end
