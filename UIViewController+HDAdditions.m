//
//  UIViewController+HDAdditions.m
//  DriveCloudPhone
//
//  Created by 张达棣 on 14-7-8.
//  Copyright (c) 2014年 YH. All rights reserved.
//

#import "UIViewController+HDAdditions.h"

@implementation UIViewController (HDAdditions)

//自定义导航栏返回按钮
- (UIBarButtonItem *)customBackButtonTarget:(id)targe action:(SEL)action {
    return [self customBackButtonTitle:@"返回" target:targe action:action];
}
- (UIBarButtonItem *)customBackButtonTitle:(NSString *)title target:(id)targe action:(SEL)action {
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.delegate = nil;
    }
    return [self customLeftButtonTitle:title imageName:@"backof" target:targe action:action];
}


//自定义导航栏左边按钮
- (UIBarButtonItem *)customLeftButtonTitle:(NSString *)title target:(id)targe action:(SEL)action {
    return [self customLeftButtonTitle:title imageName:nil target:targe action:action];
}
- (UIBarButtonItem *)customLeftButtonImageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    return [self customLeftButtonTitle:nil imageName:imageName target:targe action:action];
}
- (UIBarButtonItem *)customLeftButtonTitle:(NSString *)title imageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    [self.navigationItem setHidesBackButton:YES];
    UIBarButtonItem *barButtonItem = [self customNavButtonTitle:title imageName:imageName target:targe action:action];
    [self.navigationItem setLeftBarButtonItem:barButtonItem];
    return barButtonItem;
}


//自定义导航栏右边按钮
- (UIBarButtonItem *)customRightButtonTitle:(NSString *)title target:(id)targe action:(SEL)action {
    return [self customRightButtonTitle:title imageName:nil target:targe action:action];
}
- (UIBarButtonItem *)customRightButtonImageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    return [self customRightButtonTitle:nil imageName:imageName target:targe action:action];
}
- (UIBarButtonItem *)customRightButtonTitle:(NSString *)title imageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    UIBarButtonItem *barButtonItem = [self customNavButtonTitle:title imageName:imageName target:targe action:action];
    ((UIButton *)barButtonItem.customView).contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [self.navigationItem setRightBarButtonItem:barButtonItem];
    return barButtonItem;
}


- (UIBarButtonItem *)customNavButtonTitle:(NSString *)title target:(id)targe action:(SEL)action {
    return [self customNavButtonTitle:title imageName:nil target:targe action:action];
}
- (UIBarButtonItem *)customNavButtonImageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    return [self customNavButtonTitle:nil imageName:imageName target:targe action:action];
    
}

- (UIBarButtonItem *)customNavButtonTitle:(NSString *)title imageName:(NSString *)imageName target:(id)targe action:(SEL)action {
    UIButton *itemButtom = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *image = [UIImage imageNamed:imageName];
    [itemButtom setImage:image forState:UIControlStateNormal];
    itemButtom.titleLabel.font = [UIFont systemFontOfSize: 16];
    [itemButtom setTitle:title forState:UIControlStateNormal];
    [itemButtom setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
    UIColor *color = [UINavigationBar appearance].titleTextAttributes[UITextAttributeTextColor];
    if (color == nil) {
        color = [UIColor blackColor];
    }
    [itemButtom setTitleColor:color forState:UIControlStateNormal];
    itemButtom.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [itemButtom addTarget:targe action:action
         forControlEvents:UIControlEventTouchUpInside];
    if (title == nil && imageName != nil) {
        [itemButtom setFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    } else {
        [itemButtom setFrame:CGRectMake(0, 0, 80, 40)];
    }
    
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc]
                                      initWithCustomView:itemButtom];
    return barButtonItem;
}


@end
