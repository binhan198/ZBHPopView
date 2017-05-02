//
//  ViewController.m
//  ZBHPopView
//
//  Created by 周彬涵 on 2017/5/2.
//  Copyright © 2017年 周彬涵. All rights reserved.
//

#import "ViewController.h"
#import "ZBHPopAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(nextPage)];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"显示覆盖" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    //使用覆盖view
    [ZBHPopAdapter setContentColor:[UIColor colorWithWhite:0 alpha:0.5]];
    [ZBHPopAdapter setTouchBlock:^(Class<ZBHPopAdapterProtocol> pvClass) {
        [pvClass hidePopView];
    }];
}

- (void)btnClicked
{
    [ZBHPopAdapter showPopView];
}

- (void)nextPage
{
    [self.navigationController pushViewController:[[self class] new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{

}

@end
