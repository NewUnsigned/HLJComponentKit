//
//  HLJButtonComponentCollectionViewCell.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJButtonComponentCollectionViewCell.h"
#import "UIColor+Extension.h"
#import "HLJButtonComponentViewModel.h"

@interface HLJButtonComponentCollectionViewCell ()

@property (nonatomic, strong) HLJButtonComponentViewModel *viewModel;

@property (nonatomic, strong) UIButton *button;

@end

@implementation HLJButtonComponentCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor = [UIColor randomColor];
        
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.contentView addSubview:_button];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.contentView.frame = UIEdgeInsetsInsetRect(self.bounds, _viewModel.style.marginInsets);
    _button.frame = UIEdgeInsetsInsetRect(self.contentView.bounds, _viewModel.style.paddingInsets);
}

- (void)setViewModel:(HLJButtonComponentViewModel *)viewModel {
    _viewModel = viewModel;
    
    [viewModel.style setupPropertiesForView:_button];
    
    [_button setTitle:viewModel.title forState:UIControlStateNormal];
}

@end
