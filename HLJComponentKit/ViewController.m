//
//  ViewController.m
//  HLJComponentKit
//
//  Created by bimuyu on 2019/4/15.
//  Copyright © 2019 helijia. All rights reserved.
//

#import "ViewController.h"
#import "HLJTestSectionController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.contentInset = UIEdgeInsetsMake(0.0, 10.0, 10.0, 10.0);
    [self registComponentClass:HLJTestSectionController.class componentName:@"test"];

    HLJComponentModel *component = [HLJComponentModel componentWithName:@"test"];
    component.inset = UIEdgeInsetsMake(10.0, 0.0, 0.0, 0.0);
    [self.sectionModels addObject:component];
    
    HLJComponentModel *b = [HLJComponentModel componentWithName:@"test"];
    b.inset = UIEdgeInsetsMake(10.0, 0.0, 0.0, 0.0);
    [self.sectionModels addObject:b];
    
    HLJComponentModel *d = [HLJComponentModel componentWithName:@"test"];
    d.inset = UIEdgeInsetsMake(10.0, 0.0, 0.0, 0.0);
    [self.sectionModels addObject:d];

    [self reloadContainer];
}


@end
