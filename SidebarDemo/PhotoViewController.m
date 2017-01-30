//
//  PhotoViewController.m
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end


@implementation PhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (NSString *)oneLeagueKey
{
    return oneLeagueKey;
}

- (void)setOneLeagueKey:(NSString *)oneLeagueKey
{
    oneLeagueKey = self.oneLeagueKey;
}

- (void) firstBlock
{
    
    UIButton* testButnTry = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry setFrame:CGRectMake(23, 0, 275, 195 )];
    
    [testButnTry setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry];
    
    self.testButn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn setFrame:CGRectMake(163, 130, 130, 37)];
    
    [self.testButn setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn];
    
    UIButton* testButn = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn setFrame:CGRectMake(27, 130, 130, 37)];
    
    [testButn setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn];
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 25, 40, 15)];
    imgView.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView];
    
    UIImageView *seeLeague = [[UIImageView alloc] initWithFrame:CGRectMake(230, 25, 60, 19)];
    seeLeague.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague];
    
    UIImageView *greenButton = [[UIImageView alloc] initWithFrame:CGRectMake(130, 75, 30, 24)];
    greenButton.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton];
    
    UIImageView *redButton = [[UIImageView alloc] initWithFrame:CGRectMake(160, 75, 30, 24)];
    redButton.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton];
    
}

- (void) secondBlock
{
    ///////////////////////////
    
    UIButton* testButnTry2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry2 setFrame:CGRectMake(23, 175, 275, 195)];
    
    [testButnTry2 setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry2 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry2];
    
    
    self.testButn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn2 setFrame:CGRectMake(163, 305, 130, 37)];
    
    [self.testButn2 setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn2 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn2];
    
    UIButton* testButn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn2 setFrame:CGRectMake(27, 305, 130, 37)];
    
    [testButn2 setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn2 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn2];
    
    
    UIImageView *imgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 200, 40, 15)];
    imgView2.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView2];
    
    UIImageView *seeLeague2 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 200, 60, 19)];
    seeLeague2.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague2];
    
    UIImageView *greenButton2 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 250, 30, 24)];
    greenButton2.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton2];
    
    UIImageView *redButton2 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 250, 30, 24)];
    redButton2.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton2];
    
    
    
}

- (void) thirdBlock
{
    
    UIButton* testButnTry3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry3 setFrame:CGRectMake(23, 350, 275, 195)];
    
    [testButnTry3 setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry3 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry3];
    
    
    self.testButn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn3 setFrame:CGRectMake(163, 480, 130, 37)];
    
    [self.testButn3 setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn3 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn3];
    
    UIButton* testButn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn3 setFrame:CGRectMake(27, 480, 130, 37)];
    
    [testButn3 setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn3 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn3];
    
    
    UIImageView *imgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 375, 40, 15)];
    imgView3.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView3];
    
    UIImageView *seeLeague3 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 375, 60, 19)];
    seeLeague3.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague3];
    
    UIImageView *greenButton3 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 425, 30, 24)];
    greenButton3.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton3];
    
    UIImageView *redButton3 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 425, 30, 24)];
    redButton3.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton3];
    
    
}

- (void) fourthBlock
{
    
    UIButton* testButnTry4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry4 setFrame:CGRectMake(23, 525, 275, 195)];
    
    [testButnTry4 setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry4 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry4];
    
    
    self.testButn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn4 setFrame:CGRectMake(163, 655, 130, 37)];
    
    [self.testButn4 setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn4 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn4];
    
    UIButton* testButn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn4 setFrame:CGRectMake(27, 655, 130, 37)];
    
    [testButn4 setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testBun setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn4 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn4];
    
    
    UIImageView *imgView4 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 550, 40, 15)];
    imgView4.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView4];
    
    UIImageView *seeLeague4 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 550, 60, 19)];
    seeLeague4.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague4];
    
    UIImageView *greenButton4 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 600, 30, 24)];
    greenButton4.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton4];
    
    UIImageView *redButton4 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 600, 30, 24)];
    redButton4.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton4];
    
    
}

- (void) fifthBlock
{
    
    UIButton* testButnTry5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry5 setFrame:CGRectMake(23, 700, 275, 195)];
    
    [testButnTry5 setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry5 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry5];
    
    
    self.testButn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn5 setFrame:CGRectMake(163, 830, 130, 37)];
    
    [self.testButn5 setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn5 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn5];
    
    UIButton* testButn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn5 setFrame:CGRectMake(27, 830, 130, 37)];
    
    [testButn5 setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn5 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn5];
    
    
    UIImageView *imgView5 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 725, 40, 15)];
    imgView5.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView5];
    
    UIImageView *seeLeague5 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 725, 60, 19)];
    seeLeague5.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague5];
    
    UIImageView *greenButton5 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 775, 30, 24)];
    greenButton5.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton5];
    
    UIImageView *redButton5 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 775, 30, 24)];
    redButton5.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton5];
    
    
}

