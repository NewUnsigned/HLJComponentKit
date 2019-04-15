//
//  HLJComponentProtocol.h
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/5.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HLJComponentViewProtocol;

@protocol HLJComponentViewModelProtocol <NSObject>

@property (nonatomic, strong, readwrite) NSNumber *viewHeight;

/**
 component class, implementation HLJComponentViewProtocol

 @return Class
 */
- (Class <HLJComponentViewProtocol>)viewClass;

@optional;

/**
 view距离组件的边距(外边距),top left bottom right,可以是NSNumber,NSString
 */
@property (nonatomic, strong) NSArray *margin;

/**
 view距离容器的边距(内边距),top left bottom right,可以是NSNumber,NSString
 */
@property (nonatomic, strong) NSArray *padding;

/**
 使用openUrl模块跳转
 */
@property (nonatomic, copy) NSString *openUrl;

/**
 使用字典参数进行模块跳转
 */
@property (strong, nonatomic) NSDictionary *moduleParameters;

@end

@protocol HLJComponentViewDelegate <NSObject>

@optional;
/**
 组件跳转到目的模块

 @param component 组件
 @param openUrl 跳转url
 */
- (void)component:(id<HLJComponentViewModelProtocol>)component fetchControllerWithOpenUrl:(NSString *)openUrl;

/**
 组件跳转到目的模块
 
 @param component 组件
 @param parameters 跳转需要的参数
 */
- (void)component:(id<HLJComponentViewModelProtocol>)component fetchControllerWithParameters:(NSDictionary *)parameters;

@end

@protocol HLJComponentViewProtocol <NSObject>

@optional;
+ (NSNumber *)viewHeightWithViewModel:(id<HLJComponentViewModelProtocol>)viewModel;
- (void)setViewModel:(id<HLJComponentViewModelProtocol>)viewModel;
- (void)setDelegate:(id<HLJComponentViewDelegate>)delegate;

@end
