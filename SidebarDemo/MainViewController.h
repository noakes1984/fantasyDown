//
//  ViewController.h
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "YOSSocial.h"
#import <pop/POP.h>
#import <Parse/Parse.h>



@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (nonatomic, strong) YOSSession *session;

@property (strong, nonatomic) UIButton* testButnFirst;
@property (strong, nonatomic) UIButton* testButnSecond;
@property (strong, nonatomic) UIButton* testButnThird;

//@property (strong, nonatomic) UIView *popup;





-(IBAction)runOauth:(id)sender;


@end
