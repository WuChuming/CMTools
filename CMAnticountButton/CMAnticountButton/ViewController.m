//
//  ViewController.m
//  CMAnticountButton
//
//  Created by shawn on 2017/5/4.
//  Copyright © 2017年 shawn. All rights reserved.
//

#import "ViewController.h"
#import "CMAntiCountButton.h"

@interface ViewController ()

@property (nonatomic, strong) CMAntiCountButton *countingButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CGRect buttonFrame = CGRectMake(0, 0,100,43);
    self.countingButton =[CMAntiCountButton setAntiButtonWithBackGroundColor:[UIColor yellowColor] frame:buttonFrame OnView:self.view ForTarget:self action:@selector(getCode:) charactersColor:[UIColor whiteColor]];
    self.countingButton.center = self.view.center;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)getCode:(CMAntiCountButton *)button{

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
