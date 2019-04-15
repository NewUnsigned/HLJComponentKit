//
//  HLJComponentModel.h
//  MeiJiaShi
//
//  Created by 赵鹏 on 2019/3/3.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import <UIKit/UIGeometry.h>
#import <IGListDiffable.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLJComponentModel : NSObject <IGListDiffable>

@property (nonatomic, copy) NSString *biEvent;

/**
 组件版本
 */
@property (nonatomic, copy) NSString *version;

/**
 组件名
 */
@property (nonatomic, copy) NSString *spm;

/**
 组件名
 */
@property (nonatomic, copy) NSString *name;

/**
 组件id
 */
@property (nonatomic, copy) NSString *componentId;

/**
 组件数据，组件内部使用,NSDictionary or NSArray
 */
@property (strong, nonatomic, nullable) id data;

@property (nonatomic, assign) UIEdgeInsets inset;

//@property (nonatomic, strong) NSArray <id <HLJComponentViewModelProtocol>> *subComponents;

+ (instancetype)componentWithName:(NSString *)componentName;

@end

NS_ASSUME_NONNULL_END