- (void) sixthBlock
{
    
    UIButton* testButnTry6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnTry6 setFrame:CGRectMake(23, 875, 275, 195)];
    
    [testButnTry6 setImage:[UIImage imageNamed:@"rectangle5x.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButnTry6 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnTry6];
    
    
    self.testButn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn6 setFrame:CGRectMake(163, 1005, 130, 37)];
    
    [self.testButn6 setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn2 setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn6 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn6];
    
    UIButton* testButn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButn6 setFrame:CGRectMake(27, 1005, 130, 37)];
    
    [testButn6 setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [testButn6 addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButn6];
    
    
    UIImageView *imgView6 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 900, 40, 15)];
    imgView6.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView6];
    
    UIImageView *seeLeague6 = [[UIImageView alloc] initWithFrame:CGRectMake(230, 900, 60, 19)];
    seeLeague6.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague6];
    
    UIImageView *greenButton6 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 950, 30, 24)];
    greenButton6.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton6];
    
    UIImageView *redButton6 = [[UIImageView alloc] initWithFrame:CGRectMake(160, 950, 30, 24)];
    redButton6.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton6];
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    /*
    UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    NSInteger viewcount= 4;
    for (int i = 0; i <viewcount; i++)
    {
        CGFloat y = i * self.view.frame.size.height;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, y,self.view.frame.size.width, 2000)];
        view.backgroundColor = [UIColor greenColor];
        [scrollview addSubview:view];
    }
    scrollview.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *viewcount);
    */
    

    [self firstBlock];
    [self secondBlock];
    //[self thirdBlock];
    //[self fourthBlock];
    //[self fifthBlock];
    //[self sixthBlock];


    
    //////////////////////
    //////////////////////
    //////////////////////
    
    
    
    
    MapViewController *obj = [[MapViewController alloc] init];
    //obj.whatIsSelected;  // implicitly calls [obj setVar:3]
    //obj.whatIsSelected;
    obj->oneTime = 3;
    
    int lastTime = obj;
    //NSLog(@"%@", oneTime);
    
    //self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 2000)];
    //self.scroll.scrollEnabled = YES;
    //[self.view addSubview:self.scroll];
   

    
    self.view.backgroundColor = [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:242.0f/255.0f alpha:1.0f];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
    [self getUserLeagueData];
    // Load image
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName]];
    [self.navigationItem setTitle:@"THE HUDDLE"];
    
    //[self loadView];
    
    
}

- (void)loadView
{
    CGRect fullScreenRect=[[UIScreen mainScreen] applicationFrame];
    self.scrollView=[[UIScrollView alloc] initWithFrame:fullScreenRect];
    self.scrollView.contentSize=CGSizeMake(300, 1070);
    
    // do any further configuration to the scroll view
    // add a view, or views, as a subview of the scroll view.
    
    // release scrollView as self.view retains it
    self.view=self.scrollView;
}




-(void)stayPressed:(UIButton *) sender {
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.testButn pop_addAnimation:sprintAnimation forKey:@"size"];
    
    
    
    if (sender.selected == YES) {
        sender.selected = NO;
    } else {
        sender.selected = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) getUserLeagueData
{
    self.session = [YOSSession sessionWithConsumerKey:@"dj0yJmk9eUQzMzBZcWFuVWhSJmQ9WVdrOWJVcHJWV0ZxTkdrbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD03NQ--"
                                    andConsumerSecret:@"02893ec94b1a60fae1c707e0ae35bc588bb0363c"
                                     andApplicationId:nil];
    //matthewnoakes.com
    //dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--
    //02893ec94b1a60fae1c707e0ae35bc588bb0363c
    
    //fantasydown.com
    //dj0yJmk9eUQzMzBZcWFuVWhSJmQ9WVdrOWJVcHJWV0ZxTkdrbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD03NQ--
    
    //853d099edccf9d00af741e28981d2167cb7c94a3
    
    BOOL hasSession = [self.session resumeSession];
    
    if(hasSession == FALSE) {
        //[self.session sendUserToAuthorizationWithCallbackUrl:@"http://matthewnoakes.com"];
       // NSLog(@"it didn't work");
    }else{
        NSLog(@"this is working right");
        YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
        
        NSString *leaguesView2 = [NSString stringWithFormat:@"select * from fantasysports.games where use_login=1 and game_key in ('359', 'nfl')"];
        [request query:leaguesView2 withDelegate:self];
    }
    
    return;
    
    /////////////////////////////////////////////
    
}




