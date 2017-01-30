//
//  MapViewController.m
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "MapViewController.h"




@interface MapViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;




@end


@implementation MapViewController

@synthesize players;




@synthesize oneLeagueKey = _oneLeagueKey;
//@synthesize key = _key;
@synthesize oneLeagueId;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self oneLeagueKey];
    //[self oneLeagueId];
    
    
    
    //oneTime = 1;
    NSLog(@"%d" , oneTime);
    
    //NSLog(@"This is the number from the other clase: %d", lastTime);


    
    //[self getUserLeagueData];
    
    //_finalKey;
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName]];
    [self.navigationItem setTitle:@"THE HUDDLE"];
    
    //self.title = @"THE HUDDLE";
    
    
    
    //PhotoViewController *getKey = [[PhotoViewController alloc]init];
    //self.finalKey=getKey.oneLeagueKey;

    
    
    //NSLog(@"This is the Key: %@", self.finalKey);
    //NSLog(@"The League Id is %@", _oneLeagueKey);

    
    
    self.session = [YOSSession sessionWithConsumerKey:@"dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--"
                                    andConsumerSecret:@"02893ec94b1a60fae1c707e0ae35bc588bb0363c"
                                     andApplicationId:nil];
    
    BOOL hasSession = [self.session resumeSession];
    
    
    
    if(hasSession == FALSE) {
        //[self.session sendUserToAuthorizationWithCallbackUrl:@"http://matthewnoakes.com"];
    }else{
        // NSLog(@"it worked");
        [self getUserLeagueData];
        //NSLog(@"There is a session");
       // _hide = nil;
        //self.hiddenText.text = _hide;
    }

    
    
        
    
    

    
    self.view.backgroundColor = [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:242.0f/255.0f alpha:1.0f];

    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
        
    }
        //self.tableView = [[UITableView alloc]init];
    //self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];

    self.tableView.frame = CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y, self.tableView.frame.size.width, self.tableView.contentSize.height);
    

    //self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
    
    
    

    //_players = @[@"Mercedes-Benz", @"BMW", @"Porsche", @"Opel", @"Volkswagen", @"Audi",@"Mercedes-Benz", @"BMW", @"Porsche", @"Opel", @"Volkswagen", @"Audi"];

    //NSLog(@"%@", _players);
    
    //[self getUserLeagueData];
    
    
    self.testButn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButn setFrame:CGRectMake(163, 175, 130, 37)];
    
    [self.testButn setImage:[UIImage imageNamed:@"scoutPlayer.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButn addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButn];
    
    UIButton* testButnFirst = [UIButton buttonWithType:UIButtonTypeCustom];
    [testButnFirst setFrame:CGRectMake(27, 175, 130, 37)];
    
    [testButnFirst setImage:[UIImage imageNamed:@"seeMatchup.png"] forState:UIControlStateNormal];
    [testButnFirst addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testButnFirst];
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 25, 60, 22.5)];
    imgView.image = [UIImage imageNamed:@"yahooTag.png"];
    [self.view addSubview:imgView];
    
    UIImageView *seeLeague = [[UIImageView alloc] initWithFrame:CGRectMake(215, 25, 75, 22.5)];
    seeLeague.image = [UIImage imageNamed:@"seeLeague.png"];
    [self.view addSubview:seeLeague];
    
    UIImageView *greenButton = [[UIImageView alloc] initWithFrame:CGRectMake(130, 100, 30, 24)];
    greenButton.image = [UIImage imageNamed:@"redRectangle.png"];
    [self.view addSubview:greenButton];
    
    UIImageView *redButton = [[UIImageView alloc] initWithFrame:CGRectMake(160, 100, 30, 24)];
    redButton.image = [UIImage imageNamed:@"greenRectangle.png"];
    [self.view addSubview:redButton];
    
    UIButton *thisRectangle = [UIButton buttonWithType:UIButtonTypeCustom];
    [thisRectangle setFrame:CGRectMake(0, 225, 320, 40)];
    
    [thisRectangle setImage:[UIImage imageNamed:@"rectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [thisRectangle addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:thisRectangle];
    
    
    UILabel *greyBar = [[UILabel alloc] initWithFrame:CGRectMake(20, 243, 50, 20)];
    greyBar.text = [NSString stringWithFormat:@"Starters"];
    greyBar.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
    greyBar.textAlignment = NSTextAlignmentCenter;
    greyBar.textColor= [UIColor colorWithRed:167.0f/255.0f green:178.0f/255.0f blue:190.0f/255.0f
                                       alpha:1.0f];

    [self.view addSubview:greyBar];
    
    UILabel *greyBar2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 243, 30, 20)];
    greyBar2.text = [NSString stringWithFormat:@"Opp"];
    greyBar2.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
    greyBar2.textAlignment = NSTextAlignmentCenter;
    greyBar2.textColor= [UIColor colorWithRed:167.0f/255.0f green:178.0f/255.0f blue:190.0f/255.0f
                                       alpha:1.0f];
    
    [self.view addSubview:greyBar2];
    
    UILabel *greyBar3 = [[UILabel alloc] initWithFrame:CGRectMake(190, 243, 30, 20)];
    greyBar3.text = [NSString stringWithFormat:@"Proj"];
    greyBar3.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
    greyBar3.textAlignment = NSTextAlignmentCenter;
    greyBar3.textColor= [UIColor colorWithRed:167.0f/255.0f green:178.0f/255.0f blue:190.0f/255.0f
                                        alpha:1.0f];
    
    [self.view addSubview:greyBar3];
    
    UILabel *greyBar4 = [[UILabel alloc] initWithFrame:CGRectMake(235, 243, 30, 20)];
    greyBar4.text = [NSString stringWithFormat:@"Score"];
    greyBar4.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
    greyBar4.textAlignment = NSTextAlignmentCenter;
    greyBar4.textColor= [UIColor colorWithRed:167.0f/255.0f green:178.0f/255.0f blue:190.0f/255.0f
                                        alpha:1.0f];
    
    [self.view addSubview:greyBar4];

    UILabel *greyBar5 = [[UILabel alloc] initWithFrame:CGRectMake(280, 243, 30, 20)];
    greyBar5.text = [NSString stringWithFormat:@"+/-"];
    greyBar5.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
    greyBar5.textAlignment = NSTextAlignmentCenter;
    greyBar5.textColor= [UIColor colorWithRed:167.0f/255.0f green:178.0f/255.0f blue:190.0f/255.0f
                                        alpha:1.0f];
    
    [self.view addSubview:greyBar5];



    


    
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:NO];
    
    self.view.backgroundColor = [UIColor colorWithRed:224.0f/255.0f green:227.0f/255.0f blue:229.0f/255.0f alpha:100];

    
}


