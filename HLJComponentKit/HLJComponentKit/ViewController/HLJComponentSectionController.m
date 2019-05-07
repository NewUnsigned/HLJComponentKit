//
//  HLJComponentSectionController.m
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/4.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import "HLJComponentSectionController.h"
#import "HLJComponentCollectionViewCell.h"

@implementation HLJComponentSectionController

- (instancetype)init {
    if (self = [super init]) {
        _components = (NSMutableArray <HLJComponentProtocol> *)[NSMutableArray array];
    }
    return self;
}

- (NSInteger)numberOfItems {
    return _components.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    id<HLJComponentProtocol> component = _components[index];
    CGSize contentSize = [component contentSizeWithContainerSize:[self cellContainerSizeForComponent:component]];
    return CGSizeMake(contentSize.width, contentSize.height + component.paddingInsets.top + component.paddingInsets.bottom);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    
    id<HLJComponentProtocol> component = _components[index];
    
    UICollectionViewCell <HLJComponentContainerProtocol> *cell = [self.collectionContext dequeueReusableCellOfClass:HLJComponentCollectionViewCell.class forSectionController:self atIndex:index];
    
    [cell renderComponent:component];
    
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {

}

- (CGSize)cellContainerSizeForComponent:(id<HLJComponentProtocol>)component {
    return CGSizeMake(self.collectionContext.containerSize.width -
                      self.inset.left - self.inset.right -
                      self.collectionContext.containerInset.left -
                      self.collectionContext.containerInset.right -
                      component.paddingInsets.left -
                      component.paddingInsets.right,
                      self.collectionContext.containerSize.height);
}

/**
 colletion组件点击item时如果有openUrl就响应并跳转
 */
- (void)didClickedColletionitem:(id<HLJComponentProtocol>)item {
    [self fetchModuleWithComponent:item];
}

- (void)fetchModuleWithComponent:(id<HLJComponentProtocol>)component {
    if ([component respondsToSelector:@selector(openUrl)] && component.openUrl) {
        [self component:component fetchControllerWithOpenUrl:component.openUrl];
    } else if([component respondsToSelector:@selector(moduleParameters)] && component.moduleParameters) {
        [self component:component fetchControllerWithParameters:component.moduleParameters];
    }
}

// MARK: HLJComponentViewDelegate

- (void)component:(id<HLJComponentProtocol>)component fetchControllerWithOpenUrl:(NSString *)openUrl {
//    [HLJModuleManager.manager fetchModuleViewControllerForOpenUrl:openUrl completion:^(UIViewController<HLJModuleProtocol> * _Nullable controller) {
//        if (controller) {
//            [self.viewController.navigationController pushViewController:controller animated:YES];
//        }
//    }];
}

- (void)component:(id<HLJComponentProtocol>)component fetchControllerWithParameters:(NSDictionary *)parameters {
//    [HLJModuleManager.manager fetchModuleViewControllerWithParameters:parameters completion:^(UIViewController<HLJModuleProtocol> * _Nullable controller) {
//        if (controller) {
//            [self.viewController.navigationController pushViewController:controller animated:YES];
//        }
//    }];
}

@end
