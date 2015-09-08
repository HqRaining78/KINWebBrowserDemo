//
//  ViewController.m
//  KINWebBrowserDemo
//
//  Created by IOF－IOS2 on 15/9/8.
//  Copyright (c) 2015年 IOF－IOS2. All rights reserved.
//

#import "ViewController.h"
#import "KINWebBrowserViewController.h"

static NSString *const defaultAddress = @"https://www.baidu.com";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    button.frame = CGRectMake(15, 80, [UIScreen mainScreen].bounds.size.width-30, 40);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction
{
    KINWebBrowserViewController *webBrowser = [KINWebBrowserViewController webBrowser];
    webBrowser.tintColor = [UIColor whiteColor];
    webBrowser.barTintColor = [UIColor colorWithRed:102.0f/255.0f green:204.0f/255.0f blue:51.0f/255.0f alpha:1.0f];
    
    webBrowser.showToolBar = NO;
    self.navigationController.toolbarHidden = YES;
    
    [self.navigationController pushViewController:webBrowser animated:YES];
    [webBrowser loadURLString:defaultAddress];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
