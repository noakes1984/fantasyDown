//
//  ViewController.m
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //[self thisButton];
    
    self.session = nil;
    self.view.backgroundColor = [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:242.0f/255.0f alpha:1];
    
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
    self.title = @"THE HUDDLE";

    
    
    self.testButnFirst = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButnFirst setFrame:CGRectMake(85, 165, 150, 37)];
    
    [self.testButnFirst setImage:[UIImage imageNamed:@"yahooButton.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButnFirst addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButnFirst];
    
    self.testButnSecond = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButnSecond setFrame:CGRectMake(85, 215, 150, 37)];
    
    [self.testButnSecond setImage:[UIImage imageNamed:@"espnButton.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButnSecond addTarget:self action:@selector(stayPressedTwo:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButnSecond];
    
    
    
    self.testButnThird = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.testButnThird setFrame:CGRectMake(85, 265, 150, 37)];
    
    [self.testButnThird setImage:[UIImage imageNamed:@"cbsButton.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.testButnThird addTarget:self action:@selector(stayPressedThree:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButnThird];

    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(1.0);
    anim.toValue = @(0.30);
    //UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10,130,335,379)];
    //[imgView setImage:[UIImage imageNamed:@""]];
    
    
    int i = 0;
    
    double delayInSeconds = 0.25;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        if(i==0){
            
            [self.testButnSecond pop_addAnimation:anim forKey:@"fade"];
            [self.testButnThird pop_addAnimation:anim forKey:@"fade"];
        }

    });
    
    
    
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];

        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    
    BOOL hasSession = [self.session resumeSession];
    if (hasSession){
        
        
    }
    
    
}
/*

- (void) initPopUpView {
    self.popup.alpha = 1;
    self.popup.frame = CGRectMake (160, 240, 0, 0);
    NSLog(@"this is what is up");
    [self.view addSubview:self.popup];
}

- (void) animatePopUpShow {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(initPopUpView)];
    
    self.popup.alpha = 1;
    self.popup.frame = CGRectMake (20, 40, 300, 400);
    
    [UIView commitAnimations];
}

*/


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell forRowAtIndexPath: (NSIndexPath*)indexPath
{
    
    
    if(indexPath.row % 2 == 0){
        
        cell.backgroundColor = [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:242.0f/255.0f alpha:1.0f];
        
        
        // [UIColor colorWithRed:238.0f/255.0f green:241.0f/255.0f blue:242.0f/255.0f alpha:1.0f];
    }else{
        
        cell.backgroundColor = [UIColor whiteColor];

    }
}

