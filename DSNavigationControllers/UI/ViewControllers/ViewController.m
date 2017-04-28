//
//  ViewController.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 01.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "ViewController.h"
#import "DSMyViewController.h"
#import "DSViewControllerFirst.h"
#import "DSViewControllerSecond.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showFromXib:(id)sender {
    DSMyViewController *viewController = [DSMyViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.title = NSStringFromClass(viewController.class);
}

- (IBAction)showFirstViewController:(UIButton *)sender {
    DSMyViewController *viewController = [DSMyViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.title = NSStringFromClass(viewController.class);
}

- (IBAction)showAnotherStoryboard:(id)sender {
    UIViewController *anotherController = [[UIStoryboard storyboardWithName:@"DSAnotherStoryboard" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:anotherController animated:YES];
}

@end
