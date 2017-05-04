//
//  AntiCountButton.h
//  YiKu
//
//  Created by WuChuMing on 16/9/2.
//  Copyright © 2016年 ZhaoShang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMAntiCountButton : UIButton
/*
 * 类方法生成倒数按键
 * 参数一：按键背景色
 * 参数二：按键尺寸
 * 参数三：显示父视图
 * 参数四：触发方法对象
 * 参数五：触发方法
 * 参数六：文字颜色
 *
 */
+ (CMAntiCountButton *)setAntiButtonWithBackGroundColor:(UIColor *)color frame:(CGRect)frame OnView:(UIView *)view ForTarget:(id)target action:(SEL)action charactersColor:(UIColor *)CharacterColor;

/*
 * 案件处罚倒数
 */
//- (void)buttonClick;

@end
