//
//  MYButton.h
//  ButtonType
//
//  Created by Myron on 2019/9/25.
//  Copyright © 2019 Myron. All rights reserved.
//
#pragma mark - UIButton图片文字上下左右显示

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,OrientationType){
    OrientationType_H_IMG_TEXT,//水平图片文字
    OrientationType_H_TEXT_IMG,//水平文字图片
    OrientationType_V_IMG_TEXT,//垂直图片文字
    OrientationType_V_TEXT_IMG //垂直文字图片
};


@interface MYButtonHV : UIButton

@property(nonatomic,assign) OrientationType orientationType;//图片文字方向

@property(nonatomic,assign) CGFloat spacing;//图片文字间隔

@end

NS_ASSUME_NONNULL_END
