//
//  HLJComponentSectionController.h
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/4.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import "IGListSectionController.h"
#import "HLJComponentProtocol.h"
#import "HLJComponentModel.h"

@interface HLJComponentSectionController : IGListSectionController <HLJComponentViewDelegate>

@property (nonatomic, strong) NSMutableArray <HLJComponentProtocol> *components;

@end
