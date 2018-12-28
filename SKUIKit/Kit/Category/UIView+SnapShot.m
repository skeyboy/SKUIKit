//
//  UIView+SnapShot.m
//  SKUIKit
//
//  Created by sk on 2018/12/28.
//  Copyright © 2018 sk. All rights reserved.
//

#import "UIView+SnapShot.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (SnapShot)
-(UIImage *)snapShot{
    self.backgroundColor = [UIColor clearColor];
    CGSize inSize = self.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(inSize, NO, [UIScreen mainScreen].scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image= UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
