//
//  ViewController.m
//  GXK
//
//  Created by 七 on 15/9/1.
//  Copyright (c) 2015年 七. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    HJCheckBox *_check2 = [[HJCheckBox alloc] initWithDelegate:self];
    _check2.frame = CGRectMake(20, 70, 80, 40);
    [_check2 setTitle:@"iOS" forState:UIControlStateNormal];
    [_check2 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [_check2.titleLabel setFont:[UIFont boldSystemFontOfSize:13.0f]];
    [self.view addSubview:_check2];
    [_check2 release];

}

#pragma mark - QCheckBoxDelegate

- (void)didSelectedCheckBox:(HJCheckBox *)checkbox checked:(BOOL)checked {
    NSLog(@"did tap on CheckBox:%@ checked:%d", checkbox.titleLabel.text, checked);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
