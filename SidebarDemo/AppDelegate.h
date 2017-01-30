//
//  AppDelegate.h
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "YOSSocial.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) YOSSession *session;
@property (nonatomic, readwrite, strong) NSMutableDictionary *oauthResponse;
@property BOOL launchDefault;


- (void)createYahooSession;
- (void)handlePostLaunch;
@end
