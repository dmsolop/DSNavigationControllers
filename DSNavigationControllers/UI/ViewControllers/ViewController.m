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

static NSString *DSShowTitleFirstController = @"DSViewControllerFirst";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSStringFromClass(self.class);
}

- (IBAction)showFromXib:(id)sender {
    DSMyViewController *viewController = [DSMyViewController new];
    [self.navigationController pushViewController:viewController animated:YES];
    viewController.title = NSStringFromClass(viewController.class);
}


- (IBAction)showAnotherStoryboard:(id)sender {
    UIViewController *anotherController = [[UIStoryboard storyboardWithName:@"DSAnotherStoryboard" bundle:nil] instantiateInitialViewController];
    anotherController.title = NSStringFromClass(anotherController.class);
    [self.navigationController pushViewController:anotherController animated:YES];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *segueIdentifier = segue.identifier;
    if ([segueIdentifier isEqualToString:DSShowTitleFirstController]) {
        segue.destinationViewController.title = NSStringFromClass(segue.destinationViewController.class);
    }
}

@end
