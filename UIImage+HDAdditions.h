//
//  UIImage+HDAdditions.h
//  DriveCloudPhone
//
//  Created by 张达棣 on 14-7-22.
//  Copyright (c) 2014年 YH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HDAdditions)

/**
 *  有损缩放图片
 *
 *  @param size 缩放后的大小
 *
 *  @return 缩放后的图片
 */
- (UIImage *)scaleToSize:(CGSize)size;

@end
