//
//  HLJComponentModel.m
//  MeiJiaShi
//
//  Created by 赵鹏 on 2019/3/3.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "HLJComponentModel.h"

@implementation HLJComponentModel

+ (instancetype)componentWithName:(NSString *)componentName {
    HLJComponentModel *component = [[HLJComponentModel alloc] init];
    component.name = componentName;
    return component;
}

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"componentId" : @"id"};
}

// MARK: - IGListDiffable

- (id<NSObject>)diffIdentifier {
    return self;
}

- (BOOL)isEqualToDiffableObject:(id)object {
    // since the diff identifier returns self, object should only be compared with same instance
    return self == object;
}

@end
