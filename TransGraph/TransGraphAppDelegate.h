//
//  TransGraphAppDelegate.h
//  TransGraph
//
//  Created by Automne on 11/11/17.
//  Copyright 2011年 Automne. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TransGraphViewController;

@interface TransGraphAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TransGraphViewController *viewController;

@end
