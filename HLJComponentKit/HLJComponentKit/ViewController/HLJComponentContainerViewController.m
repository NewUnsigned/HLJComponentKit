//
//  HLJComponentContainerViewController.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "HLJComponentContainerViewController.h"

@interface HLJComponentContainerViewController ()

@property (strong, readonly, nonatomic) IGListAdapter *adatpter;

@property (strong, readonly, nonatomic) UICollectionView *collectionView;

@property (nonatomic, strong) NSMutableDictionary <NSString *, Class> *componentTypeMap;

@end

@implementation HLJComponentContainerViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commenInitializeWithLayout:[UICollectionViewFlowLayout new]];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self commenInitializeWithLayout:[UICollectionViewFlowLayout new]];
    }
    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        [self commenInitializeWithLayout:[UICollectionViewFlowLayout new]];
    }
    return self;
}

- (instancetype)initWithLayout:(UICollectionViewLayout *)layout {
    if (self = [super init]) {
        [self commenInitializeWithLayout:layout];
    }
    return self;
}

- (void)commenInitializeWithLayout:(UICollectionViewLayout *)layout {
    if (!layout) {
        layout = [UICollectionViewFlowLayout new];
    }
    
    _adatpter = [[IGListAdapter alloc] initWithUpdater:[IGListAdapterUpdater new] viewController:self workingRangeSize:0];
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.alwaysBounceVertical = YES;
    _adatpter.collectionView = _collectionView;
    _adatpter.dataSource = self;
    
    _sectionModels = [NSMutableArray array];
    _componentTypeMap = [NSMutableDictionary dictionary];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:_collectionView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _collectionView.frame = self.view.bounds;
}

- (void)reloadContainer {
    [_adatpter performUpdatesAnimated:YES completion:^(BOOL finished) {

    }];
}

// MARK: IGListAdapterDataSource

- (nullable UIView *)emptyViewForListAdapter:(nonnull IGListAdapter *)listAdapter {
    return nil;
}

- (nonnull NSArray<id<IGListDiffable>> *)objectsForListAdapter:(nonnull IGListAdapter *)listAdapter {
    return _sectionModels;
}

- (nonnull IGListSectionController *)listAdapter:(nonnull IGListAdapter *)listAdapter sectionControllerForObject:(nonnull HLJComponentModel *)object {
    
    if (![object isKindOfClass:HLJComponentModel.class]) {
        return nil;
    }
    
    Class cls = [self classNameForCompnentName:object.name];
    
    if (cls) {
        return [[cls alloc] init];
    }
    
    NSString *message = [NSString stringWithFormat:@"%@ %s <error: 所有的数据模型都要有对应的SectionController>", NSStringFromClass([self class]), __func__];
    NSAssert(NO, message);
    
    return nil;
}

/**
 Regist Component
 */
- (void)registComponentClass:(Class)componentClass componentName:(NSString *)componentName {
    if (componentClass && [componentName isKindOfClass:[NSString class]] && componentName.length > 0) {
        [_componentTypeMap setObject:componentClass forKey:componentName];
    }
}

- (Class)classNameForCompnentName:(NSString *)componentName {
    
    if (!componentName.length) {
        return nil;
    }
    
    Class cls = [_componentTypeMap objectForKey:componentName];
    
    if (!cls) {
        NSString *message = [NSString stringWithFormat:@"%@ %s <error: 没有%@对应的组件，请添加后重试>", NSStringFromClass([self class]), __func__, componentName];
        NSAssert(NO, message);
        return nil;
    }
    
    return cls;
}

@end
