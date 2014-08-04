//
//  HYZViewController.m
//  UIPikerViewTest
//
//  Created by hanyazhou on 14-8-4.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZViewController.h"

@interface HYZViewController ()

@end

@implementation HYZViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *string =[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"UIPickerView" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];

    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    _categoryArray = [[NSArray alloc] initWithArray:dic[@"message"][@"data"]];
    
    NSInteger selecteIndex = [self.pickerView selectedRowInComponent:0];

    _contentArray = [[NSArray alloc] initWithArray:dic[@"message"][@"data"][selecteIndex][@"xxq"]];
    _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 64, 320, 400)];
    _pickerView.showsSelectionIndicator = YES;
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    [self.view addSubview:_pickerView];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    switch (component) {
        case 0:
        {
        return _categoryArray.count;
        }
            break;
        case 1:
            return _contentArray.count;
            break;
        default:
            return 0;
            break;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    switch (component) {
        case 0:
        {
        return _categoryArray[row][@"name"];
        }
            break;
        case 1:
        {
        return _contentArray[row][@"name"];
        }
            break;
            
        default:
            return @"";
            break;
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (component) {
        case 0:
        {
        
        NSInteger selecteIndex = [pickerView selectedRowInComponent:0];
        
        _contentArray = _categoryArray[selecteIndex][@"xxq"];
        
        [pickerView reloadComponent:1];
        [pickerView selectRow:0 inComponent:1 animated:YES];
        
        }
            break;
        case 1:
        {
        
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
