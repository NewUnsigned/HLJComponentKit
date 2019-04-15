//
//  HLJComponentContainerViewController.h
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IGListKit.h"
#import "HLJComponentModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HLJComponentContainerViewController : UIViewController <IGListAdapterDataSource>

- (instancetype)initWithLayout:(UICollectionViewLayout *)layout;

- (void)registComponentClass:(Class)componentClass componentName:(NSString *)componentName;

@property (nonatomic, strong) NSMutableArray <HLJComponentModel *> *sectionModels;

- (void)reloadContainer;

@end

NS_ASSUME_NONNULL_END
