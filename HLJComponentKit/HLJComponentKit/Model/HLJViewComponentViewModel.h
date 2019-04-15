//
//  HLJViewComponentViewModel.h
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/29.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HLJComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/**
 基础的view组件，其子类可设置view
 */
@interface HLJViewComponentViewModel : NSObject <HLJComponentViewModelProtocol>

// MARK: HLJComponentViewModelProtocol

/**
 view距离组件的边距(外边距),top left bottom right,可以是NSNumber,NSString
 */
@property (nonatomic, strong) NSArray *margin;
@property (nonatomic, assign) UIEdgeInsets marginInsets;

/**
 view距离容器的边距(内边距),top left bottom right,可以是NSNumber,NSString
 */
@property (nonatomic, strong) NSArray *padding;
@property (nonatomic, assign) UIEdgeInsets paddingInsets;

/**
 组件高度
 */
@property (nonatomic, strong) NSNumber *viewHeight;

// MARK: View

/**
 default is white color
 */
@property (nonatomic, strong) UIColor *backgroundColor;

@property (nonatomic, copy) NSString *tintColor;

// MARK: View Layer

/**
 圆角
 */
@property (nonatomic, assign) CGFloat cornerRadius;

/**
 边框颜色
 */
@property (nonatomic,  copy) NSString *borderColor;

/**
 边框宽度
 */
@property (nonatomic, assign) CGFloat borderWidth;

/**
 阴影偏移量
 */
@property (nonatomic, assign) CGSize shadowOffset;

/**
 阴影渲染范围
 */
@property (nonatomic, assign) CGFloat shadowRadius;

/**
 阴影透明度
 */
@property (nonatomic, assign) CGFloat shadowOpacity;

/**
 阴影颜色
 */
@property (nonatomic, copy) NSString *shadowColor;

/**
 设置viewModel所有属性给view

 @param view 视图
 */
- (void)setupPropertiesForView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
