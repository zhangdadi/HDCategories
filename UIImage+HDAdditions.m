//
//  UIImage+HDAdditions.m
//  DriveCloudPhone
//
//  Created by 张达棣 on 14-7-22.
//  Copyright (c) 2014年 YH. All rights reserved.
//

#import "UIImage+HDAdditions.h"

@implementation UIImage (HDAdditions)

//有损缩放图片
- (UIImage *)scaleToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0,0, size.width, size.height)];
    UIImage* scaledImage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}

@end
