//
//  AppDelegate.h
//  ViewSwitcher
//
//  Created by Vasilii on 26.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SwitchViewController * switchViewController;

@end

