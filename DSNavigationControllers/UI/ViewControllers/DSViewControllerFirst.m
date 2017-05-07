//
//  DSViewControllerFirst.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 04.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSViewControllerFirst.h"
#import "DSModalViewController.h"

static NSString *DSShowTitleModalController = @"DSModalViewController";
static NSString *DSShowTitleSecondController = @"DSViewControllerSecond";


@interface DSViewControllerFirst ()

@end

@implementation DSViewControllerFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"VCModal" style:UIBarButtonItemStylePlain target:self action:@selector(actionGoToModalVC:)];
    self.navigationItem.rightBarButtonItem = item;
}

- (IBAction)actionGoToModalVC:(id)sender {
    [self performSegueWithIdentifier:DSShowTitleModalController sender:sender];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *segueIdentifier = segue.identifier;
    
    if ([segueIdentifier isEqualToString:DSShowTitleModalController]) {
        segue.destinationViewController.title = NSStringFromClass(segue.destinationViewController.class);
    }else if ([segueIdentifier isEqualToString:DSShowTitleSecondController]) {
        segue.destinationViewController.title = NSStringFromClass(segue.destinationViewController.class);
    }
}

@end
