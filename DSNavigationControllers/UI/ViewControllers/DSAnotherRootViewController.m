//
//  DSAnotherRootViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 11.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSAnotherRootViewController.h"
#import "DSAnotherAfterRootViewController.h"

#import "UIStoryboard+DSExtension.h"

@interface DSAnotherRootViewController ()

@end

@implementation DSAnotherRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
   self.tabBarController.navigationController.navigationBarHidden = NO;
}

- (IBAction)pushAfterRoot:(UIButton *)sender {

    DSAnotherAfterRootViewController *anotherController = [[UIStoryboard another] viewControllerFromClass:[DSAnotherAfterRootViewController class]];
    
    anotherController.title = NSStringFromClass([anotherController class]);
    [self.navigationController pushViewController:anotherController animated:YES];
    
}

@end
