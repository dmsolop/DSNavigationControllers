//
//  DSMyViewController.m
//  DSNavigationControllers
//
//  Created by ios on 05.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSMyViewController.h"

@interface DSMyViewController ()

@end

@implementation DSMyViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    return self;
}
- (IBAction)actionBackToRoot:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)awakeFromNib {
    [super awakeFromNib];
}

@end
