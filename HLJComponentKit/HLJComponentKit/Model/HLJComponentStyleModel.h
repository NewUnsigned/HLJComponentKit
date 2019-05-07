//
//  HLJComponentStyleModel.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLJComponentStyleModel : NSObject

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
