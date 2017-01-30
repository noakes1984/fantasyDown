//
//  MapViewController.h
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YOSSocial.h"
#import "SWRevealViewController.h"
#import <pop/POP.h>
#import "PhotoViewController.h"
#import "PlayerTableViewCell.h"
#import "MapViewController.h"

@interface MapViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    @public
    NSString *_oneLeagueKey;
    NSString *_oneLeagueId;
    NSString *finalKey;
    NSString *_key;
    int oneTime;
    
}


- (void)setOneLeagueKey:(NSString *)oneLeagueKey;
- (void)setOneLeagueId:(NSString *)oneLeagueId;

//@property (readwrite, nonatomic) int oneTime;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (nonatomic, retain) UITableView *recentSearchesTable;


@property (strong, nonatomic) UILabel *leagueLabel;
@property (strong, nonatomic) UILabel *firstMatchupOne;
@property (strong, nonatomic) UILabel *firstMatchupTwo;
@property (strong, nonatomic) UILabel *firstMatchupPlayerOneScore;
@property (strong, nonatomic) UILabel *firstMatchupPlayerTwoScore;

@property (strong, nonatomic) UILabel *leagueLabel2;
@property (strong, nonatomic) UILabel *firstMatchupOne2;
@property (strong, nonatomic) UILabel *firstMatchupTwo2;
@property (strong, nonatomic) UILabel *firstMatchupPlayerOneScore2;
@property (strong, nonatomic) UILabel *firstMatchupPlayerTwoScore2;

@property (strong, nonatomic) UIButton* testButn;

@property (strong, nonatomic) UIButton* testButn2;


@property (strong, nonatomic) NSString *finalKey;
@property (strong, nonatomic) NSString *oneLeagueKey;

@property (nonatomic, strong) NSString *key;




//@property (strong, nonatomic) NSString *key;






@property (nonatomic, strong) YOSSession *session;
@property (nonatomic, strong) NSArray *thisArray;


@property (nonatomic, retain) NSString *oneLeagueId;


@property (nonatomic, strong) NSString *keyTwo;

@property BOOL first;

@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) NSArray *position;
@property (nonatomic, strong) NSArray *playerPosition;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) NSString *teamId;





@end
