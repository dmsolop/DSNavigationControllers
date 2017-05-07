//
//  UIStoryboard+DSExtension.m
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 07.05.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import "UIStoryboard+DSExtension.h"

@implementation UIStoryboard (DSExtension)

+ (UIStoryboard *)another {
    return [UIStoryboard storyboardWithName:@"DSAnotherStoryboard" bundle:nil];
}

- (id) viewControllerFromClass:(Class)viewControllerClass {
    return [self instantiateViewControllerWithIdentifier:NSStringFromClass(viewControllerClass)];
}


@end
