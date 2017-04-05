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
    [self xibSetup];
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    [self xibSetup];
    return self;
}

- (IBAction)actionBackToRoot:(UIButton *)sender {
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
}

- (UIView *)loadViewFromNib {
    NSBundle *bandle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bandle];
    UIView *view = [[nib instantiateWithOwner:self options:nil] firstObject];
    return view;
}

- (void)xibSetup {
    UIView *view = [self loadViewFromNib];
    view.frame = self.bounds;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
}

@end