- (void)requestDidFinishLoading:(YOSResponseData *)request
{
    
    //THIS IS WHERE THE REQUEST IS PARSED
    
    //parse out the json data
    YOSResponseData *hello = request;
    
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:hello.data //1
                          options:kNilOptions
                          error:&error];
   
    
    
   NSLog(@"This is it. %@", json);
    
        NSDictionary *query = [json objectForKey:@"query"];
    NSDictionary *results = [query objectForKey:@"results"];
    
    //NSLog(@"%@", [NSNumber numberWithInt:1]);

    
 // NSLog(@"%@", json);

    
    if ( [[[json objectForKey:@"query"] objectForKey:@"count"] isEqualToNumber:[NSNumber numberWithInt:1]] && ![results isEqual:[NSNull null]]){
        
        YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
        
        NSString *matchupQuery = [NSString stringWithFormat:@"select * from fantasysports.leagues.scoreboard where league_key='%@'", [[results objectForKey:@"league"] valueForKey:@"league_key"]];
        
        //NSLog(@"%@", [[results objectForKey:@"league"] valueForKey:@"league_key"]);
        
        
        
        YOSResponseData *matchupData = [request query:matchupQuery];
        
        NSDictionary* matchupJson = [NSJSONSerialization
                                     JSONObjectWithData:matchupData.data
                                     options:kNilOptions
                                     error:&error];
        
        /////////////////////
        ////////////////////
        ////////////////////
        
        NSArray *leagues = [results objectForKey:@"league"];
        
        NSLog(@"%@", [leagues valueForKey:@"league_key"]);
        
        
        
        int i = 0;
        
        if ([leagues valueForKey:@"league_key"]) {
            
        
            YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
            
            NSString *matchupQuery = [NSString stringWithFormat:@"select * from fantasysports.leagues.scoreboard where league_key='%@'", [leagues valueForKey:@"league_key"]];
            
            
            
            YOSResponseData *matchupData = [request query:matchupQuery];
            
            NSDictionary* matchupJson = [NSJSONSerialization
                                         JSONObjectWithData:matchupData.data
                                         options:kNilOptions
                                         error:&error];
            
            //NSLog(@"LEAGUE DATA%@", matchupJson);
            // parsing json
            NSArray *matchups = [[[[[[matchupJson objectForKey:@"query"] objectForKey:@"results"] valueForKey:@"league"] objectForKey:@"scoreboard"] objectForKey:@"matchups"] objectForKey:@"matchup"];
            
            NSDictionary *team1;
            NSDictionary *team2;
            
            
            NSLog(@"%@", matchups);

            
            NSString *teamId;
            
            BOOL first;
            
            // first find user's matchup
            for (int m = 0; m < matchups.count; m++) {
                NSDictionary *matchup = [matchups objectAtIndex:m];
                NSArray *teams = [[matchup objectForKey:@"teams"] objectForKey:@"team"];
                //            bool isCurrentMatchup = false;
                for (int t = 0; t < teams.count; t++) {
                    NSDictionary *team = [teams objectAtIndex:t];
                    NSDictionary *manager = [[team objectForKey:@"managers"] objectForKey:@"manager"];
                    
                    if ([manager objectForKey:@"is_current_login"]) {
                        team1 = team;
                        teamId = [NSString stringWithFormat:@"%@",[team objectForKey:@"team_key"]];
                        if (t == 0) {
                            team2 = [teams lastObject];
                            
                            first = true;
                        } else {
                            team2 = [teams firstObject];
                            first = false;
                        }
                        
                        break;
                    }
                }
            }
            
            //NSDictionary *matchup = [matchups firstObject];
            
            NSString *teamName1 = [[[team1 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team" ] objectAtIndex:0] objectForKey:@"name"];
            NSString *teamPoints1 = [[team1 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:0] objectForKey:@"team_points"] objectForKey:@"total"];
            NSLog(@"%@ - %@", teamName1, teamPoints1);
            //NSString *firstThree = [teamPoints1 substringToIndex:3];
            
            NSString *teamName2 = [[[team2 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"name"];
            NSString *teamPoints2 = [[team2 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"team_points"] objectForKey:@"total"];
            //NSLog(@"%@", teamName1);
            
            NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
            NSArray *arr2 = [teamPoints2 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
            
            
            switch (i) {
                case 0:
                    //NSLog(@"%@", league);
                    _oneLeagueFirst = first;
                    _oneLeagueKeyId = teamId;
                    oneLeagueKey = [leagues valueForKey:@"league_key"];
                    self.leagueOneYahoo.font = [UIFont systemFontOfSize:20];
                    
                    
                    self.leagueOneYahoo.text = [leagues valueForKey:@"name"];
                    
                    //[@"abc xyz http://www.abc.com aaa bbb ccc" substringWithRange:NSMakeRange(8, 18)];
                    self.leagueOneYahooFirstTeam.text = teamName1;
                    self.leagueOneFirstTeamPoints.text = teamPoints1;
                    self.leagueOneYahooSecondTeam.text = teamName2;
                    self.leagueOneSecondTeamPoints.text = teamPoints2;
                    
                    
                    self.firstMatchupOne = [[UILabel alloc] initWithFrame:CGRectMake(90, 25, 57, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    self.firstMatchupOne.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                     alpha:1.0f];
                    self.firstMatchupOne.font = [UIFont systemFontOfSize:12];
                    
                    self.firstMatchupOne.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne sizeToFit];
                    [self.view addSubview:self.firstMatchupOne];
                    
                    
                    
                    self.leagueLabel = [[UILabel alloc] initWithFrame:CGRectMake(23, 93, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                 alpha:1.0f];
                    
                    self.leagueLabel.text= teamName1;
                    
                    [self.view addSubview:self.leagueLabel];
                    
                    
                    self.firstMatchupTwo = [[UILabel alloc] initWithFrame:CGRectMake(200, 103, 112, 35)];
                    self.firstMatchupTwo.text = teamName2;
                    self.firstMatchupTwo.font = [UIFont systemFontOfSize:12];
                    self.firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    self.firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                     alpha:1.0f];
                    
                    
                    [_firstMatchupTwo sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo];
                    
                    self.firstMatchupPlayerOneScore = [[UILabel alloc] initWithFrame:CGRectMake(124, 82, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    
                    
                    self.firstMatchupPlayerOneScore.text = arr[0];
                    self.firstMatchupPlayerOneScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore];
                    
                    
                    self.firstMatchupPlayerTwoScore = [[UILabel alloc] initWithFrame:CGRectMake(155, 67, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore.text = arr2[0];
                    self.firstMatchupPlayerTwoScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore];
                    
                    
                    
                    
                    //self.firstMatchupPlayerTwoScore;
                    
                    [self firstBlock];
                    
                    
                    break;
                    
                case 1:
                    self.twoLeagueFirst = first;
                    _twoLeagueKeyId = teamId;
                    self.twoLeagueKey = [leagues valueForKey:@"league_key"];
                    self.leagueTwoYahoo.font = [UIFont systemFontOfSize:12];
                    
                    self.leagueTwoYahoo.text = [leagues valueForKey:@"name"];
                    self.leagueTwoYahooFirstTeam.text = teamName1;
                    self.leagueTwoFirstTeamPoints.text = teamPoints1;
                    self.leagueTwoYahooSecondTeam.text = teamName2;
                    self.leagueTwoSecondTeamPoints.text = teamPoints2;
                    
                    self.firstMatchupOne2 = [[UILabel alloc] initWithFrame:CGRectMake(80, 197, 30, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    
                    //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                    
                    self.firstMatchupOne2.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne2 sizeToFit];
                    [self.view addSubview:self.firstMatchupOne2];
                    
                    
                    
                    self.leagueLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(33, 275, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel2.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel2.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                    
                    self.leagueLabel2.text= teamName1;
                    
                    
                    [self.view addSubview:self.leagueLabel2];
                    
                    
                    self.firstMatchupTwo2 = [[UILabel alloc] initWithFrame:CGRectMake(176, 275, 112, 35)];
                    self.firstMatchupTwo2.text = teamName2;
                    self.firstMatchupTwo2.font = [UIFont systemFontOfSize:12];
                    //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo2.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    [_firstMatchupTwo sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo2];
                    
                    self.firstMatchupPlayerOneScore2 = [[UILabel alloc] initWithFrame:CGRectMake(124, 242, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                    
                    
                    self.firstMatchupPlayerOneScore2.text = arr[0];
                    self.firstMatchupPlayerOneScore2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore2.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore2.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore2];
                    
                    
                    self.firstMatchupPlayerTwoScore2 = [[UILabel alloc] initWithFrame:CGRectMake(155, 242, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore2.text = arr2[0];
                    self.firstMatchupPlayerTwoScore2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore2.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore2.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore2];
                    
                    break;
                    
                    [self secondBlock];
                    
                case 2:
                    
                    self.threeLeagueFirst = first;
                    _threeLeagueKeyId = teamId;
                    self.threeLeagueKey = [leagues
                                           valueForKey:@"league_key"];
                    self.leagueThreeYahoo.font = [UIFont systemFontOfSize:12];
                    
                    self.leagueThreeYahoo.text = [leagues valueForKey:@"name"];
                    self.leagueThreeYahooFirstTeam.text = teamName1;
                    self.leagueThreeFirstTeamPoints.text = teamPoints1;
                    self.leagueThreeYahooSecondTeam.text = teamName2;
                    self.leagueThreeSecondTeamPoints.text = teamPoints2;
                    
                    self.firstMatchupOne3 = [[UILabel alloc] initWithFrame:CGRectMake(80, 369, 30, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    
                    //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                    
                    self.firstMatchupOne3.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne3 sizeToFit];
                    [self.view addSubview:self.firstMatchupOne3];
                    
                    
                    
                    self.leagueLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(33, 447, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel3.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel3.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                    
                    self.leagueLabel3.text= teamName1;
                    
                    
                    [self.view addSubview:self.leagueLabel3];
                    
                    
                    self.firstMatchupTwo3 = [[UILabel alloc] initWithFrame:CGRectMake(176, 447, 112, 35)];
                    self.firstMatchupTwo3.text = teamName2;
                    self.firstMatchupTwo3.font = [UIFont systemFontOfSize:12];
                    //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo3.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    [_firstMatchupTwo3 sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo3];
                    
                    self.firstMatchupPlayerOneScore2 = [[UILabel alloc] initWithFrame:CGRectMake(124, 414, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                    
                    
                    self.firstMatchupPlayerOneScore3.text = arr[0];
                    self.firstMatchupPlayerOneScore3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore3.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore3.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore3];
                    
                    
                    self.firstMatchupPlayerTwoScore3 = [[UILabel alloc] initWithFrame:CGRectMake(155, 414, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore3.text = arr2[0];
                    self.firstMatchupPlayerTwoScore3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore3.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore3.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore3];
                    
                    [self thirdBlock];
                    
                    break;
                    
                case 3:
                    
                    self.fourLeagueFirst = first;
                    _fourLeagueKeyId = teamId;
                    self.fourLeagueKey = [leagues valueForKey:@"league_key"];
                    self.leagueFourYahoo.font = [UIFont systemFontOfSize:12];
                    
                    self.leagueFourYahoo.text = [leagues valueForKey:@"name"];
                    self.leagueFourYahooFirstTeam.text = teamName1;
                    self.leagueFourFirstTeamPoints.text = teamPoints1;
                    self.leagueFourYahooSecondTeam.text = teamName2;
                    self.leagueFourSecondTeamPoints.text = teamPoints2;
                    
                    self.firstMatchupOne4 = [[UILabel alloc] initWithFrame:CGRectMake(90, 541, 30, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    
                    //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                    
                    self.firstMatchupOne4.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne4 sizeToFit];
                    [self.view addSubview:self.firstMatchupOne4];
                    
                    
                    
                    self.leagueLabel4 = [[UILabel alloc] initWithFrame:CGRectMake(33, 619, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel4.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel4.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                    
                    self.leagueLabel4.text= teamName1;
                    
                    
                    [self.view addSubview:self.leagueLabel4];
                    
                    
                    self.firstMatchupTwo4 = [[UILabel alloc] initWithFrame:CGRectMake(176, 619, 112, 35)];
                    self.firstMatchupTwo4.text = teamName2;
                    self.firstMatchupTwo4.font = [UIFont systemFontOfSize:12];
                    //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo4.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    [_firstMatchupTwo4 sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo4];
                    
                    self.firstMatchupPlayerOneScore4 = [[UILabel alloc] initWithFrame:CGRectMake(124, 586, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                    
                    
                    self.firstMatchupPlayerOneScore4.text = arr[0];
                    self.firstMatchupPlayerOneScore4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore4.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore4.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore4];
                    
                    
                    self.firstMatchupPlayerTwoScore4 = [[UILabel alloc] initWithFrame:CGRectMake(155, 586, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore4.text = arr2[0];
                    self.firstMatchupPlayerTwoScore4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore4.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore4.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore4];
                    
                    [self fourthBlock];
                    
                    break;
                    
                case 4:
                    
                    self.fiveLeagueFirst = first;
                    _fiveLeagueKeyId = teamId;
                    self.fiveLeagueKey = [leagues valueForKey:@"league_key"];
                    self.leagueFiveYahoo.font = [UIFont systemFontOfSize:12];
                    
                    self.leagueFiveYahoo.text = [leagues valueForKey:@"name"];
                    self.leagueFiveYahooFirstTeam.text = teamName1;
                    self.leagueFiveFirstTeamPoints.text = teamPoints1;
                    self.leagueFiveYahooSecondTeam.text = teamName2;
                    self.leagueFiveSecondTeamPoints.text = teamPoints2;
                    
                    self.firstMatchupOne5 = [[UILabel alloc] initWithFrame:CGRectMake(90, 713, 30, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    
                    //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                    
                    self.firstMatchupOne5.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne5 sizeToFit];
                    [self.view addSubview:self.firstMatchupOne5];
                    
                    
                    
                    self.leagueLabel5 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel5.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel5.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                    
                    self.leagueLabel5.text= teamName1;
                    
                    
                    [self.view addSubview:self.leagueLabel5];
                    
                    
                    self.firstMatchupTwo5 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                    self.firstMatchupTwo5.text = teamName2;
                    self.firstMatchupTwo5.font = [UIFont systemFontOfSize:12];
                    //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo5.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    [_firstMatchupTwo5 sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo5];
                    
                    self.firstMatchupPlayerOneScore5 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                    
                    
                    self.firstMatchupPlayerOneScore5.text = arr[0];
                    self.firstMatchupPlayerOneScore5.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore5.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore5.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore5];
                    
                    
                    self.firstMatchupPlayerTwoScore5 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore5.text = arr2[0];
                    self.firstMatchupPlayerTwoScore5.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore5.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore5.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore5];
                    
                    [self fifthBlock];
                    
                    break;
                    
                case 5:
                    
                    ////////////////////////
                    
                    
                    self.sixLeagueFirst = first;
                    _sixLeagueKeyId = teamId;
                    self.sixLeagueKey = [leagues valueForKey:@"league_key"];
                    self.leagueSixYahoo.font = [UIFont systemFontOfSize:12];
                    
                    self.leagueSixYahoo.text = [leagues valueForKey:@"name"];
                    self.leagueSixYahooFirstTeam.text = teamName1;
                    self.leagueSixFirstTeamPoints.text = teamPoints1;
                    self.leagueSixYahooSecondTeam.text = teamName2;
                    self.leagueSixSecondTeamPoints.text = teamPoints2;
                    
                    self.firstMatchupOne6 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    
                    //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                    
                    self.firstMatchupOne6.text = [leagues valueForKey:@"name"];
                    [self.firstMatchupOne6 sizeToFit];
                    [self.view addSubview:self.firstMatchupOne6];
                    
                    
                    
                    self.leagueLabel6 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                    //self.leagueLabel.text = @"Matthew Noakes";
                    self.leagueLabel6.font = [UIFont systemFontOfSize:12];
                    self.leagueLabel6.textAlignment = NSTextAlignmentCenter;
                    
                    self.leagueLabel6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                    
                    self.leagueLabel6.text= teamName1;
                    
                    
                    [self.view addSubview:self.leagueLabel6];
                    
                    
                    self.firstMatchupTwo6 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                    self.firstMatchupTwo6.text = teamName2;
                    self.firstMatchupTwo6.font = [UIFont systemFontOfSize:12];
                    //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                    
                    // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                    
                    self.firstMatchupTwo6.textAlignment = NSTextAlignmentCenter;
                    
                    self.firstMatchupTwo6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                      alpha:1.0f];
                    [_firstMatchupTwo6 sizeToFit];
                    [self.view addSubview:self.firstMatchupTwo6];
                    
                    self.firstMatchupPlayerOneScore6 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                    
                    //NSString *firstThree = [teamPoints1 substringToIndex:2];
                    
                    //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                    
                    
                    self.firstMatchupPlayerOneScore6.text = arr[0];
                    self.firstMatchupPlayerOneScore6.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerOneScore6.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerOneScore6.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerOneScore6];
                    
                    
                    self.firstMatchupPlayerTwoScore6 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                    
                    
                    self.firstMatchupPlayerTwoScore6.text = arr2[0];
                    self.firstMatchupPlayerTwoScore6.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                    self.firstMatchupPlayerTwoScore6.textAlignment = NSTextAlignmentCenter;
                    self.firstMatchupPlayerTwoScore6.textColor= [UIColor whiteColor];
                    [self.view addSubview:self.firstMatchupPlayerTwoScore6];
                    
                    [self sixthBlock];
                    
                    break;
                    
            }
            
            //NSLog(@"\n\nLeague: %@\n%@ (%@) vs %@ (%@)\n\n", [league valueForKey:@"name"], teamName1, teamPoints1, teamName2, teamPoints2);
            
            i++;
        
        }

       
        
        ///////////////////
        //////////////////
        //////////////////
    } else if(![results isEqual:[NSNull null]]) {
    
       
    //if (![results isEqual:[NSNull null]]) {

    NSArray *leagues = [results objectForKey:@"league"];
    
        NSLog(@"%@", [leagues valueForKey:@"league_key"]);
        
        

    int i = 0;
    for (NSDictionary *league in leagues) {
        YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
        
        NSString *matchupQuery = [NSString stringWithFormat:@"select * from fantasysports.leagues.scoreboard where league_key='%@'", [league valueForKey:@"league_key"]];
        

        
        YOSResponseData *matchupData = [request query:matchupQuery];
        
        NSDictionary* matchupJson = [NSJSONSerialization
                                     JSONObjectWithData:matchupData.data
                                     options:kNilOptions
                                     error:&error];
        
        //NSLog(@"LEAGUE DATA%@", matchupJson);
        // parsing json
        NSArray *matchups = [[[[[[matchupJson objectForKey:@"query"] objectForKey:@"results"] valueForKey:@"league"] objectForKey:@"scoreboard"] objectForKey:@"matchups"] objectForKey:@"matchup"];
        
        NSDictionary *team1;
        NSDictionary *team2;
        
        NSString *teamId;
        
        BOOL first;
        
        // first find user's matchup
        for (int m = 0; m < matchups.count; m++) {
            NSDictionary *matchup = [matchups objectAtIndex:m];
            NSArray *teams = [[matchup objectForKey:@"teams"] objectForKey:@"team"];
            //            bool isCurrentMatchup = false;
            for (int t = 0; t < teams.count; t++) {
                NSDictionary *team = [teams objectAtIndex:t];
                NSDictionary *manager = [[team objectForKey:@"managers"] objectForKey:@"manager"];
                
                if ([manager objectForKey:@"is_current_login"]) {
                    team1 = team;
                    teamId = [NSString stringWithFormat:@"%@",[team objectForKey:@"team_key"]];
                    if (t == 0) {
                        team2 = [teams lastObject];
                        
                        first = true;
                    } else {
                        team2 = [teams firstObject];
                        first = false;
                    }
                    
                    break;
                }
            }
        }
        
        //NSDictionary *matchup = [matchups firstObject];
        
        NSString *teamName1 = [[[team1 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team" ] objectAtIndex:0] objectForKey:@"name"];
        NSString *teamPoints1 = [[team1 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:0] objectForKey:@"team_points"] objectForKey:@"total"];
        
        //NSString *firstThree = [teamPoints1 substringToIndex:3];
        
        NSString *teamName2 = [[[team2 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"name"];
        NSString *teamPoints2 = [[team2 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"team_points"] objectForKey:@"total"];
        //NSLog(@"%@", teamName1);
        
        NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
        NSArray *arr2 = [teamPoints2 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];

        
        switch (i) {
            case 0:
                //NSLog(@"%@", league);
                _oneLeagueFirst = first;
                _oneLeagueKeyId = teamId;
                oneLeagueKey = [league objectForKey:@"league_key"];
                self.leagueOneYahoo.font = [UIFont systemFontOfSize:20];


                self.leagueOneYahoo.text = [league valueForKey:@"name"];

                NSLog(@"%@", [league valueForKey:@"name"]);
                [@"abc xyz http://www.abc.com aaa bbb ccc" substringWithRange:NSMakeRange(8, 18)];
                self.leagueOneYahooFirstTeam.text = teamName1;
                self.leagueOneFirstTeamPoints.text = teamPoints1;
                self.leagueOneYahooSecondTeam.text = teamName2;
                self.leagueOneSecondTeamPoints.text = teamPoints2;
                
                
                self.firstMatchupOne = [[UILabel alloc] initWithFrame:CGRectMake(90, 25, 57, 21)];
                //self.firstMatchupOne.text = @"Deez";
                self.firstMatchupOne.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                            alpha:1.0f];
                self.firstMatchupOne.font = [UIFont systemFontOfSize:12];

                self.firstMatchupOne.text = [league valueForKey:@"name"];
                [self.firstMatchupOne sizeToFit];
                [self.view addSubview:self.firstMatchupOne];

                
                
                self.leagueLabel = [[UILabel alloc] initWithFrame:CGRectMake(33, 93, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel.font = [UIFont systemFontOfSize:12];
                self.leagueLabel.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                             alpha:1.0f];
                
                self.leagueLabel.text= teamName1;

                [self.view addSubview:self.leagueLabel];

                
                self.firstMatchupTwo = [[UILabel alloc] initWithFrame:CGRectMake(216, 103, 112, 35)];
                self.firstMatchupTwo.text = teamName2;
                self.firstMatchupTwo.font = [UIFont systemFontOfSize:12];
                self.firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                self.firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                            alpha:1.0f];

                
                [_firstMatchupTwo sizeToFit];
                [self.view addSubview:self.firstMatchupTwo];
                
                self.firstMatchupPlayerOneScore = [[UILabel alloc] initWithFrame:CGRectMake(124, 82, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                
                
                self.firstMatchupPlayerOneScore.text = arr[0];
                self.firstMatchupPlayerOneScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore];
                
                
                self.firstMatchupPlayerTwoScore = [[UILabel alloc] initWithFrame:CGRectMake(155, 82, 40, 40)];


                self.firstMatchupPlayerTwoScore.text = arr2[0];
                self.firstMatchupPlayerTwoScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore];

                
                [self firstBlock];

                //self.firstMatchupPlayerTwoScore;
                
                
                break;
                
            case 1:
                self.twoLeagueFirst = first;
                _twoLeagueKeyId = teamId;
                self.twoLeagueKey = [league objectForKey:@"league_key"];
                self.leagueTwoYahoo.font = [UIFont systemFontOfSize:12];

                self.leagueTwoYahoo.text = [league valueForKey:@"name"];
                self.leagueTwoYahooFirstTeam.text = teamName1;
                self.leagueTwoFirstTeamPoints.text = teamPoints1;
                self.leagueTwoYahooSecondTeam.text = teamName2;
                self.leagueTwoSecondTeamPoints.text = teamPoints2;
                
                self.firstMatchupOne2 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                //self.firstMatchupOne.text = @"Deez";
                //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                 alpha:1.0f];
                
                //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];

                self.firstMatchupOne2.text = [league valueForKey:@"name"];
                [self.firstMatchupOne2 sizeToFit];
                [self.view addSubview:self.firstMatchupOne2];
                
                
                
                self.leagueLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel2.font = [UIFont systemFontOfSize:12];
                self.leagueLabel2.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                             alpha:1.0f];
                
                self.leagueLabel2.text= teamName1;
                
                
                [self.view addSubview:self.leagueLabel2];
                
                
                self.firstMatchupTwo2 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                self.firstMatchupTwo2.text = teamName2;
                self.firstMatchupTwo2.font = [UIFont systemFontOfSize:12];
                //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo2.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo2.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                 alpha:1.0f];
                [_firstMatchupTwo sizeToFit];
                [self.view addSubview:self.firstMatchupTwo2];
                
                self.firstMatchupPlayerOneScore2 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                
                
                self.firstMatchupPlayerOneScore2.text = arr[0];
                self.firstMatchupPlayerOneScore2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore2.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore2.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore2];
                
                
                self.firstMatchupPlayerTwoScore2 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                
                
                self.firstMatchupPlayerTwoScore2.text = arr2[0];
                self.firstMatchupPlayerTwoScore2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore2.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore2.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore2];
                
                
                [self secondBlock];
                
                
                
                break;
                
            case 2:
                
                self.threeLeagueFirst = first;
                _threeLeagueKeyId = teamId;
                self.threeLeagueKey = [league objectForKey:@"league_key"];
                self.leagueThreeYahoo.font = [UIFont systemFontOfSize:12];
                
                self.leagueThreeYahoo.text = [league valueForKey:@"name"];
                self.leagueThreeYahooFirstTeam.text = teamName1;
                self.leagueThreeFirstTeamPoints.text = teamPoints1;
                self.leagueThreeYahooSecondTeam.text = teamName2;
                self.leagueThreeSecondTeamPoints.text = teamPoints2;
                
                self.firstMatchupOne3 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                //self.firstMatchupOne.text = @"Deez";
                //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                
                //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                
                self.firstMatchupOne3.text = [league valueForKey:@"name"];
                [self.firstMatchupOne3 sizeToFit];
                [self.view addSubview:self.firstMatchupOne3];
                
                
                
                self.leagueLabel3 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel3.font = [UIFont systemFontOfSize:12];
                self.leagueLabel3.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                              alpha:1.0f];
                
                self.leagueLabel3.text= teamName1;
                
                
                [self.view addSubview:self.leagueLabel3];
                
                
                self.firstMatchupTwo3 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                self.firstMatchupTwo3.text = teamName2;
                self.firstMatchupTwo3.font = [UIFont systemFontOfSize:12];
                //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo3.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo3.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                [_firstMatchupTwo3 sizeToFit];
                [self.view addSubview:self.firstMatchupTwo3];
                
                self.firstMatchupPlayerOneScore2 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                
                
                self.firstMatchupPlayerOneScore3.text = arr[0];
                self.firstMatchupPlayerOneScore3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore3.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore3.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore3];
                
                
                self.firstMatchupPlayerTwoScore3 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                
                
                self.firstMatchupPlayerTwoScore3.text = arr2[0];
                self.firstMatchupPlayerTwoScore3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore3.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore3.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore3];
                
                [self thirdBlock];
                
                
                break;
                
            case 3:
                
                self.fourLeagueFirst = first;
                _fourLeagueKeyId = teamId;
                self.fourLeagueKey = [league objectForKey:@"league_key"];
                self.leagueFourYahoo.font = [UIFont systemFontOfSize:12];
                
                self.leagueFourYahoo.text = [league valueForKey:@"name"];
                self.leagueFourYahooFirstTeam.text = teamName1;
                self.leagueFourFirstTeamPoints.text = teamPoints1;
                self.leagueFourYahooSecondTeam.text = teamName2;
                self.leagueFourSecondTeamPoints.text = teamPoints2;
                
                self.firstMatchupOne4 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                //self.firstMatchupOne.text = @"Deez";
                //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                
                //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                
                self.firstMatchupOne4.text = [league valueForKey:@"name"];
                [self.firstMatchupOne4 sizeToFit];
                [self.view addSubview:self.firstMatchupOne4];
                
                
                
                self.leagueLabel4 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel4.font = [UIFont systemFontOfSize:12];
                self.leagueLabel4.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                              alpha:1.0f];
                
                self.leagueLabel4.text= teamName1;
                
                
                [self.view addSubview:self.leagueLabel4];
                
                
                self.firstMatchupTwo4 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                self.firstMatchupTwo4.text = teamName2;
                self.firstMatchupTwo4.font = [UIFont systemFontOfSize:12];
                //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo4.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo4.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                [_firstMatchupTwo4 sizeToFit];
                [self.view addSubview:self.firstMatchupTwo4];
                
                self.firstMatchupPlayerOneScore4 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                
                
                self.firstMatchupPlayerOneScore4.text = arr[0];
                self.firstMatchupPlayerOneScore4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore4.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore4.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore4];
                
                
                self.firstMatchupPlayerTwoScore4 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                
                
                self.firstMatchupPlayerTwoScore4.text = arr2[0];
                self.firstMatchupPlayerTwoScore4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore4.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore4.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore4];
                
                [self fourthBlock];

                break;
                
            case 4:
                
                self.fiveLeagueFirst = first;
                _fiveLeagueKeyId = teamId;
                self.fiveLeagueKey = [league objectForKey:@"league_key"];
                self.leagueFiveYahoo.font = [UIFont systemFontOfSize:12];
                
                self.leagueFiveYahoo.text = [league valueForKey:@"name"];
                self.leagueFiveYahooFirstTeam.text = teamName1;
                self.leagueFiveFirstTeamPoints.text = teamPoints1;
                self.leagueFiveYahooSecondTeam.text = teamName2;
                self.leagueFiveSecondTeamPoints.text = teamPoints2;
                
                self.firstMatchupOne5 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                //self.firstMatchupOne.text = @"Deez";
                //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                
                //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                
                self.firstMatchupOne5.text = [league valueForKey:@"name"];
                [self.firstMatchupOne5 sizeToFit];
                [self.view addSubview:self.firstMatchupOne5];
                
                
                
                self.leagueLabel5 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel5.font = [UIFont systemFontOfSize:12];
                self.leagueLabel5.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                              alpha:1.0f];
                
                self.leagueLabel5.text= teamName1;
                
                
                [self.view addSubview:self.leagueLabel5];
                
                
                self.firstMatchupTwo5 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                self.firstMatchupTwo5.text = teamName2;
                self.firstMatchupTwo5.font = [UIFont systemFontOfSize:12];
                //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo5.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo5.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                [_firstMatchupTwo5 sizeToFit];
                [self.view addSubview:self.firstMatchupTwo5];
                
                self.firstMatchupPlayerOneScore5 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                
                
                self.firstMatchupPlayerOneScore5.text = arr[0];
                self.firstMatchupPlayerOneScore5.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore5.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore5.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore5];
                
                
                self.firstMatchupPlayerTwoScore5 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                
                
                self.firstMatchupPlayerTwoScore5.text = arr2[0];
                self.firstMatchupPlayerTwoScore5.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore5.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore5.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore5];
                
                [self fifthBlock];

                break;
                
            case 5:
                
                ////////////////////////
                
                
                self.sixLeagueFirst = first;
                _sixLeagueKeyId = teamId;
                self.sixLeagueKey = [league objectForKey:@"league_key"];
                self.leagueSixYahoo.font = [UIFont systemFontOfSize:12];
                
                self.leagueSixYahoo.text = [league valueForKey:@"name"];
                self.leagueSixYahooFirstTeam.text = teamName1;
                self.leagueSixFirstTeamPoints.text = teamPoints1;
                self.leagueSixYahooSecondTeam.text = teamName2;
                self.leagueSixSecondTeamPoints.text = teamPoints2;
                
                self.firstMatchupOne6 = [[UILabel alloc] initWithFrame:CGRectMake(90, 240, 30, 21)];
                //self.firstMatchupOne.text = @"Deez";
                //self.firstMatchupOne2.contentMode = UIViewContentModeScaleAspectFill;
                self.firstMatchupOne6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                
                //self.firstMatchupOne2.font = [UIFont systemFontOfSize:10];
                
                self.firstMatchupOne6.text = [league valueForKey:@"name"];
                [self.firstMatchupOne6 sizeToFit];
                [self.view addSubview:self.firstMatchupOne6];
                
                
                
                self.leagueLabel6 = [[UILabel alloc] initWithFrame:CGRectMake(33, 343, 112, 35)];
                //self.leagueLabel.text = @"Matthew Noakes";
                self.leagueLabel6.font = [UIFont systemFontOfSize:12];
                self.leagueLabel6.textAlignment = NSTextAlignmentCenter;
                
                self.leagueLabel6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                              alpha:1.0f];
                
                self.leagueLabel6.text= teamName1;
                
                
                [self.view addSubview:self.leagueLabel6];
                
                
                self.firstMatchupTwo6 = [[UILabel alloc] initWithFrame:CGRectMake(176, 343, 112, 35)];
                self.firstMatchupTwo6.text = teamName2;
                self.firstMatchupTwo6.font = [UIFont systemFontOfSize:12];
                //firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
                
                // firstMatchupTwo.contentMode = UIViewContentModeCenter;;
                
                self.firstMatchupTwo6.textAlignment = NSTextAlignmentCenter;
                
                self.firstMatchupTwo6.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                  alpha:1.0f];
                [_firstMatchupTwo6 sizeToFit];
                [self.view addSubview:self.firstMatchupTwo6];
                
                self.firstMatchupPlayerOneScore6 = [[UILabel alloc] initWithFrame:CGRectMake(124, 292, 40, 40)];
                
                //NSString *firstThree = [teamPoints1 substringToIndex:2];
                
                //NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
                
                
                self.firstMatchupPlayerOneScore6.text = arr[0];
                self.firstMatchupPlayerOneScore6.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerOneScore6.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerOneScore6.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerOneScore6];
                
                
                self.firstMatchupPlayerTwoScore6 = [[UILabel alloc] initWithFrame:CGRectMake(155, 292, 40, 40)];
                
                
                self.firstMatchupPlayerTwoScore6.text = arr2[0];
                self.firstMatchupPlayerTwoScore6.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
                self.firstMatchupPlayerTwoScore6.textAlignment = NSTextAlignmentCenter;
                self.firstMatchupPlayerTwoScore6.textColor= [UIColor whiteColor];
                [self.view addSubview:self.firstMatchupPlayerTwoScore6];
                
                [self sixthBlock];
                
                break;
                
        }
        
        //NSLog(@"\n\nLeague: %@\n%@ (%@) vs %@ (%@)\n\n", [league valueForKey:@"name"], teamName1, teamPoints1, teamName2, teamPoints2);
        
        i++;
        
    }

    

    //314.l.954537.t.1
    //314.l.987290.t.1
    //314.l.987588.t.1
    //314.l.987724.t.1
        
    
    }

}
/*

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"League"]) {
        MapViewController *vc = (MapViewController *)segue.destinationViewController;
        
        UIButton *button = (UIButton *)sender;
        
        if (button.tag == 1) {
            vc.first = _oneLeagueFirst;
           // vc.key = oneLeagueKey;
            vc.oneLeagueKey = _oneLeagueKeyId;
            vc.color = [UIColor colorWithRed:(108/255.0) green:(134/255.0) blue:(185/255.0) alpha:1];
        } else if (button.tag == 2) {
            vc.first = _twoLeagueFirst;
            //vc.key = _twoLeagueKey;
            vc.oneLeagueKey = _twoLeagueKeyId;
            vc.color = [UIColor colorWithRed:(226/255.0) green:(117/255.0) blue:(108/255.0) alpha:1];
        } else if (button.tag == 3) {
            vc.first = _threeLeagueFirst;
            //vc.key = _threeLeagueKey;
            vc.oneLeagueKey = _threeLeagueKeyId;
            vc.color = [UIColor colorWithRed:(90/255.0) green:(180/255.0) blue:(183/255.0) alpha:1];
        } else if (button.tag == 4) {
            vc.first = _fourLeagueFirst;
            //vc.key = _fourLeagueKey;
            vc.oneLeagueKey = _fourLeagueKeyId;
            vc.color = [UIColor colorWithRed:(130/255.0) green:(124/255.0) blue:(180/255.0) alpha:1];
        } else if (button.tag == 5) {
            vc.first = _fiveLeagueFirst;
            //vc.key = _fiveLeagueKey;
            vc.oneLeagueKey = _fiveLeagueKeyId;
            vc.color = [UIColor colorWithRed:(87/255.0) green:(177/255.0) blue:(116/255.0) alpha:1];
        } else if (button.tag == 6) {
            vc.first = _sixLeagueFirst;
            //vc.key = _sixLeagueKey;
            vc.oneLeagueKey = _sixLeagueKeyId;
            vc.color = [UIColor colorWithRed:(159/255.0) green:(159/255.0) blue:(160/255.0) alpha:1];
        }
    }
}
*/
-(void) loadName
{
    self.leagueLabel = [[UILabel alloc] initWithFrame:CGRectMake(33, 123, 112, 35)];
    //self.leagueLabel.text = @"Matthew Noakes";
    self.leagueLabel.font = [UIFont systemFontOfSize:12];
    self.leagueLabel.textAlignment = NSTextAlignmentCenter;
    
    self.leagueLabel.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                 alpha:1.0f];

    self.leagueLabel.text = self.leagueOneYahooFirstTeam.text;
    
    [self.view addSubview:self.leagueLabel];

}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}



@end
