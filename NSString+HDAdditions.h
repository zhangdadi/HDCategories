//
//  NSString+HDAdditions.h
//  DriveCloudPhone
//
//  Created by 张达棣 on 14-9-5.
//  Copyright (c) 2014年 HD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HDAdditions)
- (CGFloat)computTextHeightFont:(UIFont *)font width:(CGFloat)width;
- (NSInteger)computTextWidthFont:(UIFont *)font;

@end
