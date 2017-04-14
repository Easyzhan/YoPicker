//
//  ViewController.m
//  YoPickerView
//
//  Created by VD-Dragon on 17/4/14.
//  Copyright © 2017年 VD-Dragon. All rights reserved.
//

#import "ViewController.h"
#import "YoPickerView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *bbb = [UIButton new];
    bbb.frame = CGRectMake(100, 100, 100, 60);
    [bbb setTitle:@"ccc" forState:UIControlStateNormal];
    bbb.backgroundColor = [UIColor redColor];
    [self.view addSubview:bbb];
    [bbb addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}



- (void)click:(UIButton *)sender{
    NSMutableArray *valuesArray = [NSMutableArray arrayWithArray:@[@"外婆烤肉", @"外婆红烧肉" , @"外婆烤鱼", @"外婆家"]];
    

//不带默认值的方法
//    [YoPickerView showTextPickerViewWithValues:valuesArray completionBlock:^(NSString *selectedValue) {
//       
//        NSLog(@"---%@",selectedValue);
//        [sender setTitle:selectedValue forState:UIControlStateNormal];
//    }];
//    带默认值的方法
    [YoPickerView showTextPickerViewWithValues:valuesArray withSelected:valuesArray[3] completionBlock:^(NSString *selectedValue) {
        [sender setTitle:selectedValue forState:UIControlStateNormal];
    }];
}

@end
