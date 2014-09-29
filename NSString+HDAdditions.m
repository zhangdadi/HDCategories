//
//  NSString+HDAdditions.m
//  DriveCloudPhone
//
//  Created by 张达棣 on 14-9-5.
//  Copyright (c) 2014年 HD. All rights reserved.
//

#import "NSString+HDAdditions.h"

@implementation NSString (HDAdditions)
- (CGFloat)computTextHeightFont:(UIFont *)font width:(CGFloat)width {
    CGSize titleSize = [self sizeWithFont:font constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    return titleSize.height > 34 ? titleSize.height : 34;
}

- (NSInteger)computTextWidthFont:(UIFont *)font {
    CGSize titleSize = [self sizeWithFont:font constrainedToSize:CGSizeMake(MAXFLOAT, 30)];
    NSInteger width = titleSize.width;
    return (width > 200 ? 200 : width);
}

+ (NSString *)getTemporaryPath
{
    return NSTemporaryDirectory();
}

+ (NSString *)getCachePath
{
    NSArray *CachePaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString  *directory = [CachePaths objectAtIndex:0];
    
    return directory;
}



@end
