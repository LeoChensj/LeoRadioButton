//
//  LeoRadioButton.m
//  LeoRadioButtonDemo
//
//  Created by 陈仕军 on 16/12/14.
//  Copyright © 2016年 Leo.Chen. All rights reserved.
//

#import "LeoRadioButton.h"

@implementation LeoRadioButton

- (instancetype)init
{
    if(self = [super init])
    {
        [self initialize];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self initialize];
    }
    
    return self;
}

- (void)addLeoRadioButtonChangeBlock:(LeoRadioButtonChangeBlock)block
{
    self.block = block;
}

- (void)initialize
{
    _imgvRadio = [[UIImageView alloc] init];
    _imgvRadio.clipsToBounds = YES;
    _imgvRadio.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:_imgvRadio];
}

- (void)setNormalImage:(UIImage *)normalImage
{
    _normalImage = normalImage;
    
    CGSize imageSize = normalImage.size;
    _imgvRadio.frame = CGRectMake(0, 0, imageSize.width, imageSize.height);
    
    if(_on==NO)
    {
        _imgvRadio.image = normalImage;
    }
}

- (void)setSelectImage:(UIImage *)selectImage
{
    _selectImage = selectImage;
    
    if(_on)
    {
        _imgvRadio.image = selectImage;
    }
}

- (void)setOn:(BOOL)on
{
    _on = on;
    
    if(on)
    {
        _imgvRadio.image = _selectImage;
    }
    else
    {
        _imgvRadio.image = _normalImage;
    }
}




#pragma mark - Touch
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.on = !_on;
    
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    
    if(self.block)
    {
        self.block(self, self.on);
    }
}





@end
