//
//  UIButton+Orientation.m
//  ButtonType
//
//  Created by Myron on 2019/9/25.
//  Copyright © 2019 Myron. All rights reserved.
//

#import "UIButton+Orientation.h"

@implementation UIButton (Orientation)

//图上字下
- (void)verticalImageAndTitle:(CGFloat)spacing{
    CGFloat space = spacing * 0.5;
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat imgHeight = self.imageView.bounds.size.height;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    CGFloat labHeight = self.titleLabel.bounds.size.height;
    [self setImageEdgeInsets:UIEdgeInsetsMake(-labHeight - space, 0, 0, -labWidth)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, -imgHeight-space, 0)];
}

//图下字上
- (void)verticalTitleAndImage:(CGFloat)spacing{
    CGFloat space = spacing * 0.5;
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat imgHeight = self.imageView.bounds.size.height;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    CGFloat labHeight = self.titleLabel.bounds.size.height;
    [self setImageEdgeInsets:UIEdgeInsetsMake(labHeight + space, 0, 0, -labWidth)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight + space, 0)];
}

//图左字右
-(void)horizontalImageAndTitle:(CGFloat)spacing {
    CGFloat space = spacing * 0.5;
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, -space, 0, 0)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -space)];

}

//图右字左
-(void)horizontalTitleAndImage:(CGFloat)spacing {
    CGFloat space = spacing * 0.5;
    CGFloat imgWidth = self.imageView.bounds.size.width;
    CGFloat labWidth = self.titleLabel.bounds.size.width;
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth, 0, -labWidth - space)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth - space, 0, imgWidth)];
}


@end
