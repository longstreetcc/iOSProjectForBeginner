//
//  AViewController.m
//  HelloDelegate
//
//  Created by CMac on 15/8/24.
//  Copyright (c) 2015年 CaiMac. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

-(void)go{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    BViewController *_BViewController = [storyboard instantiateViewControllerWithIdentifier:@"BViewController"];
    _BViewController.delegate = self;
    [[self navigationController] pushViewController:_BViewController animated:YES];
    _BViewController = nil;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"PageA";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"goPageB" style:UIBarButtonItemStylePlain target:self action:@selector(go)];
}



-(void) changeBgColorFromPageB:(BViewController*)view withcolor:(UIColor*)color{
    [self.view setBackgroundColor: color];
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
