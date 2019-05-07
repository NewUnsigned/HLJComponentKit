//
//  HLJComponentCollectionViewCell.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/5/6.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJComponentCollectionViewCell.h"

@interface HLJComponentCollectionViewCell ()

@property (nonatomic, strong) id<HLJComponentProtocol> renderedComponent;

@property (nonatomic, strong) UIView *renderedContent;

@end

@implementation HLJComponentCollectionViewCell

- (void)renderComponent:(id<HLJComponentProtocol>)component {
    if (_renderedContent && _renderedComponent && ![component shouldRenderWithNext:component content:_renderedContent]) {
        return;
    }
    
    UIView *content = [component renderContent];
    
    if (_renderedContent != content) {
        [_renderedContent removeFromSuperview];
        _renderedContent = content;
        [self.contentView addSubview:_renderedContent];
        [self didRenderContent:_renderedContent];
    }
    
    [component renderInContent:_renderedContent];
    _renderedComponent = component;
    [self didRenderComponent:component];
    
    [self setNeedsLayout];
}

- (UIView *)containerView {
    return self.contentView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _renderedContent.frame = UIEdgeInsetsInsetRect(self.bounds, _renderedComponent.paddingInsets);
}

- (void)didRenderComponent:(id<HLJComponentProtocol>)component {
    
}

- (void)didRenderContent:(UIView *)content {
    
}

@end
