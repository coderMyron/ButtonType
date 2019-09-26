//
//  MYButtonV.m
//  ButtonType
//
//  Created by Myron on 2019/9/26.
//  Copyright © 2019 Myron. All rights reserved.
//

#import "MYButtonV.h"

@implementation MYButtonV

- (void)layoutSubviews{
    [super layoutSubviews];
    
    //设置图片位置
    CGRect rect = self.imageView.frame;
    rect.origin.y = 0;
    self.imageView.frame = rect;
//    self.imageView.backgroundColor = [UIColor greenColor];
    
    CGPoint center = self.imageView.center;
    center.x = self.frame.size.width * 0.5;
    self.imageView.center = center;
    
    //设置文字位置
    CGRect titleRect = self.titleLabel.frame;
    titleRect.origin.y = self.frame.size.height - self.titleLabel.frame.size.height;
    self.titleLabel.frame = titleRect;
//    self.titleLabel.backgroundColor = [UIColor redColor];
//    [self sizeToFit];
    CGPoint titleCenter = self.titleLabel.center;
    titleCenter.x = self.frame.size.width * 0.5;
    self.titleLabel.center = titleCenter;
}

@end
