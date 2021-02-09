//
//  MYButton.m
//  ButtonType
//
//  Created by Myron on 2019/9/25.
//  Copyright © 2019 Myron. All rights reserved.
//

#import "MYButtonHV.h"

@implementation MYButtonHV

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _orientationType = OrientationType_H_IMG_TEXT;
    }
    return self;
}

- (void)setOrientationType:(OrientationType)orientationType {
    _orientationType = orientationType;
}

- (void)setSpacing:(CGFloat)spacing {
    _spacing = spacing;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self changeEdgeInsets:self.orientationType];
}

- (void)changeEdgeInsets:(OrientationType)orientationType{
    switch (orientationType) {
        case OrientationType_H_IMG_TEXT:{
            //默认图右字左
            CGFloat space = self.spacing * 0.5;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -space)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -space, 0, 0)];
            break;
        }
        case OrientationType_H_TEXT_IMG: {
            //图右字左
            CGFloat space = self.spacing * 0.5;
            CGFloat imgWidth = self.imageView.bounds.size.width;
            CGFloat labWidth = self.titleLabel.bounds.size.width;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth - space, 0, imgWidth)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth, 0, -labWidth - space)];
            break;
        }
        case OrientationType_V_IMG_TEXT:{
             //图上字下
            CGFloat space = self.spacing * 0.5;
            CGFloat imgWidth = self.imageView.bounds.size.width;
            CGFloat imgHeight = self.imageView.bounds.size.height;
            CGFloat labWidth = self.titleLabel.bounds.size.width;
            CGFloat labHeight = self.titleLabel.bounds.size.height;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, -imgHeight - space, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(-labHeight - space, 0, 0, -labWidth)];
            break;
        }
        case OrientationType_V_TEXT_IMG:{
            //图下字上
            CGFloat space = self.spacing * 0.5;
            CGFloat imgWidth = self.imageView.bounds.size.width;
            CGFloat imgHeight = self.imageView.bounds.size.height;
            CGFloat labWidth = self.titleLabel.bounds.size.width;
            CGFloat labHeight = self.titleLabel.bounds.size.height;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight + space, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(labHeight + space, 0, 0, -labWidth)];

            break;
        }
            
        default:
            break;
    }
}

@end
