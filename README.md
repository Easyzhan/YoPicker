# YoPicker
项目中用到的pickerView抽离出来
### 用法:
    NSMutableArray *valuesArray = [NSMutableArray arrayWithArray:@[@"外婆烤肉", @"外婆红烧肉" , @"外婆烤鱼", @"外婆家"]];
    [YoPickerView showTextPickerViewWithValues:valuesArray withSelected:valuesArray[3] completionBlock:^(NSString *selectedValue) {
        [sender setTitle:selectedValue forState:UIControlStateNormal];
    }];
![image](http://ww3.sinaimg.cn/large/006tNc79gy1femo9ec6wzj30ku12a75j.jpg)

不要脸,这图容易加载不出来
http://ww3.sinaimg.cn/large/006tNc79gy1femo9ec6wzj30ku12a75j.jpg
