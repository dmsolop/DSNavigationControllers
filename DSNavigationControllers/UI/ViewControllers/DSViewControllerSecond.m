//
//  DSViewControllerSecond.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 04.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSViewControllerSecond.h"

@interface DSViewControllerSecond ()

@end

@implementation DSViewControllerSecond

- (void)viewDidLoad {
    [super viewDidLoad];
  //  self.navigationItem.title = [NSString stringWithFormat:@"%@", self.class];
}
- (IBAction)backToRootAction:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)backToFirstAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
