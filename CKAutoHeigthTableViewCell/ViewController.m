//
//  ViewController.m
//  CKAutoHeigthTableViewCell
//
//  Created by  泛达 on 16/4/6.
//  Copyright © 2016年 CK. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

static UIEdgeInsets const kPadding = {0, 0, 0 , 0};

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"RootViewController";
    
    [self setUpSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private method

- (void)setUpSubviews {

    //next
    UIButton *nextCtr = [[UIButton alloc] init];
    nextCtr.backgroundColor = [UIColor cyanColor];
    [nextCtr setTitle:@"NextViewController" forState:UIControlStateNormal];
    [nextCtr addTarget:self action:@selector(pushToNextViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextCtr];
    [nextCtr mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.edges.equalTo(self.view).width.insets(kPadding);
    }];

}

- (void)pushToNextViewController {
    
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
    
}



@end
