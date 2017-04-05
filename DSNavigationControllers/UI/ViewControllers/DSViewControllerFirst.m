//
//  DSViewControllerFirst.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 04.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSViewControllerFirst.h"

@interface DSViewControllerFirst ()

@end

@implementation DSViewControllerFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = [NSString stringWithFormat:@"%@", self.class];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"VCModal" style:UIBarButtonItemStylePlain target:self action:@selector(actionGoToModalVC:)];
    
    self.navigationItem.rightBarButtonItem = item;
}

- (IBAction)actionGoToModalVC:(id)sender {
    [self performSegueWithIdentifier:@"ShowModallyVC" sender:sender];
}

@end
