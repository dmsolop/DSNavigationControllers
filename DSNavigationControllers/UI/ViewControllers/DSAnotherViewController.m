//
//  DSAnotherViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 07.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSAnotherViewController.h"

@interface DSAnotherViewController ()

@end

@implementation DSAnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)backToMainStoryboard:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}



@end
