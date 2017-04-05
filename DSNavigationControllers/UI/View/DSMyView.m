//
//  DSMyView.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 05.04.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "DSMyView.h"

@implementation DSMyView


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
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
