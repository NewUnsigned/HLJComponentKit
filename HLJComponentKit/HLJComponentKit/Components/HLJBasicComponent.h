//
//  HLJBasicComponent.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/5/6.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLJComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLJBasicComponent : NSObject <HLJComponentProtocol>

@property (nonatomic, copy) NSString *reuseIdentifier;

@property (nonatomic, strong) NSArray *margin;

@property (nonatomic, assign) UIEdgeInsets marginInsets;

@property (nonatomic, strong) NSArray *padding;

@property (nonatomic, assign) UIEdgeInsets paddingInsets;

@property (nonatomic, copy) NSString *openUrl;

@property (strong, nonatomic) NSDictionary *moduleParameters;

@end

NS_ASSUME_NONNULL_END
