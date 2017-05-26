//
//  SwitchViewController.h
//  ViewSwitcher
//
//  Created by Vasilii on 26.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YellowViewController;
@class BlueViewController;


@interface SwitchViewController : UIViewController

@property(strong, nonatomic) YellowViewController *yellowViewController;
@property(strong, nonatomic) BlueViewController *blueViewController;

-(IBAction)switchViews:(id)sender;

@end
