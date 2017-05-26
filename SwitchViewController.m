//
//  SwitchViewController.m
//  ViewSwitcher
//
//  Created by Vasilii on 26.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Освобождает все неиспользуемые кешированные данные, изображения и др.
    if (self.blueViewController.view.superview == nil) { self.blueViewController = nil;
    }else{
        self.yellowViewController = nil;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)switchViews:(id)sender {
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController =
            [[YellowViewController alloc] init];
        }
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
        
    }else{
        if (self.blueViewController == nil) {
            self.blueViewController =
            [[BlueViewController alloc] init];
        }
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

@end
