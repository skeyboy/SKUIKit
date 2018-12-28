//
//  SKTopAlignLable.m
//  SKUIKit
//
//  Created by sk on 2018/12/28.
//  Copyright © 2018 sk. All rights reserved.
//

#import "SKTopAlignLable.h"

@implementation SKTopAlignLable
- (void)drawTextInRect:(CGRect)rect {
    CGRect actualRect = [self textRectForBounds:rect
                         limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}
@end