-(void)stayPressed:(UIButton *) sender {
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.testButn pop_addAnimation:sprintAnimation forKey:@"size"];
    
    
    
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
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
    self.session = [YOSSession sessionWithConsumerKey:@"dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--"
                                    andConsumerSecret:@"02893ec94b1a60fae1c707e0ae35bc588bb0363c"
                                     andApplicationId:nil];
  // NSLog(@"%@", _key);
    BOOL hasSession = [self.session resumeSession];
    
    if(hasSession == FALSE) {
        //[self.session sendUserToAuthorizationWithCallbackUrl:@"http://matthewnoakes.com"];
    }else{
       // NSLog(@"it worked");
        
        self.session = [YOSSession sessionWithConsumerKey:@"dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--"
                                        andConsumerSecret:@"02893ec94b1a60fae1c707e0ae35bc588bb0363c"
                                         andApplicationId:nil];
        
        BOOL hasSession = [self.session resumeSession];
        
        if(hasSession == FALSE) {
            //[self.session sendUserToAuthorizationWithCallbackUrl:@"http://matthewnoakes.com"];
            //NSLog(@"it didn't work");
        }else{
            
            YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
            
            NSString *leaguesView2 = [NSString stringWithFormat:@"select * from fantasysports.leagues where use_login=1 and game_key in ('331', 'nfl')"];
            [request query:leaguesView2 withDelegate:self];
        }
        
        return;
        

        
        
    }
    /*
    if (_key != NULL){
        YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
        
        //    NSString *leaguesView = [NSString stringWithFormat:@"select * from fantasysports.teams.roster.stats where team_key=%@.t.1", firstLeague];
        
        
        NSString *leaguesView = [NSString stringWithFormat:@"select * from fantasysports.teams.roster.stats where team_key='%@'", _oneLeagueKey]; //(self.first ? 1 : 2)];
    NSLog(@"%@", _finalKey);
    
        [request query:leaguesView withDelegate:self];
    }
     */
    /////////////////////////////////////////////
    
}

