//
//  HLJLabelComponent.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/5/6.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJLabelComponent.h"

@interface HLJLabelComponent ()

@property (nonatomic, strong) UILabel *content;

@end

@implementation HLJLabelComponent

- (UIView *)renderContent {
    return self.content;
}

- (CGSize)contentSizeWithContainerSize:(CGSize)size {
    self.content.text = _text;
    return [_content sizeThatFits:size];
}

- (UILabel *)content {
    if (!_content) {
        _content = [[UILabel alloc] init];
        _content.font = [UIFont systemFontOfSize:14.0];
        _content.textColor = [UIColor blackColor];
        _content.numberOfLines = 0;
    }
    return _content;
}

@end
