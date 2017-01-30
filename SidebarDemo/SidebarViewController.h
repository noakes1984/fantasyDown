//
//  SidebarViewController.h
//  SidebarDemo
//
//  Created by Simon on 29/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SidebarViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UIButton *fantasyButton;
@property (strong, nonatomic) IBOutlet UILabel *addLeague;
@property (strong, nonatomic) IBOutlet UIButton *bottomButton;
//@property (strong, nonatomic) IBOutlet UILabel *addLeague;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (strong, nonatomic) IBOutlet UIImageView *topImage;

@end
