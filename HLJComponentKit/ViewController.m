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

    [self registComponentClass:HLJTestSectionController.class componentName:@"test"];

    HLJComponentModel *component = [HLJComponentModel componentWithName:@"test"];

    [self.sectionModels addObject:component];

    [self reloadContainer];
}


@end
