//
//  BViewController.m
//  HelloDelegate
//
//  Created by CMac on 15/8/24.
//  Copyright (c) 2015年 CaiMac. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController
@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"PageB";
}


//使用Delegate代理AViewController的行为
-(IBAction)changeColorAction:(id)sender{
    [delegate changeBgColorFromPageB:self withcolor:[UIColor grayColor]];
    [[self navigationController] popViewControllerAnimated:YES];
    


}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
