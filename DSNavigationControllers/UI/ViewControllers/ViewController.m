//
//  ViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 01.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "ViewController.h"
#import "DSMyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = [NSString stringWithFormat:@"%@", self.class];
}

- (IBAction)showFromXib:(id)sender {
    DSMyViewController *viewController = [DSMyViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
