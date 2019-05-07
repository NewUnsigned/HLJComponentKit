//
//  HLJButtonComponentViewModel.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HLJComponentStyleModel.h"
#import "HLJBasicComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLJButtonComponent : HLJBasicComponent

@property (nonatomic, strong, readonly) UIButton *button;

@property (nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
