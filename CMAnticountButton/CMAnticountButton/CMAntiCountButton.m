//
//  AntiCountButton.m
//  YiKu
//
//  Created by WuChuMing on 16/9/2.
//  Copyright © 2016年 ZhaoShang. All rights reserved.
//

#import "CMAntiCountButton.h"

#define CountNum 60

@interface CMAntiCountButton ()
{
    NSInteger countNumber;
}

@property (nonatomic, strong) NSTimer *AntiCounttimer;

@end

@implementation CMAntiCountButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (CMAntiCountButton *)setAntiButtonWithBackGroundColor:(UIColor *)color frame:(CGRect)frame OnView:(UIView *)view ForTarget:(id)target action:(SEL)action charactersColor:(UIColor *)CharacterColor
{
    CMAntiCountButton *button  = [[CMAntiCountButton alloc] initWithFrame:frame];
    button.backgroundColor = color;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:CharacterColor forState:0];

    [view addSubview:button];
    return button;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        countNumber = CountNum;
        self.backgroundColor = [UIColor orangeColor];
        [self setTitle:@"获取验证码" forState:0];
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        [self setTitleColor:[UIColor blackColor] forState:0];
        [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.titleLabel sizeToFit];
    }
    return self;
}

- (void)buttonClick
{
    self.userInteractionEnabled = NO;
    [self.AntiCounttimer setFireDate:[NSDate distantPast]];
}

- (NSTimer *)AntiCounttimer
{
    if (!_AntiCounttimer) {
        _AntiCounttimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(AntiCounttimerMethod:) userInfo:nil repeats:YES];
    }
   return _AntiCounttimer;
}
//
- (void)AntiCounttimerMethod:(UIButton *)btn
{
    countNumber --;
    if (countNumber > 0){
     [self setTitleColor:[UIColor lightGrayColor] forState:0];
     [self setTitle:[NSString stringWithFormat:@"%ld S",(long)countNumber]forState:UIControlStateNormal];
    } else {
        countNumber = CountNum;
        [self.AntiCounttimer setFireDate:[NSDate distantFuture]];
        self.userInteractionEnabled = YES;
        [self setTitleColor:[UIColor whiteColor] forState:0];
        [self setTitle:@"获取验证码" forState:0];
        
    }
}


@end