- (void)requestDidFinishLoading:(YOSResponseData *)request
{
    
    YOSResponseData *hello = request;
    
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:hello.data //1
                          options:kNilOptions
                          error:&error];
    
    //NSLog(@"This is it. %@", json);
    
    NSDictionary *query = [json objectForKey:@"query"];
    NSDictionary *results = [query objectForKey:@"results"];
    
    if (![results isEqual:[NSNull null]]) {
    NSArray *leagues = [results objectForKey:@"league"];
    
    NSLog(@"%@", leagues);

    int i = 0;
        
   for (NSDictionary *league in leagues) {
        YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
        
        NSString *matchupQuery = [NSString stringWithFormat:@"select * from fantasysports.leagues.scoreboard where league_key='%@'", [league objectForKey:@"league_key"]];
        
        YOSResponseData *matchupData = [request query:matchupQuery];
        
        NSDictionary* matchupJson = [NSJSONSerialization
                                     JSONObjectWithData:matchupData.data
                                     options:kNilOptions
                                     error:&error];
        
        //NSLog(@"LEAGUE DATA%@", matchupJson);
        // parsing json
        NSArray *matchups = [[[[[[matchupJson objectForKey:@"query"] objectForKey:@"results"] valueForKey:@"league"] objectForKey:@"scoreboard"] objectForKey:@"matchups"] objectForKey:@"matchup"];
        
        //NSLog(@"%@", matchups);
        
        NSDictionary *team1;
        NSDictionary *team2;
        
       NSLog(@"%@", matchups);
       
        BOOL first;
        
        // first find user's matchup
        for (int m = 0; m == 0; m++) {
            NSDictionary *matchup = [matchups objectAtIndex:m];
            NSArray *teams = [[matchup objectForKey:@"teams"] objectForKey:@"team"];
            //            bool isCurrentMatchup = false;
            for (int t = 0; t<teams.count ; t++) {
                NSDictionary *team = [teams objectAtIndex:t];
                NSDictionary *manager = [[team objectForKey:@"managers"] objectForKey:@"manager"];
                
                
                if ([manager objectForKey:@"is_current_login"]) {
                    
                    self.firstMatchupOne = [[UILabel alloc] initWithFrame:CGRectMake(90, 25, 57, 21)];
                    //self.firstMatchupOne.text = @"Deez";
                    self.firstMatchupOne.contentMode = UIViewContentModeScaleAspectFill;
                    self.firstMatchupOne.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                                     alpha:1.0f];
                    
                    self.firstMatchupOne.text = [league valueForKey:@"name"];
                    [self.firstMatchupOne sizeToFit];
                    [self.view addSubview:self.firstMatchupOne];

                    
                    
                    YQLQueryRequest *request = [YQLQueryRequest requestWithSession:self.session];
                    
                    NSString *matchupQuery = [NSString stringWithFormat:@"select * from fantasysports.teams.roster.stats where team_key='%@'", [team objectForKey:@"team_key"]];
                    
                    
                    
                    YOSResponseData *lastData = [request query:matchupQuery];
                    
                    NSError* error;
                    NSDictionary* jsonLast = [NSJSONSerialization
                                          JSONObjectWithData:lastData.data //1
                                          options:kNilOptions
                                          error:&error];
                    
                    //NSString *count = [NSString stringWithFormat:@"%@", [[[[[[jsonLast objectForKey:@"query"] objectForKey:@"results"] objectForKey:@"team"] objectForKey:@"roster"] objectForKey:@"players"] valueForKey:@"count"]];
                    
                    //NSDictionary *thisArray = [NSDictionary dictionaryWithDictionary:[[[[[[jsonLast objectForKey:@"query"] objectForKey:@"results"] objectForKey:@"team"] objectForKey:@"roster"] objectForKey:@"players"] valueForKey:@"player"] ];
                   // NSArray * thisArray = [[[[[[jsonLast objectForKey:@"query"] objectForKey:@"results"] objectForKey:@"team"] objectForKey:@"roster"] objectForKey:@"players"] objectForKey:@"player"];
                    
                    players = [[[[[[jsonLast objectForKey:@"query"] objectForKey:@"results"] objectForKey:@"team"] objectForKey:@"roster"] objectForKey:@"players"] objectForKey:@"player"];
                    
                    //int thisCount= [count intValue];
                    //NSLog(@"%@", thisArray);

                    
                    //NSLog(@"3 Response:   %@", [[[[[[jsonLast objectForKey:@"query"] objectForKey:@"results"] objectForKey:@"team"] objectForKey:@"roster"] objectForKey:@"players"] objectForKey:@"player"]);
                    
                }

                
                if ([manager objectForKey:@"is_current_login"]) {
                    team1 = team;
                    self.teamId = [NSString stringWithFormat:@"%@",[team objectForKey:@"team_key"]];
                  //  NSLog(@"%@", [NSString stringWithFormat:@"%@",[team objectForKey:@"team_key"]]);
                    if (t == 0){

                        team2 = [teams lastObject];
                        first = true;
                        //NSLog(@"%@", team2);

                    } else {
                        
                        team2 = [teams firstObject];
                        first = false;
                        //NSLog(@"%@", team2);

                    }
                    
                    break;
                }
            }
        }
       
       
        //NSDictionary *matchup = [matchups firstObject];
        
        NSString *teamName1 = [[[team1 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team" ] objectAtIndex:0] objectForKey:@"name"];
        NSString *teamPoints1 = [[team1 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:0] objectForKey:@"team_points"] objectForKey:@"total"];
        
        NSString *teamName2 = [[[team2 objectForKey:@"managers"] objectForKey:@"manager"] objectForKey:@"nickname"]; // [[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"name"];
        NSString *teamPoints2 = [[team2 objectForKey:@"team_points"] objectForKey:@"total"]; // [[[[[matchup objectForKey:@"teams"] objectForKey:@"team"] objectAtIndex:1] objectForKey:@"team_points"] objectForKey:@"total"];
        NSArray *arr = [teamPoints1 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];
        NSArray *arr2 = [teamPoints2 componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"."]];


        //switch (i) {
          //  case 0:
                //NSLog(@"%@", league);
                //oneLeagueFirst = first;
       _oneLeagueKey = self.teamId;
                //_oneLeagueKey = [league objectForKey:@"league_key"];
       
        
        self.leagueLabel = [[UILabel alloc] initWithFrame:CGRectMake(33, 133, 112, 35)];
        self.leagueLabel.font = [UIFont systemFontOfSize:12];
        self.leagueLabel.textAlignment = NSTextAlignmentCenter;
        
        self.leagueLabel.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                     alpha:1.0f];
        
        self.leagueLabel.text= teamName1;
        
        [self.view addSubview:self.leagueLabel];
        
        
        self.firstMatchupTwo = [[UILabel alloc] initWithFrame:CGRectMake(216, 143, 112, 35)];
        self.firstMatchupTwo.text = teamName2;
        self.firstMatchupTwo.font = [UIFont systemFontOfSize:12];
        //self.firstMatchupTwo.contentMode = UIViewContentModeScaleAspectFill;
        
        //self.firstMatchupTwo.contentMode = UIViewContentModeCenter;;
        
        self.firstMatchupTwo.textAlignment = NSTextAlignmentCenter;
        
        self.firstMatchupTwo.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f
                                                         alpha:1.0f];
        
        
        [_firstMatchupTwo sizeToFit];
        [self.view addSubview:self.firstMatchupTwo];
        
        self.firstMatchupPlayerOneScore = [[UILabel alloc] initWithFrame:CGRectMake(124, 92, 40, 40)];
        
        //NSString *firstThree = [teamPoints1 substringToIndex:2];
        
        
        
        self.firstMatchupPlayerOneScore.text = arr[0];
        self.firstMatchupPlayerOneScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
        self.firstMatchupPlayerOneScore.textAlignment = NSTextAlignmentCenter;
        self.firstMatchupPlayerOneScore.textColor= [UIColor whiteColor];
        [self.view addSubview:self.firstMatchupPlayerOneScore];
        
        
        self.firstMatchupPlayerTwoScore = [[UILabel alloc] initWithFrame:CGRectMake(155, 92, 40, 40)];
        
        
        self.firstMatchupPlayerTwoScore.text = arr2[0];
        self.firstMatchupPlayerTwoScore.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:13];
        self.firstMatchupPlayerTwoScore.textAlignment = NSTextAlignmentCenter;
        self.firstMatchupPlayerTwoScore.textColor= [UIColor whiteColor];
        [self.view addSubview:self.firstMatchupPlayerTwoScore];
       
             
       //NSURL *url = [NSURL URLWithString:@"http://ios.eezytutorials.com/sample-files/sample-dictionary-plist.plist"];
       //NSDictionary *dict = [[NSDictionary alloc]initWithObjects:matchups];
       //NSCache *cache = [[NSCache alloc]init];
       //[cache setValue:cachedDic forKey:@""];
       //NSLog(@"%@",[cache objectForKey:@"Team1"]);
       
       [self.tableView reloadData];

       
                   //        }
        
        //NSLog(@"\n\nLeague: %@\n%@ (%@) vs %@ (%@)\n\n", [league valueForKey:@"name"], teamName1, teamPoints1, teamName2, teamPoints2);
        
       // i++;
        
  //  }

    
    //NSLog(@"%@", [self.tableView description]);
    

    }
    //314.l.954537.t.1
    //314.l.987290.t.1
    //314.l.987588.t.1
    //314.l.987724.t.1
        
    }
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
   // NSLog(@" in method 1");
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
   // NSLog(@" in method 2");
    // Return the number of rows in the section.
    if (players){
    return players.count;
    
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath    *)indexPath {
    
    //NSLog(@" in method 3");
    
    PlayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell" forIndexPath:indexPath];
    
    //cell = [tableView ]

    
    //static NSString *CellIdentifier = @"PlayerCell";
  // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        //cell = [tableView initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"PlayerCell"];

        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle   reuseIdentifier:@"PlayerCell"];
    }
    
    if( [indexPath row] % 2)
        [cell setBackgroundColor:[UIColor colorWithRed:224.0f/255.0f green:227.0f/255.0f blue:229.0f/255.0f alpha:100]];
    else
        [cell setBackgroundColor:[UIColor colorWithRed:231.0f/255.0f green:234.0f/255.0f blue:235.0f/255.0f alpha:100]];
    
    
    
    NSDictionary *player = [players objectAtIndex:indexPath.row];
    NSDictionary *name = [player objectForKey:@"name"];
    
    //NSLog(@"%@", [player objectForKey:@"editorial_team_full_name"]);

    
    NSDictionary *points = [player objectForKey:@"player_points"];
    //NSDictionary *position = [[player objectForKey:@"eligible_positions"] objectAtIndex:1];
    NSDictionary *selectedPosition = [player objectForKey:@"selected_position"];
    
    NSString *thisString = [NSString stringWithFormat:@"%@",[name valueForKey:@"full"]];
    NSArray *oneArray = [thisString componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];
    
    cell.name.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f alpha:1.0f];
    cell.name.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:11];
    

    if ([oneArray count]<2) {
        
        cell.name.text = thisString;
        //NSLog(@"%@", thisString);
        
    } else {
        NSString *finalString = [NSString stringWithFormat:@"%@. %@", [oneArray[0] substringWithRange:NSMakeRange(0, 1)], oneArray[1]];
        cell.name.text = finalString;
        //NSLog(@"%@", finalString);

    }
    
    
    
    cell.playerPosition.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:10];
    
    if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"QB"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:100.0f/255.0f green:202.0f/255.0f blue:221.0f/255.0f alpha:1.0f];
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"RB"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:173.0f/255.0f green:209.0f/255.0f blue:81.0f/255.0f alpha:1.0f];
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"WR"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:242.0f/255.0f green:198.0f/255.0f blue:106.0f/255.0f alpha:1.0f];
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"TE"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:93.0f/255.0f green:201.0f/255.0f blue:115.0f/255.0f alpha:1.0f];
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"DEF"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:128/255.0f green:95.0f/255.0f blue:167.0f/255.0f alpha:1.0f];
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"BN"]){

        cell.playerPosition.textColor = [UIColor blackColor];

    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"K"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:35/255.0f green:174.0f/255.0f blue:150.0f/255.0f alpha:1.0f];
        
        
    } else if ([[selectedPosition objectForKey:@"position"] isEqualToString:@"Q/W/R/T"] || [[selectedPosition objectForKey:@"position"] isEqualToString:@"W/R/T"]){
        
        cell.playerPosition.textColor = [UIColor colorWithRed:244/255.0f green:121.0f/255.0f blue:55.0f/255.0f alpha:1.0f];
        
    }
    
    cell.playerPosition.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:9];

    cell.playerPosition.text = [selectedPosition objectForKey:@"position"];
    
    
    //cell.playerPosition.text = [selectedPosition obje:@"display_position"];
    
    
    
   //NSLog(@"%@", [[player valueForKey:@"display_position"] sortedArrayUsingDescriptors:@[firstNameSortDescriptor]]);
    
   // NSArray *sortedArray = [NSArray arrayWithArray:[selectedPosition objectForKey:@"position"]  sortedArrayUsingDescriptors:@[firstNameSortDescriptor]];
    //NSDictionary *playerTwo = [sortedArray objectAtIndex:indexPath.row];
    //NSDictionary *nameTwo = [playerTwo objectForKey:@"name"];
    
    //NSLog(@"%@", [players sortedArrayUsingDescriptors:@[firstNameSortDescriptor]]);
    
    //NSLog(@"%@", playerTwo);
    

    

    
    cell.points.textColor = [UIColor colorWithRed:79.0f/255.0f green:93.0f/255.0f blue:106.0f/255.0f alpha:1.0f];
    cell.points.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:10];
    cell.points.textAlignment = NSTextAlignmentCenter;
    cell.points.text = [NSString stringWithFormat:@"%ld", [[points objectForKey:@"total"] integerValue]];
    
    NSArray *teamArray = [[player objectForKey:@"editorial_team_full_name"] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" "]];

    
   // cell.detailTextLabel.text = [selectedPosition objectForKey:@"position"];
   // cell.points.text = [NSString stringWithFormat:@"%ld", [[points objectForKey:@"total"] integerValue]];

    if([name valueForKey:@"full"]==teamArray[0]){
        //NSLog(@"%@", [player valueForKey:@"display_position"]);
        
        cell.playerPosition.text = [player valueForKey:@"display_position"];
        cell.team.text = [NSString stringWithFormat:@" "];
        
        
        
        
    } else {
        
        cell.team.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:8];
        cell.team.textColor = [UIColor colorWithRed:125.0f/255.0f green:138.0f/255.0f blue:148.0f/255.0f alpha:1];
        cell.team.text = [NSString stringWithFormat:@"\u00B7 %@", [player objectForKey:@"editorial_team_full_name"]];
        NSLog(@"%@", [NSString stringWithFormat:@"\u00B7 %@", [player objectForKey:@"editorial_team_full_name"]]);

        cell.playerPosition.text= [player valueForKey:@"display_position"];

    }
        
    if (cell.playerPosition){
        
        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(6, 6)];
        sprintAnimation.springBounciness = 20.f;
        [cell.playerPosition pop_addAnimation:sprintAnimation forKey:@"size"];
    }
    
    
    /*
    POPSpringAnimation *pointAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    pointAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    pointAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    pointAnimation.springBounciness = 20.f;
    [cell.points pop_addAnimation:sprintAnimation forKey:@"key"];
     */
       return cell;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}



@end
