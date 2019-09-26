//
//  ButtonContentRect.m
//  ButtonType
//
//  Created by Myron on 2019/9/26.
//  Copyright © 2019 Myron. All rights reserved.
//

#import "ButtonContentRect.h"

@implementation ButtonContentRect

static CGFloat radio = 0.3;

- (void)setVertical:(BOOL)vertical{
    _vertical = vertical;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    //contentRect为外面设置的button的frame值
    if (self.vertical) {
        return CGRectMake(0, 0, contentRect.size.width, contentRect.size.height * radio);
    }else{
        return contentRect;
    }
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    //contentRect为外面设置的button的frame值
    if (self.vertical) {
        return CGRectMake(0, contentRect.size.height * radio, contentRect.size.width, contentRect.size.height * (1 - radio));
    }else{
        return contentRect;
    }
}

@end
