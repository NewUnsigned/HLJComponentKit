//
//  HLJButtonComponentViewModel.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HLJComponentStyleModel.h"
#import "HLJComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLJButtonComponentViewModel : NSObject <HLJComponentViewModelProtocol>

@property (nonatomic, copy) NSString *title;

@property (nonatomic, strong) HLJComponentStyleModel *style;

@end

NS_ASSUME_NONNULL_END
