//
//  DSModalViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 05.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSModalViewController.h"

@interface DSModalViewController ()

@end

@implementation DSModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    self.lableForTitle.text = self.title;
}

- (IBAction)actionBackToFirstVC:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
