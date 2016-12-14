//
//  LeoRadioButton.h
//  LeoRadioButtonDemo
//
//  Created by 陈仕军 on 16/12/14.
//  Copyright © 2016年 Leo.Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LeoRadioButton;
typedef void(^LeoRadioButtonChangeBlock)(LeoRadioButton *radioButton, BOOL on);

@interface LeoRadioButton : UIControl

@property (nonatomic, strong, readonly)UIImageView *imgvRadio;

@property (nonatomic, strong)UIImage *normalImage;
@property (nonatomic, strong)UIImage *selectImage;

/*
 点击按钮回调
 */
@property (nonatomic, strong)LeoRadioButtonChangeBlock block;

@property (nonatomic, assign)BOOL on;//是否选中


- (void)addLeoRadioButtonChangeBlock:(LeoRadioButtonChangeBlock)block;

@end
