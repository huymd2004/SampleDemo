//
//  ViewController.m
//  SampleDemo
//
//  Created by Mac Dang Huy on 10/22/14.
//  Copyright (c) 2014 Mac Dang Huy. All rights reserved.
//

#import "ViewController.h"
#import "viewDemo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    viewDemo *view = [[viewDemo alloc] initWithFrame:CGRectMake(10, 80, 300, 35)];
//    view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showTap:(id)sender {
    
    self.constraitHeightView.constant = 0;
    [self.view updateConstraints];
}

- (IBAction)resizeView:(id)sender {
    
    CGRect frame = self.testView.frame;
    frame.size.height = 280;
    self.testView.frame = frame;
    [self.testView setNeedsDisplay];
}
@end