//-(void) thisButton
//{
//    NSArray *teamArray = @[@"ARI", @"CHI", @"GB", @"NYG", @"DET", @"WAS", @"PHI", @"PIT", @"LA", @"SF", @"CLE", @"IND", @"DAL", @"KC", @"SD", @"DEN", @"NYJ", @"NE", @"OAK", @"TEN", @"BUF", @"MIN", @"ATL", @"MIA", @"NO", @"CIN", @"SEA", @"TB", @"CAR", @"JAX", @"BAL", @"HOU"];
//    double secondsToSleep = 1.0;
//    
//    
//    for(int i = 0; i<[teamArray count]; i++){
//        [NSThread sleepForTimeInterval:secondsToSleep];
//        // NSLog(@"item at index %i is %@",i+1,[thisArray objectAtIndex:i]);
//        
//        //https://api.fantasydata.net/nfl/v2/JSON/Players/CHI
//        
//        //https://api.fantasydata.net/nfl/v2/JSON/PlayerGameProjectionStatsByPlayerID/2015/%i/%@", i, thisArray[0]
//        
//        
//        NSString* path = [NSString stringWithFormat:@"https://api.fantasydata.net/nfl/v2/JSON/Players/%@", teamArray[i]];
//        NSArray* array = @[
//                           // Request parameters
//                           @"entities=true",
//                           ];
//        
//        
//        NSString* string = [array componentsJoinedByString:@"&"];
//        path = [path stringByAppendingFormat:@"?%@", string];
//        
//        NSLog(@"%@", path);
//        
//        NSMutableURLRequest* _request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:path]];
//        [_request setHTTPMethod:@"GET"];
//        // Request headers
//        [_request setValue:@" 69c9f4a581ec4499b634f53b40dd1a4d" forHTTPHeaderField:@"Ocp-Apim-Subscription-Key"];
//        // Request body
//        [_request setHTTPBody:[@"" dataUsingEncoding:NSUTF8StringEncoding]];
//        
//        NSURLResponse *response = nil;
//        NSError *error = nil;
//        NSData* _connectionData = [NSURLConnection sendSynchronousRequest:_request returningResponse:&response error:&error];
//        
//        if (nil != error)
//        {
//            NSLog(@"Error: %@", error);
//        }
//        else
//        {
//            NSError* error = nil;
//            NSMutableDictionary* json = nil;
//            NSString* dataString = [[NSString alloc] initWithData:_connectionData encoding:NSUTF8StringEncoding];
//            //NSLog(@"%@", dataString);
//            
//            if (nil != _connectionData)
//            {
//                json = [NSJSONSerialization JSONObjectWithData:_connectionData options:NSJSONReadingMutableContainers error:&error];
//            }
//            
//            if (error || !json)
//            {
//                NSLog(@"Could not parse loaded json with error:%@", error);
//            }
//            //NSLog(@"%@", json);
//            
//            /*
//             //QB QB QB QB QB
//             NSString *Name = [json valueForKey:@"Name"];
//             NSString *Team = [json valueForKey:@"Team"]; //Name
//             NSString *Started = [json valueForKey:@"Started"]; //BOOL
//             NSString *DraftKingsSalary = [json valueForKey:@"DraftKingsSalary"]; //(range 500 - 10000)
//             NSString *FanDuelSalary = [json valueForKey:@"FanDuelSalary"]; //(range 500 - 10000)
//             NSString *FantasyPoints = [json valueForKey:@"FantasyPoints"]; //Points (range 5 - 50)
//             NSString *FantasyPointsFanDuel = [json valueForKey:@"FantasyPointsFanDuel"]; //Points (range 5 - 50)
//             NSString *YahooSalary = [json valueForKey:@"YahooSalary"]; // (range 5 - 50)
//             NSString *HomeOrAway = [json valueForKey:@"HomeOrAway"]; //Bool
//             NSString *FantasyPointsYahoo = [json valueForKey:@"FantasyPointsYahoo"]; //Points
//             NSString *FantasyPointsPPR = [json valueForKey:@"FantasyPointsPPR"];
//             NSString *Oppenent = [json valueForKey:@"Oppenent"]; //Name
//             NSString *PassingAttempts = [json valueForKey:@"PassingAttempts"]; // (range 5 - 50
//             NSString *PassingCompletionPercentage = [json valueForKey:@"PassingCompletionPercentage"]; // (range 0 - 100%)
//             NSString *PassingCompletions = [json valueForKey:@"PassingCompletions"]; // (range 5 - 50);
//             NSString *RushingAttempts = [json valueForKey:@"RushingAttempts"]; // (range 1 - 30);
//             NSString *RushingYardsPerAttempt = [json valueForKey:@"RushingYardsPerAttempt"];// Attempts (Range 5 - 30);
//             NSString *RushingYards = [json valueForKey:@"RushingYards"]; //Yards (Range 10 - 200)
//             NSString *TouchDowns = [json valueForKey:@"TouchDowns"]; //TD's (Range 1 - 5);
//             
//             NSArray * QBArray = [NSArray arrayWithObjects:Name, Team, Started, DraftKingsSalary, FanDuelSalary, FantasyPoints, FantasyPointsFanDuel, YahooSalary, HomeOrAway, FantasyPointsPPR, FantasyPointsYahoo, Oppenent, PassingAttempts, PassingCompletionPercentage, PassingCompletions, RushingAttempts, RushingYardsPerAttempt, RushingYards, TouchDowns, nil];
//             
//             
//             
//             */
//            NSArray *team;
//            NSArray *started;
//            NSArray *DraftKingsSalary;
//            NSArray *FanDuelSalary;
//            NSArray *FantasyPoints;
//            NSArray *FantasyPointsFanDuel;
//            NSArray *YahooSalary;
//            NSArray *HomeOrAway;
//            NSArray *FantasyPointsPPR;
//
//            
//            //Name, Team, Started, DraftKingsSalary, FanDuelSalary, FantasyPoints, FantasyPointsFanDuel, YahooSalary, HomeOrAway, FantasyPointsPPR, FantasyPointsYahoo, Oppenent, PassingAttempts, PassingCompletionPercentage, PassingCompletions, RushingAttempts, RushingYardsPerAttempt, Rushing Yards, TouchDowns
//            //NSLog(@"%@ ", json);
//            //NSLog(@"%@", [[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"]); //valueForKey:@"Position"]];
//            
//            NSArray *thisArray = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"]];
//            NSArray *thisArrayTwo = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"Name"]];
//            NSArray *thisArrayThree = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"PlayerID"]];
//            //thisArrayThree = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"PlayerID"]];
//        
//            NSLog(@"%lu", (unsigned long)[thisArray count]);
//            int g;
//            for (g=0; g < [thisArray count]; g++){
//                /////////////
//                NSMutableArray *thisPassingYards = [[NSMutableArray alloc] init];
//
//                for(int i = 0; i<17; i++){
//                
//                if (thisArray[g] != (id)[NSNull null] && [thisArray[g] length] != 0 && [thisArray[g] isEqualToString:@"QB"]){
//                    [NSThread sleepForTimeInterval:secondsToSleep];
//                    // NSLog(@"item at index %i is %@",i+1,[thisArray objectAtIndex:i]);
//                    
//                    //https://api.fantasydata.net/nfl/v2/JSON/Players/CHI
//                    
//                    //https://api.fantasydata.net/nfl/v2/JSON/PlayerGameProjectionStatsByPlayerID/2015/%i/%@", i, thisArray[0]
//                    
//                    
//                    NSString* path = [NSString stringWithFormat:@"https://api.fantasydata.net/nfl/v2/JSON/PlayerGameProjectionStatsByPlayerID/2015/%d/%@", i + 1, thisArrayThree[g]];
//                    NSArray* array = @[
//                                       // Request parameters
//                                       @"entities=true",
//                                       ];
//                    
//                    
//                    NSString* string = [array componentsJoinedByString:@"&"];
//                    path = [path stringByAppendingFormat:@"?%@", string];
//                    
//                    NSLog(@"%@", path);
//                    
//                    NSMutableURLRequest* _request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:path]];
//                    [_request setHTTPMethod:@"GET"];
//                    // Request headers
//                    [_request setValue:@"69c9f4a581ec4499b634f53b40dd1a4d" forHTTPHeaderField:@"Ocp-Apim-Subscription-Key"];
//                    // Request body
//                    [_request setHTTPBody:[@"" dataUsingEncoding:NSUTF8StringEncoding]];
//                    
//                    NSURLResponse *response = nil;
//                    NSError *error = nil;
//                    NSData* _connectionData = [NSURLConnection sendSynchronousRequest:_request returningResponse:&response error:&error];
//                    
//                    if (nil != error)
//                    {
//                        NSLog(@"Error: %@", error);
//                    }
//                    else
//                    {
//                        NSError* error = nil;
//                        NSMutableDictionary* json = nil;
//                        NSString* dataString = [[NSString alloc] initWithData:_connectionData encoding:NSUTF8StringEncoding];
//                        //NSLog(@"%@", dataString);
//                        
//                        if (nil != _connectionData)
//                        {
//                            json = [NSJSONSerialization JSONObjectWithData:_connectionData options:NSJSONReadingMutableContainers error:&error];
//                            
//                            NSLog(@"%@ - %@ - %@", [json valueForKey:@"Position"], [json valueForKey:@"Name"], [json valueForKey:@"Team"]);
//
//                            
//                            NSString *PassingYards = [NSString stringWithFormat:@"%@",[json valueForKey:@"PassingYards"]];
//                            //thisPassingYards = [[NSMutableArray alloc] initWithObjects:@" ", @" ", @" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",@" ",nil];
//                            [thisPassingYards addObject:[NSString stringWithFormat:@"%@", PassingYards]];
//                            NSArray *thisYards= @[@"yards1", @"yards2", @"yards3", @"yards4", @"yards5", @"yards6", @"yards7", @"yards8", @"yards9", @"yards10", @"yards11", @"yards12", @"yards13", @"yards14", @"yards15", @"yards16", @"yards17"];
//                            //i=0;
//                            NSString *thisTime = thisYards[i];
//                            PFObject *gameScore = [PFObject objectWithClassName:@"QB15"];
//                            
//
//                            NSLog(@"%@", thisPassingYards);
//
//                            if (i==16) {
//                                //if(thisPassingYards[16] != (id)[NSNull null] && thisPassingYards[16] != 0){
//
//                                gameScore[@"Name"] = [json valueForKey:@"Name"];
//                                gameScore[@"yards1"] = thisPassingYards[0];
//                                gameScore[@"yards2"] = thisPassingYards[1];
//                                gameScore[@"yards3"] = thisPassingYards[2];
//                                gameScore[@"yards4"] = thisPassingYards[3];
//                                gameScore[@"yards5"] = thisPassingYards[4];
//                                gameScore[@"yards6"] = thisPassingYards[5];
//                                gameScore[@"yards7"] = thisPassingYards[6];
//                                gameScore[@"yards8"] = thisPassingYards[7];
//                                gameScore[@"yards9"] = thisPassingYards[8];
//                                gameScore[@"yards10"] = thisPassingYards[9];
//                                gameScore[@"yards11"] = thisPassingYards[10];
//                                gameScore[@"yards12"] = thisPassingYards[11];
//                                gameScore[@"yards13"] = thisPassingYards[12];
//                                gameScore[@"yards14"] = thisPassingYards[13];
//                                gameScore[@"yards15"] = thisPassingYards[14];
//                                gameScore[@"yards16"] = thisPassingYards[15];
//                                gameScore[@"yards17"] = thisPassingYards[16];
//                                //}
//                                [gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
//                                    if(succeeded){
//                                        
//                                        UIAlertView *oneTime = [[UIAlertView alloc] initWithTitle:@"it ran" message:@"it ran" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//                                        
//                                        [oneTime show];
//                                        
//                                    } else {
//                                        NSLog(@"%@", error);
//                                    }
//                                        
//                                }];
//
//                                
//                            }
//
//                            
//                            
//                              NSLog(@"%@", PassingYards);
//
//                        }
//                        
//                        if (error || !json)
//                        {
//                            NSLog(@"Could not parse loaded json with error:%@", error);
//                            
//                          
//                        }
//                        
//                        /*
//                         //QB QB QB QB QB
//                         NSString *Name = [json valueForKey:@"Name"];
//                         NSString *Team = [json valueForKey:@"Team"]; //Name
//                         NSString *Started = [json valueForKey:@"Started"]; //BOOL
//                         NSString *DraftKingsSalary = [json valueForKey:@"DraftKingsSalary"]; //(range 500 - 10000)
//                         NSString *FanDuelSalary = [json valueForKey:@"FanDuelSalary"]; //(range 500 - 10000)
//                         NSString *FantasyPoints = [json valueForKey:@"FantasyPoints"]; //Points (range 5 - 50)
//                         NSString *FantasyPointsFanDuel = [json valueForKey:@"FantasyPointsFanDuel"]; //Points (range 5 - 50)
//                         NSString *YahooSalary = [json valueForKey:@"YahooSalary"]; // (range 5 - 50)
//                         NSString *HomeOrAway = [json valueForKey:@"HomeOrAway"]; //Bool
//                         NSString *FantasyPointsYahoo = [json valueForKey:@"FantasyPointsYahoo"]; //Points
//                         NSString *FantasyPointsPPR = [json valueForKey:@"FantasyPointsPPR"];
//                         NSString *Oppenent = [json valueForKey:@"Oppenent"]; //Name
//                         NSString *PassingAttempts = [json valueForKey:@"PassingAttempts"]; // (range 5 - 50
//                         NSString *PassingCompletionPercentage = [json valueForKey:@"PassingCompletionPercentage"]; // (range 0 - 100%)
//                         NSString *PassingCompletions = [json valueForKey:@"PassingCompletions"]; // (range 5 - 50);
//                         NSString *RushingAttempts = [json valueForKey:@"RushingAttempts"]; // (range 1 - 30);
//                         NSString *RushingYardsPerAttempt = [json valueForKey:@"RushingYardsPerAttempt"];// Attempts (Range 5 - 30);
//                         NSString *RushingYards = [json valueForKey:@"RushingYards"]; //Yards (Range 10 - 200)
//                         NSString *TouchDowns = [json valueForKey:@"TouchDowns"]; //TD's (Range 1 - 5);
//                         
//                         NSArray * QBArray = [NSArray arrayWithObjects:Name, Team, Started, DraftKingsSalary, FanDuelSalary, FantasyPoints, FantasyPointsFanDuel, YahooSalary, HomeOrAway, FantasyPointsPPR, FantasyPointsYahoo, Oppenent, PassingAttempts, PassingCompletionPercentage, PassingCompletions, RushingAttempts, RushingYardsPerAttempt, RushingYards, TouchDowns, nil];
//                         
//                         
//                         
//                         */
//                        
//                        
//                        //Name, Team, Started, DraftKingsSalary, FanDuelSalary, FantasyPoints, FantasyPointsFanDuel, YahooSalary, HomeOrAway, FantasyPointsPPR, FantasyPointsYahoo, Oppenent, PassingAttempts, PassingCompletionPercentage, PassingCompletions, RushingAttempts, RushingYardsPerAttempt, Rushing Yards, TouchDowns
//                        //NSLog(@"%@ ", json);
//                        //NSLog(@"%@", [[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"]); //valueForKey:@"Position"]];
//                        /*
//                        NSArray *thisArray = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"]];
//                        NSArray *thisArrayTwo = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"Name"]];
//                        NSArray *thisArrayThree = [NSArray arrayWithArray:[[json valueForKey:@"PlayerSeason"] valueForKey:@"PlayerID"]];
//                        
//                        NSLog(@"%lu", (unsigned long)[thisArray count]);
//                        int g;
//                        for (g=0; g < [thisArray count]; g++){
//                            
//                            if (thisArray[g] != (id)[NSNull null] && [thisArray[g] length] != 0 && [thisArray[g] isEqualToString:@"QB"]){
//                                
//                                NSLog(@"%@ - %@ - %@", thisArray[g], thisArrayTwo[g], thisArrayThree[g]);
//                                
//                                
//                            }
//                            
//                        }
//                         */
//                        /*
//                         if ([[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"] isEqualToString:@"QB"] && ![[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"] isEqualToString:@"null"])
//                         {
//                         NSLog(@"%@",[json valueForKey:@"Name"]);
//                         
//                         }
//                         */
//                        
//                        /*
//                        if(![PassingYards isEqual:[NSNull null]] || [json valueForKey:@"PassingYards"] != (id)[NSNull null] || [PassingYards length] != 0 )
//                        {
//                            
//                            //NSLog(@"%@", PassingYards);
//                            thisPassingYards[i] = PassingYards;
//
//                        }
//                        */
//                        //NSLog(@"%@", thisPassingYards);
//                        //NSArray *oneTime= [NSArray arrayWithObject:[json valueForKey:@"PassingYards"]];
//                        
//                        ///////
//                        //NSString *string = [NSString stringWithFormat:@"hello"];
//                        
//                        //gameScore[thisTime] = PassingYards;
//                        
//                        
//                        /*
//                        for (int q = 0; q <17; q++){
//                            PFObject *gameScore = [PFObject objectWithClassName:@"QB15"];
//                            gameScore[oneTimeYards[q]] = thisTime;
//                            
//                            NSLog(@"%@", oneTimeYards[q]);
//                            //gameScore[@"playerName"] =[json valueForKey:@"This"];
//                            //gameScore[@"cheatMode"] = @NO;
//                            //[gameScore saveInBackground];
//                            if (i==16){
//                         
//                            [gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//                                if (succeeded) {
//                                    // The object has been saved.
//                                    UIAlertView *oneTime = [[UIAlertView alloc] initWithTitle:@"it ran" message:@"it ran" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//                                    
//                                    [oneTime show];
//                                } else {
//                                    // There was a problem, check error.description
//                                }
//                            }];
//                            }
//                        }
//*/
//                        
//                        
//                        
//                        //////
//                        
//                        //NSLog(@"%@", json);
//                        _connectionData = nil;
//                    }
//                }
//                
//                
//                
//                
//                ////////////
//            }
//            /*
//             if ([[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"] isEqualToString:@"QB"] && ![[[json valueForKey:@"PlayerSeason"] valueForKey:@"Position"] isEqualToString:@"null"])
//             {
//             NSLog(@"%@",[json valueForKey:@"Name"]);
//             
//             }
//             */
//            //NSLog(@"%@", json);
//            _connectionData = nil;
//        }
//        }
//    }
//
//}

