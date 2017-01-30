//
//  PhotoViewController.h
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"
#import "SidebarViewController.h"
#import <POP/POP.h>
#import "RNGridMenu.h"

@interface ScoutAPlayer : UITableViewController < UITableViewDelegate, UITableViewDataSource, RNGridMenuDelegate>

- (void)showInViewController:(UIViewController *)parentViewController center:(CGPoint)center;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;

@property (nonatomic, strong) NSArray *players;

@property (strong, nonatomic) UIButton* leagueButton;
@property (strong, nonatomic) UIButton* qbPositionButton;
@property (strong, nonatomic) UIButton* rbPositionButton;
@property (strong, nonatomic) UIButton* wrPositionButton;
@property (strong, nonatomic) UIButton* tePositionButton;
@property (strong, nonatomic) UIButton* dePositionButton;

@property (strong, nonatomic) UIButton* smallBlackOne;
@property (strong, nonatomic) UIButton* smallBlackOne2;
@property (strong, nonatomic) UIButton* smallBlackOne3;
@property (strong, nonatomic) UIButton* smallBlackOne4;
@property (strong, nonatomic) UIButton* smallBlackOne5;

@property (strong, nonatomic) UIButton* smallGreyOne;
@property (strong, nonatomic) UIButton* smallGreyOne2;
@property (strong, nonatomic) UIButton* smallGreyOne3;
@property (strong, nonatomic) UIButton* smallGreyOne4;
@property (strong, nonatomic) UIButton* smallGreyOne5;

@property (strong, nonatomic) UIButton* addStatSmall;


@property (strong, nonatomic) UIButton* viewResults;


@property (strong, nonatomic) UILabel *fromLabel;
@property (strong, nonatomic) UILabel *fromLabelQB;
@property (strong, nonatomic) UILabel *fromLabelRB;
@property (strong, nonatomic) UILabel *fromLabelWR;
@property (strong, nonatomic) UILabel *fromLabelTE;
@property (strong, nonatomic) UILabel *fromLabelDE;

@property (strong, nonatomic) UIImageView *testButnFirst;
@property (strong, nonatomic) UIImageView *darkRectangle;

@property (nonatomic, strong) NSString *positionString;
@property (nonatomic, strong) NSString *whatBlock;



@end
