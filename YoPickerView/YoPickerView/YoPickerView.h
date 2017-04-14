//
//  YoPickerView.h
//  YoPickerView
//
//  Created by VD-Dragon on 17/4/14.
//  Copyright © 2017年 VD-Dragon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, YoPickerViewType){
    YoNumbersPickerView,
    YoTextPickerView,
    
};

@interface YoPickerView : UIView

+ (void)showNumericalPickerViewWithMaxValue:(int)maxValue
                               withMinValue:(int)minValue
                            withPreSelected:(int)preSelected
                            completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithMaxValue:(int)maxValue
                               withMinValue:(int)minValue
                            completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithValues:(NSMutableArray *)values
                          completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showNumericalPickerViewWithValues:(NSMutableArray *)values
                          withPreSelected:(int)preSelected
                          completionBlock:(void (^)(int selectedValue))completionBlock;

+ (void)showTextPickerViewWithValues:(NSMutableArray *)values
                     completionBlock:(void (^)(NSString *selectedValue))completionBlock;

+ (void)showTextPickerViewWithValues:(NSMutableArray *)values
                        withSelected:(NSString *)selected
                     completionBlock:(void (^)(NSString *selectedValue))completionBlock;

@end
