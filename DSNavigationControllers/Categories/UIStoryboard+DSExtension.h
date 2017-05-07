//
//  UIStoryboard+DSExtension.h
//  DSNavigationControllers
//
//  Created by Дмитрий Солоп on 07.05.17.
//  Copyright © 2017 Dimon Solop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (DSExtension)

+ (UIStoryboard *)another;

- (id) viewControllerFromClass:(Class)viewControllerClass;

@end