-(void) thatButton
{
    
    
    
    
}

-(void)stayPressed:(UIButton *) sender {
    
    //  dj0yJmk9eUQzMzBZcWFuVWhSJmQ9WVdrOWJVcHJWV0ZxTkdrbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD03NQ--
    
    //02893ec94b1a60fae1c707e0ae35bc588bb0363c
    
    
    self.session = [YOSSession sessionWithConsumerKey:@"dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--"
                                    andConsumerSecret:@"02893ec94b1a60fae1c707e0ae35bc588bb0363c"
                                     andApplicationId:nil];
    //matthewnoakes.com
    //dj0yJmk9Q0pXczRLa2hWZUhjJmQ9WVdrOVEyVTNXamN3Tm5NbWNHbzlNVFUwTlRFNE5qVTJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD1kMQ--
    //02893ec94b1a60fae1c707e0ae35bc588bb0363c
    
    
    //fantasydown.com
    //dj0yJmk9eUQzMzBZcWFuVWhSJmQ9WVdrOWJVcHJWV0ZxTkdrbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD03NQ--
    //853d099edccf9d00af741e28981d2167cb7c94a3
    
    BOOL hasSession = [self.session resumeSession];
    if (hasSession){
        
        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
        sprintAnimation.springBounciness = 20.f;
        [self.testButnFirst pop_addAnimation:sprintAnimation forKey:@"size"];
        
        
        
        /*
         
         
         POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerBounds];
         anim.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 329, 76)];
         
         [_firstLayer pop_addAnimation:sprintAnimation forKey:@"size"];
         double delayInSeconds = .5;
         dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
         dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
         
         anim.toValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 229, 56)];
         [_firstLayer pop_addAnimation:anim forKey:@"back"];
         
         });
         */
    }
    
    
    if(hasSession == FALSE) {
        [self.session sendUserToAuthorizationWithCallbackUrl:@"http://fantasydown.com"];
        NSLog(@"is this running");
    }else{
        //NSLog(@"it worked");
        //UIAlertView *yahooSignedUp  = [[UIAlertView alloc] initWithTitle:@"Your linked!" message:@"No need to sign up!" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        //[yahooSignedUp show];
        
    }

    
    
    
    
    
    
    
    
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    //[self.testButn pop_addAnimation:sprintAnimation forKey:@"size"];
    
    
    
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
}

-(void)stayPressedTwo:(UIButton *) sender {
    
}


-(void)stayPressedThree:(UIButton *) sender {
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
