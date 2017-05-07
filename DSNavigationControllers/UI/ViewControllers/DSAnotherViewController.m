//
//  DSAnotherViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 07.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSAnotherViewController.h"
#import "DSTabBarController.h"
#import "DSOrangeViewController.h"

#import "UIStoryboard+DSExtension.h"

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

- (IBAction)pushTabbar:(UIButton *)sender {

    DSTabBarController *anotherController = [[UIStoryboard another] viewControllerFromClass:[DSTabBarController class]];
    anotherController.title = NSStringFromClass([DSTabBarController class]);
    [self.navigationController pushViewController:anotherController animated:YES];

}


@end
