//
//  HLJComponentSectionController.m
//  MeiJiaShi
//
//  Created by bimuyu on 2019/3/4.
//  Copyright © 2019 bimuyu. All rights reserved.
//

#import "HLJComponentSectionController.h"

@implementation HLJComponentSectionController

- (instancetype)init {
    if (self = [super init]) {
        _components = (NSMutableArray <HLJComponentViewModelProtocol> *)[NSMutableArray array];
    }
    return self;
}

- (NSInteger)numberOfItems {
    return _components.count;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index {
    id<HLJComponentViewModelProtocol> viewModel = _components[index];
    return CGSizeMake(self.collectionContext.containerSize.width, viewModel.viewHeight.floatValue);
}

- (UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index {
    
    id<HLJComponentViewModelProtocol> viewModel = _components[index];
    
    UICollectionViewCell <HLJComponentViewProtocol> *cell = [self.collectionContext dequeueReusableCellOfClass:viewModel.viewClass forSectionController:self atIndex:index];
    
    if ([cell respondsToSelector:@selector(setViewModel:)]) {
        [cell setViewModel:viewModel];
    }
    
    if ([cell respondsToSelector:@selector(setDelegate:)]) {
        [cell setDelegate:self];
    }
    
    return cell;
}

- (void)didSelectItemAtIndex:(NSInteger)index {
    [self fetchModuleWithComponent:[self.components objectAtIndex:index]];
}

/**
 colletion组件点击item时如果有openUrl就响应并跳转
 */
- (void)didClickedColletionitem:(id<HLJComponentViewModelProtocol>)item {
    [self fetchModuleWithComponent:item];
}

- (void)fetchModuleWithComponent:(id<HLJComponentViewModelProtocol>)component {
    if ([component respondsToSelector:@selector(openUrl)] && component.openUrl) {
        [self component:component fetchControllerWithOpenUrl:component.openUrl];
    } else if([component respondsToSelector:@selector(moduleParameters)] && component.moduleParameters) {
        [self component:component fetchControllerWithParameters:component.moduleParameters];
    }
}

// MARK: HLJComponentViewDelegate

- (void)component:(id<HLJComponentViewModelProtocol>)component fetchControllerWithOpenUrl:(NSString *)openUrl {
//    [HLJModuleManager.manager fetchModuleViewControllerForOpenUrl:openUrl completion:^(UIViewController<HLJModuleProtocol> * _Nullable controller) {
//        if (controller) {
//            [self.viewController.navigationController pushViewController:controller animated:YES];
//        }
//    }];
}

- (void)component:(id<HLJComponentViewModelProtocol>)component fetchControllerWithParameters:(NSDictionary *)parameters {
//    [HLJModuleManager.manager fetchModuleViewControllerWithParameters:parameters completion:^(UIViewController<HLJModuleProtocol> * _Nullable controller) {
//        if (controller) {
//            [self.viewController.navigationController pushViewController:controller animated:YES];
//        }
//    }];
}

@end
