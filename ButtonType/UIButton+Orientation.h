//
//  UIButton+Orientation.h
//  ButtonType
//
//  Created by Myron on 2019/9/25.
//  Copyright © 2019 Myron. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Orientation)

//垂直图上字下
- (void)verticalImageAndTitle:(CGFloat)spacing;

//垂直图下字上
- (void)verticalTitleAndImage:(CGFloat)spacing;

//水平图左字右
- (void)horizontalImageAndTitle:(CGFloat)spacing;

//水平图右字左
- (void)horizontalTitleAndImage:(CGFloat)spacing;

@end

NS_ASSUME_NONNULL_END
