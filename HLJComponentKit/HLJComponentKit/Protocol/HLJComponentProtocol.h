//
//  HLJComponentProtocol.h
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/5.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HLJComponentProtocol <NSObject>

@property (nonatomic, copy) NSString *reuseIdentifier;

@property (nonatomic, strong, readonly) UIView *renderContent;

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
 使用openUrl模块跳转
 */
@property (nonatomic, copy) NSString *openUrl;

/**
 使用字典参数进行模块跳转
 */
@property (strong, nonatomic) NSDictionary *moduleParameters;

- (void)renderInContent:(UIView *)content;

- (CGSize)contentSizeWithContainerSize:(CGSize)size;

- (BOOL)shouldContentUpdateWithNext:(id<HLJComponentProtocol>)next;

- (BOOL)shouldRenderWithNext:(id<HLJComponentProtocol>)next content:(UIView *)content;

- (void)contentWillDisplayWithContent:(UIView *)content;

- (void)contentDidEndDisplayWithContent:(UIView *)content;

@end

@protocol HLJComponentViewDelegate <NSObject>

@optional;
/**
 组件跳转到目的模块

 @param component 组件
 @param openUrl 跳转url
 */
- (void)component:(id<HLJComponentProtocol>)component fetchControllerWithOpenUrl:(NSString *)openUrl;

/**
 组件跳转到目的模块
 
 @param component 组件
 @param parameters 跳转需要的参数
 */
- (void)component:(id<HLJComponentProtocol>)component fetchControllerWithParameters:(NSDictionary *)parameters;

@end

@protocol HLJComponentContainerProtocol <NSObject>

@property (nonatomic, strong, readonly) UIView *renderedContent;
@property (nonatomic, strong, readonly) id<HLJComponentProtocol> renderedComponent;
@property (nonatomic, strong, readonly) UIView *containerView;

- (void)renderComponent:(id<HLJComponentProtocol>)component;
- (void)didRenderContent:(UIView *)content;
- (void)didRenderComponent:(id<HLJComponentProtocol>)component;

@end
