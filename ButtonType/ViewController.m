//
//  ViewController.m
//  ButtonType
//
//  Created by Myron on 2019/9/24.
//  Copyright © 2019 Myron. All rights reserved.
//

#import "ViewController.h"
#import "MYButtonHV.h"
#import "UIButton+Orientation.h"
#import "MYButtonV.h"
#import "ButtonContentRect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"seting"] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(0, 100, 80, 50);
    btn.adjustsImageWhenHighlighted = NO;
    
//    btn.titleLabel.backgroundColor = [UIColor greenColor];
//    btn.imageView.backgroundColor = [UIColor greenColor];
    
    //图右字左
//    CGFloat imgWidth = btn.imageView.bounds.size.width;
//    CGFloat labWidth = btn.titleLabel.bounds.size.width;
//    [btn setImageEdgeInsets:UIEdgeInsetsMake(0, labWidth, 0, -labWidth)];
//    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, 0, imgWidth)];
    
    //图上字下
//    CGFloat imgWidth = btn.imageView.bounds.size.width;
//    CGFloat imgHeight = btn.imageView.bounds.size.height;
//    CGFloat labWidth = btn.titleLabel.bounds.size.width;
//    CGFloat labHeight = btn.titleLabel.bounds.size.height;
//    [btn setImageEdgeInsets:UIEdgeInsetsMake(-labHeight, 0, 0, -labWidth)];
//    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, -imgHeight, 0)];
    
    //图下字上
    CGFloat imgWidth = btn.imageView.bounds.size.width;
    CGFloat imgHeight = btn.imageView.bounds.size.height;
    CGFloat labWidth = btn.titleLabel.bounds.size.width;
    CGFloat labHeight = btn.titleLabel.bounds.size.height;
    [btn setImageEdgeInsets:UIEdgeInsetsMake(labHeight, 0, 0, -labWidth)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -imgWidth, imgHeight, 0)];
    
    
    
    [self.view addSubview:btn];
    
    MYButtonHV *myBtn = [MYButtonHV buttonWithType:UIButtonTypeCustom];
    [myBtn setTitle:@"按钮" forState:UIControlStateNormal];
    [myBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [myBtn setImage:[UIImage imageNamed:@"seting"] forState:UIControlStateNormal];
    myBtn.backgroundColor = [UIColor blueColor];
    myBtn.adjustsImageWhenHighlighted = NO;
    
    //位置在哪都可以，都是下次runloop渲染时方向属性已经设置了
//    myBtn.frame = CGRectMake(0, 180, 80, 50);
    [self.view addSubview:myBtn];
    
//    [myBtn setOrientationType:OrientationType_V_TEXT_IMG];
    [myBtn setOrientationType:OrientationType_V_IMG_TEXT];
//    [myBtn setOrientationType:OrientationType_H_TEXT_IMG];
//    [myBtn setOrientationType:OrientationType_H_IMG_TEXT];
    [myBtn setSpacing:10];
    myBtn.frame = CGRectMake(0, 180, 80, 50);
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"按钮" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"seting"] forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor blueColor];
    //调用frame一定要先设置
    btn2.frame = CGRectMake(0, 240, 80, 50);
    btn2.adjustsImageWhenHighlighted = NO;
    [self.view addSubview:btn2];

    //要先设置frame，不然位置会有问题
//    [btn2 verticalImageAndTitle:10];
//    [btn2 verticalTitleAndImage:10];
//    [btn2 horizontalImageAndTitle:10];
    [btn2 horizontalTitleAndImage:10];
    
    MYButtonV *btn3 = [MYButtonV buttonWithType:UIButtonTypeCustom];
    [btn3 setTitle:@"按钮" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"seting"] forState:UIControlStateNormal];
    btn3.backgroundColor = [UIColor blueColor];
    btn3.frame = CGRectMake(0, 340, 80, 50);
    btn3.adjustsImageWhenHighlighted = NO;
    [self.view addSubview:btn3];
    
    ButtonContentRect *btn4 = [ButtonContentRect buttonWithType:UIButtonTypeCustom];
    [btn4 setTitle:@"按钮" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"seting"] forState:UIControlStateNormal];
    btn4.backgroundColor = [UIColor blueColor];
    [btn4 setVertical:YES];
    btn4.frame = CGRectMake(0, 440, 80, 50);
    btn4.adjustsImageWhenHighlighted = NO;
    [self.view addSubview:btn4];
    btn4.titleLabel.textAlignment = NSTextAlignmentCenter;
    btn4.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
}


@end
