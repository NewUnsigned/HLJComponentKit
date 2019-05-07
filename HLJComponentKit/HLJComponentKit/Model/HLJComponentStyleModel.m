//
//  HLJComponentStyleModel.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJComponentStyleModel.h"
#import "UIColor+Extension.h"

@implementation HLJComponentStyleModel

- (instancetype)init {
    if (self = [super init]) {
        _backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)setupPropertiesForView:(UIView *)view {
    view.backgroundColor = _backgroundColor;
    view.tintColor = [UIColor colorWithHexString:_tintColor];
    
    view.layer.cornerRadius = _cornerRadius;
    view.layer.borderWidth = _borderWidth;
    view.layer.borderColor = [UIColor colorWithHexString:_borderColor].CGColor;
    view.layer.shadowOpacity = _shadowOpacity;
    view.layer.shadowRadius = _shadowRadius;
    view.layer.shadowOffset = _shadowOffset;
    view.layer.shadowColor = [UIColor colorWithHexString:_shadowColor].CGColor;
}

@end
