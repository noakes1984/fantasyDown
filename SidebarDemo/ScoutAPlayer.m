//
//  PhotoViewController.m
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "ScoutAPlayer.h"

@interface ScoutAPlayer ()

//@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end


@implementation ScoutAPlayer

//NSString *position;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//////////








/////////



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    // Load image
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"thirdWhiteRectangle.png"]];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithCustomView:imageView];
    rightButton.width = 20;
    [rightButton setAction:@selector(leagueAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    //[self.navigationItem.rightBarButtonItem setAction:@selector(fuckthis:)];
    
    self.darkRectangle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"darkRectangle.png"]];

    [self.view addSubview:self.darkRectangle];

    self.title = @"PLAY BY PLAY";
    
    self.tableView.scrollEnabled = NO;
    
    
    //self.tableView.frame = CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y, self.tableView.frame.size.width, self.tableView.contentSize.height);
    
    _players = @[@"", @"", @"", @"", @"", @"",@"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"",@"", @"", @"", @"", @"", @""];
    
    self.testButnFirst = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"greenBackground.png"]];
    [self.testButnFirst setFrame:CGRectMake(90, 0, 260, 505)];
    
        [self.view addSubview:self.testButnFirst];

    self.leagueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.leagueButton setFrame:CGRectMake(100, 25, 210, 45)];
    
    [self.leagueButton setImage:[UIImage imageNamed:@"textFieldDarkBig.png"] forState:UIControlStateNormal];
    [self.leagueButton addTarget:self action:@selector(qbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.leagueButton];
    
    self.qbPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.qbPositionButton setFrame:CGRectMake(100, 85, 37, 28)];
    //UIImage *image = [[UIImage imageNamed:@"smallGreyRectangle.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //UILabel *qbLabel = [[UILabel alloc] initWithFrame:CGRectMake(155, 82, 40, 40)];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //qbPositionButton.tintColor = [UIColor redColor];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.qbPositionButton addTarget:self action:@selector(qbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.qbPositionButton];
    
    self.fromLabelQB = [[UILabel alloc]initWithFrame:CGRectMake(106, 78, 40, 40)];
    self.fromLabelQB.backgroundColor = [UIColor clearColor];
    self.fromLabelQB.text = @"QB";
    self.fromLabelQB.textColor = [UIColor whiteColor];
    self.fromLabelQB.textAlignment = NSTextAlignmentLeft;
    self.fromLabelQB.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelQB];
    
    self.rbPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.rbPositionButton setFrame:CGRectMake(143, 85, 37, 28)];
    
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.rbPositionButton addTarget:self action:@selector(rbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.rbPositionButton];
    
    self.fromLabelRB = [[UILabel alloc]initWithFrame:CGRectMake(150, 78, 40, 40)];
    self.fromLabelRB.backgroundColor = [UIColor clearColor];
    self.fromLabelRB.text = @"RB";
    self.fromLabelRB.textColor = [UIColor whiteColor];
    self.fromLabelRB.textAlignment = NSTextAlignmentLeft;
    self.fromLabelRB.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelRB];

    
    
    self.wrPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.wrPositionButton setFrame:CGRectMake(186, 85, 37, 28)];
    
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.wrPositionButton addTarget:self action:@selector(wrPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.wrPositionButton];
    
    self.fromLabelWR = [[UILabel alloc]initWithFrame:CGRectMake(191.5, 78, 40, 40)];
    self.fromLabelWR.backgroundColor = [UIColor clearColor];
    self.fromLabelWR.text = @"WR";
    self.fromLabelWR.textColor = [UIColor whiteColor];
    self.fromLabelWR.textAlignment = NSTextAlignmentLeft;
    self.fromLabelWR.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelWR];

    
    self.tePositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.tePositionButton setFrame:CGRectMake(230, 85, 37, 28)];
    
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.tePositionButton addTarget:self action:@selector(tePressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.tePositionButton];
    
    self.fromLabelTE = [[UILabel alloc]initWithFrame:CGRectMake(238, 78, 40, 40)];
    self.fromLabelTE.backgroundColor = [UIColor clearColor];
    self.fromLabelTE.text = @"TE";
    self.fromLabelTE.textColor = [UIColor whiteColor];
    self.fromLabelTE.textAlignment = NSTextAlignmentLeft;
    self.fromLabelTE.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelTE];

    
    self.dePositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.dePositionButton setFrame:CGRectMake(272, 85, 37, 28)];
    
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.dePositionButton addTarget:self action:@selector(dePressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.dePositionButton];
    
    self.fromLabelDE = [[UILabel alloc]initWithFrame:CGRectMake(279, 78, 40, 40)];
    self.fromLabelDE.backgroundColor = [UIColor clearColor];
    self.fromLabelDE.text = @"DE";
    self.fromLabelDE.textColor = [UIColor whiteColor];
    self.fromLabelDE.textAlignment = NSTextAlignmentLeft;
    self.fromLabelDE.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelDE];
    
    ////////////////////
    ////////////////////
    ////////////////////
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
        sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
        sprintAnimation.springBounciness = 20.f;
        [self.dePositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
        
        [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
        [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
        [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
        [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
        [self.dePositionButton setImage:[UIImage imageNamed:@"purpleDEButton.png"] forState:UIControlStateNormal];
        



        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
            sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
            sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
            sprintAnimation.springBounciness = 20.f;
            [self.tePositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
            
            [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
            [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
            [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
            [self.tePositionButton setImage:[UIImage imageNamed:@"orangeTEButton.png"] forState:UIControlStateNormal];
            [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];

        
            
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

                POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
                sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
                sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
                sprintAnimation.springBounciness = 20.f;
                [self.wrPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
                
                [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                [self.wrPositionButton setImage:[UIImage imageNamed:@"yellowWRButton.png"] forState:UIControlStateNormal];
                [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];

                
            

        
                
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    
                    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
                    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
                    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
                    sprintAnimation.springBounciness = 20.f;
                    [self.rbPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
                    
                    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                    [self.rbPositionButton setImage:[UIImage imageNamed:@"greenRBButton.png"] forState:UIControlStateNormal];
                    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];

                    
                


                    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.35 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        
                        POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
                        sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
                        sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(6, 6)];
                        sprintAnimation.springBounciness = 20.f;
                        [self.qbPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
                        
                        [self.qbPositionButton setImage:[UIImage imageNamed:@"turqoiseQBButton.png"] forState:UIControlStateNormal];
                        [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                        [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                        [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                        [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
                        
                        self.positionString =[NSString stringWithFormat:@"QB"];
                        
                        


                        
                    });
                });
            });
        });
    });
    
    
    
    
    
    
    /////////////////////
    /////////////////////
    
    /////////////////////
    
    self.addStatSmall = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.addStatSmall setFrame:CGRectMake(100, 130, 210, 45)];
    
    [self.addStatSmall setImage:[UIImage imageNamed:@"addStat1.png"] forState:UIControlStateNormal];
    //[self.addStatSmall addTarget:self action:@selector(addStat:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.addStatSmall];
    
    self.fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(180, 132, 80, 40)];
    self.fromLabel.backgroundColor = [UIColor clearColor];
    self.fromLabel.text = @"Add Stat";
    self.fromLabel.textColor = [UIColor colorWithRed:163.0f/255.0f green:173.0f/255.0f blue:192.0f/255.0f alpha:100];
    self.fromLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:14];
    
    [self.view addSubview:self.fromLabel];

    
    
    

    
    /////////////////
    /////////////////
    /////////////////

     self.viewResults = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.viewResults setFrame:CGRectMake(90, 435, 230, 70)];
    [self.viewResults setImage:[UIImage imageNamed:@"viewResults.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.viewResults addTarget:self action:@selector(viewResults:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.viewResults];
    
    [self popup];
    
    /*

    UIView *catView2 = [[UIView alloc] initWithFrame:CGRectMake(3, 415, 50, 25)];
    
    UIImage *image2 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView2.frame = catView2.bounds;
    
    // add the imageview to the superview
    [catView2 addSubview:imageView2];
    
    //add the view to the main view
    
    [self.view addSubview:catView2];
    
    UIView *catView3 = [[UIView alloc] initWithFrame:CGRectMake(56, 415, 50, 25)];
    
    UIImage *image3 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView3.frame = catView3.bounds;
    
    // add the imageview to the superview
    [catView3 addSubview:imageView3];
    
    //add the view to the main view
    
    [self.view addSubview:catView3];
    
    UIView *catView4 = [[UIView alloc] initWithFrame:CGRectMake(109, 415, 50, 25)];
    
    UIImage *image4 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView4 = [[UIImageView alloc] initWithImage:image4];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView4.frame = catView4.bounds;
    
    // add the imageview to the superview
    [catView4 addSubview:imageView4];
    
    //add the view to the main view
    
    [self.view addSubview:catView4];
    
    UIView *catView5 = [[UIView alloc] initWithFrame:CGRectMake(162, 415, 50, 25)];
    
    UIImage *image5 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView5 = [[UIImageView alloc] initWithImage:image5];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView5.frame = catView5.bounds;
    
    // add the imageview to the superview
    [catView5 addSubview:imageView5];
    
    //add the view to the main view
    
    [self.view addSubview:catView5];
    
    UIView *catView6 = [[UIView alloc] initWithFrame:CGRectMake(215, 415, 50, 25)];
    
    UIImage *image6 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView6 = [[UIImageView alloc] initWithImage:image6];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView6.frame = catView6.bounds;
    
    // add the imageview to the superview
    [catView6 addSubview:imageView6];
    
    //add the view to the main view
    
    [self.view addSubview:catView6];



    UIView *catView7 = [[UIView alloc] initWithFrame:CGRectMake(268, 415, 50, 25)];
    
    UIImage *image7 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView7 = [[UIImageView alloc] initWithImage:image7];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView7.frame = catView7.bounds;
    
    // add the imageview to the superview
    [catView7 addSubview:imageView7];
    
    //add the view to the main view
    
    [self.view addSubview:catView7];
    
    
    
//    UIView *catView8 = [[UIView alloc] initWithFrame:CGRectMake(273, 415, 50, 25)];
//    
//    UIImage *image8 = [UIImage imageNamed:@"lightgrey.png"];
//    UIImageView *imageView8 = [[UIImageView alloc] initWithImage:image8];
//    
//    //specify the frame of the imageView in the superview , here it will fill the superview
//    imageView8.frame = catView8.bounds;
//    
//    // add the imageview to the superview
//    [catView8 addSubview:imageView8];
//    
//    //add the view to the main view
//    
//    [self.view addSubview:catView8];
    
    UIView *catView9 = [[UIView alloc] initWithFrame:CGRectMake(26, 443, 50, 25)];
    
    UIImage *image9 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView9 = [[UIImageView alloc] initWithImage:image9];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView9.frame = catView9.bounds;
    
    // add the imageview to the superview
    [catView9 addSubview:imageView9];
    
    //add the view to the main view
    
    [self.view addSubview:catView9];
    
    UIView *catView10 = [[UIView alloc] initWithFrame:CGRectMake(79, 443, 50, 25)];
    
    UIImage *image10 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView10 = [[UIImageView alloc] initWithImage:image10];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView10.frame = catView10.bounds;
    
    // add the imageview to the superview
    [catView10 addSubview:imageView10];
    
    //add the view to the main view
    
    [self.view addSubview:catView10];

    UIView *catView11 = [[UIView alloc] initWithFrame:CGRectMake(132, 443, 50, 25)];
    
    UIImage *image11 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView11 = [[UIImageView alloc] initWithImage:image11];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView11.frame = catView11.bounds;
    
    // add the imageview to the superview
    [catView11 addSubview:imageView11];
    
    //add the view to the main view
    
    [self.view addSubview:catView11];

    UIView *catView12 = [[UIView alloc] initWithFrame:CGRectMake(185, 443, 50, 25)];
    
    UIImage *image12 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView12 = [[UIImageView alloc] initWithImage:image12];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView12.frame = catView12.bounds;
    
    // add the imageview to the superview
    [catView12 addSubview:imageView12];
    
    //add the view to the main view
    
    [self.view addSubview:catView12];
    
    UIView *catView13 = [[UIView alloc] initWithFrame:CGRectMake(238, 443, 50, 25)];
    
    UIImage *image13 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView13 = [[UIImageView alloc] initWithImage:image13];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView13.frame = catView13.bounds;
    
    // add the imageview to the superview
    [catView13 addSubview:imageView13];
    
    //add the view to the main view
    
    [self.view addSubview:catView13];

//
//    UIView *catView14 = [[UIView alloc] initWithFrame:CGRectMake(263, 443, 50, 25)];
//    
//    UIImage *image14 = [UIImage imageNamed:@"lightgrey.png"];
//    UIImageView *imageView14 = [[UIImageView alloc] initWithImage:image14];
//    
//    //specify the frame of the imageView in the superview , here it will fill the superview
//    imageView14.frame = catView14.bounds;
//    
//    // add the imageview to the superview
//    [catView14 addSubview:imageView14];
//    
//    //add the view to the main view
//    
//    [self.view addSubview:catView14];
//    

    UIView *catView15 = [[UIView alloc] initWithFrame:CGRectMake(3, 471, 50, 25)];
    
    UIImage *image15 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView15 = [[UIImageView alloc] initWithImage:image15];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView15.frame = catView15.bounds;
    
    // add the imageview to the superview
    [catView15 addSubview:imageView15];
    
    //add the view to the main view
    
    [self.view addSubview:catView15];

    UIView *catView16 = [[UIView alloc] initWithFrame:CGRectMake(56, 471, 50, 25)];
    
    UIImage *image16 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView16 = [[UIImageView alloc] initWithImage:image16];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView16.frame = catView16.bounds;
    
    // add the imageview to the superview
    [catView16 addSubview:imageView16];
    
    //add the view to the main view
    
    [self.view addSubview:catView16];

    UIView *catView17 = [[UIView alloc] initWithFrame:CGRectMake(109, 471, 50, 25)];
    
    UIImage *image17 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView17 = [[UIImageView alloc] initWithImage:image17];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView17.frame = catView17.bounds;
    
    // add the imageview to the superview
    [catView17 addSubview:imageView17];
    
    //add the view to the main view
    
    [self.view addSubview:catView17];
    
    UIView *catView18 = [[UIView alloc] initWithFrame:CGRectMake(162, 471, 50, 25)];
    
    UIImage *image18 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView18 = [[UIImageView alloc] initWithImage:image18];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView18.frame = catView18.bounds;
    
    // add the imageview to the superview
    [catView18 addSubview:imageView18];
    
    //add the view to the main view
    
    [self.view addSubview:catView18];


    UIView *catView19 = [[UIView alloc] initWithFrame:CGRectMake(215, 471, 50, 25)];
    
    UIImage *image19 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView19 = [[UIImageView alloc] initWithImage:image19];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView19.frame = catView19.bounds;
    
    // add the imageview to the superview
    [catView19 addSubview:imageView19];
    
    //add the view to the main view
    
    [self.view addSubview:catView19];
    
    UIView *catView20 = [[UIView alloc] initWithFrame:CGRectMake(268, 471, 50, 25)];
    
    UIImage *image20 = [UIImage imageNamed:@"lightgrey.png"];
    UIImageView *imageView20 = [[UIImageView alloc] initWithImage:image20];
    
    //specify the frame of the imageView in the superview , here it will fill the superview
    imageView20.frame = catView20.bounds;
    
    // add the imageview to the superview
    [catView20 addSubview:imageView20];
    
    //add the view to the main view
    
    [self.view addSubview:catView20];

    
//     UIView *catView21 = [[UIView alloc] initWithFrame:CGRectMake(273, 461, 40, 20)];
//     
//     UIImage *image21 = [UIImage imageNamed:@"lightgrey.png"];
//     UIImageView *imageView21 = [[UIImageView alloc] initWithImage:image21];
//     
//     //specify the frame of the imageView in the superview , here it will fill the superview
//     imageView21.frame = catView21.bounds;
//     
//     //add the imageview to the superview
//     [catView21 addSubview:imageView21];
//     
//     //add the view to the main view
//     
//     [self.view addSubview:catView21];
    
*/
    
    
    
    
    
    
    
    
    
    


}

- (void)popup
{
    /*
    UIView *AView1=[[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2,self.view.frame.size.height, 0, 0)];
    [AView1 setBackgroundColor:[UIColor colorWithRed:231.0f/255.0f green:234.0f/255.0f blue:235.0f/255.0f alpha:100]];
    [UIView animateWithDuration:0 animations:^{AView1.frame = CGRectMake(0, 410, self.view.frame.size.width, self.view.frame.size.height/6);}];
    [self.view addSubview:AView1];
     */
}


-(void)addStat:(UIButton *) sender
{
    
    
    if(!self.smallBlackOne) {
        self.smallBlackOne = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallBlackOne setFrame:CGRectMake(100, 130, 80, 45)];
        
        
        [self.smallBlackOne setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallBlackOne addTarget:self action:@selector(firstBlockA:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallBlackOne];
        
        self.smallGreyOne = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallGreyOne setFrame:CGRectMake(180, 130, 130, 45)];
        
        [self.smallGreyOne setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallGreyOne addTarget:self action:@selector(firstBlockB:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallGreyOne];
        
        POPSpringAnimation *basicAnimation = [POPSpringAnimation animation];
        basicAnimation.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation.toValue= [NSValue valueWithCGRect:CGRectMake(205, 220, 0, 0)];
        [self.addStatSmall pop_addAnimation:basicAnimation forKey:@"WhatEverNameYouWant"];
        
        POPSpringAnimation *basicAnimation2 = [POPSpringAnimation animation];
        basicAnimation2.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation2.toValue= [NSValue valueWithCGRect:CGRectMake(220, 220, 0, 0)];
        [self.fromLabel pop_addAnimation:basicAnimation2 forKey:@"anotherkey"];
        
        //NSInteger numberOfOptions =6;
        NSArray *options = @[
                             @"Rush Att",
                             @"Rush Yds",
                             @"Catches",
                             @"Yard Rec",
                             @"FanDuel Sal",
                             @"DraftKings Sal"
                             ];
        RNGridMenu *av = [[RNGridMenu alloc] initWithTitles:[options subarrayWithRange:NSMakeRange(0, [options count])]];
        av.delegate = self;
        //    av.itemTextAlignment = NSTextAlignmentLeft;
        av.itemFont = [UIFont boldSystemFontOfSize:18];
        av.itemSize = CGSizeMake(150, 55);
        av.title = @"what up ";
        
        [av showInViewController:self center:CGPointMake(self.view.bounds.size.width/2.f, self.view.bounds.size.height/2.f)];



    } else if (!self.smallBlackOne2){
        
    self.smallBlackOne2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallBlackOne2 setFrame:CGRectMake(100, 190, 80, 45)];
    
    [self.smallBlackOne2 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallBlackOne2 addTarget:self action:@selector(secondBlockA:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallBlackOne2];
    
    self.smallGreyOne2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallGreyOne2 setFrame:CGRectMake(180, 190, 130, 45)];
    
    [self.smallGreyOne2 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallGreyOne2 addTarget:self action:@selector(secondBlockB:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallGreyOne2];
        
        POPSpringAnimation *basicAnimation = [POPSpringAnimation animation];
        basicAnimation.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation.toValue= [NSValue valueWithCGRect:CGRectMake(205, 280, 0, 0)];
        [self.addStatSmall pop_addAnimation:basicAnimation forKey:@"WhatEverNameYouWant"];
        
        POPSpringAnimation *basicAnimation2 = [POPSpringAnimation animation];
        basicAnimation2.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation2.toValue= [NSValue valueWithCGRect:CGRectMake(220, 280, 0, 0)];
        [self.fromLabel pop_addAnimation:basicAnimation2 forKey:@"anotherkey"];

        NSArray *options = @[
                             @"Rush Att",
                             @"Rush Yds",
                             @"Catches",
                             @"Yard Rec",
                             @"FanDuel Sal",
                             @"DraftKings Sal"
                             ];
        RNGridMenu *av = [[RNGridMenu alloc] initWithTitles:[options subarrayWithRange:NSMakeRange(0, [options count])]];
        av.delegate = self;
        //    av.itemTextAlignment = NSTextAlignmentLeft;
        av.itemFont = [UIFont boldSystemFontOfSize:18];
        av.itemSize = CGSizeMake(150, 55);
        av.title = @"what up ";
        
        [av showInViewController:self center:CGPointMake(self.view.bounds.size.width/2.f, self.view.bounds.size.height/2.f)];
        

    
    
    } else if (!self.smallBlackOne3) {
        
        self.smallBlackOne3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallBlackOne3 setFrame:CGRectMake(100, 250, 80, 45)];
        
        [self.smallBlackOne3 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallBlackOne3 addTarget:self action:@selector(thirdBlockA:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallBlackOne3];
        
        self.smallGreyOne3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallGreyOne3 setFrame:CGRectMake(180, 250, 130, 45)];
        
        [self.smallGreyOne3 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallGreyOne3 addTarget:self action:@selector(thirdBlockB:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallGreyOne3];
        
        POPSpringAnimation *basicAnimation = [POPSpringAnimation animation];
        basicAnimation.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation.toValue= [NSValue valueWithCGRect:CGRectMake(205, 340, 0, 0)];
        [self.addStatSmall pop_addAnimation:basicAnimation forKey:@"WhatEverNameYouWant"];
        
        POPSpringAnimation *basicAnimation2 = [POPSpringAnimation animation];
        basicAnimation2.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation2.toValue= [NSValue valueWithCGRect:CGRectMake(220, 340, 0, 0)];
        [self.fromLabel pop_addAnimation:basicAnimation2 forKey:@"anotherkey"];
        
        NSArray *options = @[
                             @"Rush Att",
                             @"Rush Yds",
                             @"Catches",
                             @"Yard Rec",
                             @"FanDuel Sal",
                             @"DraftKings Sal"
                             ];
        RNGridMenu *av = [[RNGridMenu alloc] initWithTitles:[options subarrayWithRange:NSMakeRange(0, [options count])]];
        av.delegate = self;
        //    av.itemTextAlignment = NSTextAlignmentLeft;
        av.itemFont = [UIFont boldSystemFontOfSize:18];
        av.itemSize = CGSizeMake(150, 55);
        av.title = @"what up ";
        
        [av showInViewController:self center:CGPointMake(self.view.bounds.size.width/2.f, self.view.bounds.size.height/2.f)];
        


        
    } else if (!self.smallBlackOne4) {
        
        self.smallBlackOne4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallBlackOne4 setFrame:CGRectMake(100, 310, 80, 45)];
        
        [self.smallBlackOne4 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallBlackOne4 addTarget:self action:@selector(fourthBlockA:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallBlackOne4];
        
        self.smallGreyOne4 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallGreyOne4 setFrame:CGRectMake(180, 310, 130, 45)];
        
        [self.smallGreyOne4 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallGreyOne4 addTarget:self action:@selector(fourthBlockB:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallGreyOne4];
        
        POPSpringAnimation *basicAnimation = [POPSpringAnimation animation];
        basicAnimation.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation.toValue= [NSValue valueWithCGRect:CGRectMake(205, 400, 0, 0)];
        [self.addStatSmall pop_addAnimation:basicAnimation forKey:@"WhatEverNameYouWant"];
        
        POPSpringAnimation *basicAnimation2 = [POPSpringAnimation animation];
        basicAnimation2.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation2.toValue= [NSValue valueWithCGRect:CGRectMake(220, 400, 0, 0)];
        [self.fromLabel pop_addAnimation:basicAnimation2 forKey:@"anotherkey"];
        
        NSArray *options = @[
                             @"Rush Att",
                             @"Rush Yds",
                             @"Catches",
                             @"Yard Rec",
                             @"FanDuel Sal",
                             @"DraftKings Sal"
                             ];
        RNGridMenu *av = [[RNGridMenu alloc] initWithTitles:[options subarrayWithRange:NSMakeRange(0, [options count])]];
        av.delegate = self;
        //    av.itemTextAlignment = NSTextAlignmentLeft;
        av.itemFont = [UIFont boldSystemFontOfSize:18];
        av.itemSize = CGSizeMake(150, 55);
        av.title = @"what up ";
        
        [av showInViewController:self center:CGPointMake(self.view.bounds.size.width/2.f, self.view.bounds.size.height/2.f)];
        


        
    } else if (!self.smallBlackOne5) {

        self.smallBlackOne5 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallBlackOne5 setFrame:CGRectMake(100, 370, 80, 45)];
        
        [self.smallBlackOne5 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallBlackOne5 addTarget:self action:@selector(fifthBlockA:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallBlackOne5];
        
        self.smallGreyOne5 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.smallGreyOne5 setFrame:CGRectMake(180, 370, 130, 45)];
        
        [self.smallGreyOne5 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
        //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
        [self.smallGreyOne5 addTarget:self action:@selector(fifthBlockB:) forControlEvents:UIControlEventTouchDown];
        [self.view addSubview:self.smallGreyOne5];
        
        POPSpringAnimation *basicAnimation = [POPSpringAnimation animation];
        basicAnimation.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation.toValue= [NSValue valueWithCGRect:CGRectMake(205, 460, 0, 0)];
        [self.addStatSmall pop_addAnimation:basicAnimation forKey:@"WhatEverNameYouWant"];
        
        POPSpringAnimation *basicAnimation2 = [POPSpringAnimation animation];
        basicAnimation2.property = [POPAnimatableProperty propertyWithName: kPOPLayerPosition];
        basicAnimation2.toValue= [NSValue valueWithCGRect:CGRectMake(220, 280, 0, 0)];
        [self.fromLabel pop_addAnimation:basicAnimation2 forKey:@"anotherkey"];
        
        NSArray *options = @[
                             @"Rush Att",
                             @"Rush Yds",
                             @"Catches",
                             @"Yard Rec",
                             @"FanDuel Sal",
                             @"DraftKings Sal"
                             ];
        RNGridMenu *av = [[RNGridMenu alloc] initWithTitles:[options subarrayWithRange:NSMakeRange(0, [options count])]];
        av.delegate = self;
        //    av.itemTextAlignment = NSTextAlignmentLeft;
        av.itemFont = [UIFont boldSystemFontOfSize:18];
        av.itemSize = CGSizeMake(150, 55);
        av.title = @"what up ";
        
        [av showInViewController:self center:CGPointMake(self.view.bounds.size.width/2.f, self.view.bounds.size.height/2.f)];
        



    }
    
}




-(void)viewResults:(UIButton *) sender
{
    
    [self.qbPositionButton removeFromSuperview];
    [self.rbPositionButton removeFromSuperview];
    [self.wrPositionButton removeFromSuperview];
    [self.tePositionButton removeFromSuperview];
    [self.dePositionButton removeFromSuperview];
    
    [self.smallGreyOne removeFromSuperview];
    [self.smallGreyOne2 removeFromSuperview];
    [self.smallGreyOne3 removeFromSuperview];
    [self.smallGreyOne4 removeFromSuperview];
    [self.smallGreyOne5 removeFromSuperview];
    [self.smallBlackOne removeFromSuperview];
    [self.smallBlackOne2 removeFromSuperview];
    [self.smallBlackOne3 removeFromSuperview];
    [self.smallBlackOne4 removeFromSuperview];
    [self.smallBlackOne5 removeFromSuperview];

    [self.fromLabel removeFromSuperview];
    [self.fromLabelQB removeFromSuperview];
    [self.fromLabelRB removeFromSuperview];
    [self.fromLabelWR removeFromSuperview];
    [self.fromLabelTE removeFromSuperview];
    [self.fromLabelDE removeFromSuperview];
    
    [self.addStatSmall removeFromSuperview];
    
    [self.testButnFirst removeFromSuperview];
    [self.viewResults removeFromSuperview];
    
    [self.leagueButton removeFromSuperview];
    [self.darkRectangle removeFromSuperview];
    
    ////////////////////

    ////////////////////
    
    self.tableView.scrollEnabled = YES;

    
    
    
}


-(void)methodName: (UIButton *) sender
{
    
    [self.view addSubview:self.darkRectangle];
    self.testButnFirst = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"greenBackground.png"]];
    [self.testButnFirst setFrame:CGRectMake(90, 0, 260, 505)];
    
    //[testButnFirst setImage:[UIImage imageNamed:@"greenBackground.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    //[self.testButnFirst addTarget:self action:@selector(stayPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.testButnFirst];
    
    self.leagueButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.leagueButton setFrame:CGRectMake(100, 25, 210, 45)];
    
    [self.leagueButton setImage:[UIImage imageNamed:@"textFieldDarkBig.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.leagueButton addTarget:self action:@selector(qbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.leagueButton];
    
    self.qbPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.qbPositionButton setFrame:CGRectMake(100, 85, 37, 28)];
    //UIImage *image = [[UIImage imageNamed:@"smallGreyRectangle.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //UILabel *qbLabel = [[UILabel alloc] initWithFrame:CGRectMake(155, 82, 40, 40)];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //qbPositionButton.tintColor = [UIColor redColor];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.qbPositionButton addTarget:self action:@selector(qbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.qbPositionButton];
    
    self.fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(106, 78, 40, 40)];
    self.fromLabel.backgroundColor = [UIColor clearColor];
    self.fromLabel.text = @"QB";
    self.fromLabel.textColor = [UIColor whiteColor];
    self.fromLabel.textAlignment = NSTextAlignmentLeft;
    self.fromLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabel];
    
    self.rbPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.rbPositionButton setFrame:CGRectMake(143, 85, 37, 28)];
    
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.rbPositionButton addTarget:self action:@selector(rbPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.rbPositionButton];
    
    self.fromLabelRB = [[UILabel alloc]initWithFrame:CGRectMake(150, 78, 40, 40)];
    self.fromLabelRB.backgroundColor = [UIColor clearColor];
    self.fromLabelRB.text = @"RB";
    self.fromLabelRB.textColor = [UIColor whiteColor];
    self.fromLabelRB.textAlignment = NSTextAlignmentLeft;
    self.fromLabelRB.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelRB];
    
    
    
    self.wrPositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.wrPositionButton setFrame:CGRectMake(186, 85, 37, 28)];
    
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.wrPositionButton addTarget:self action:@selector(wrPressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.wrPositionButton];
    
    self.fromLabelWR = [[UILabel alloc]initWithFrame:CGRectMake(190, 78, 40, 40)];
    self.fromLabelWR.backgroundColor = [UIColor clearColor];
    self.fromLabelWR.text = @"WR";
    self.fromLabelWR.textColor = [UIColor whiteColor];
    self.fromLabelWR.textAlignment = NSTextAlignmentLeft;
    self.fromLabelWR.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelWR];
    
    
    self.tePositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.tePositionButton setFrame:CGRectMake(230, 85, 37, 28)];
    
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.tePositionButton addTarget:self action:@selector(tePressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.tePositionButton];
    
    self.fromLabelTE = [[UILabel alloc]initWithFrame:CGRectMake(238, 78, 40, 40)];
    self.fromLabelTE.backgroundColor = [UIColor clearColor];
    self.fromLabelTE.text = @"TE";
    self.fromLabelTE.textColor = [UIColor whiteColor];
    self.fromLabelTE.textAlignment = NSTextAlignmentLeft;
    self.fromLabelTE.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelTE];
    
    
    self.dePositionButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.dePositionButton setFrame:CGRectMake(272, 85, 37, 28)];
    
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.dePositionButton addTarget:self action:@selector(dePressed:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.dePositionButton];
    
    self.fromLabelDE = [[UILabel alloc]initWithFrame:CGRectMake(279, 78, 40, 40)];
    self.fromLabelDE.backgroundColor = [UIColor clearColor];
    self.fromLabelDE.text = @"DE";
    self.fromLabelDE.textColor = [UIColor whiteColor];
    self.fromLabelDE.textAlignment = NSTextAlignmentLeft;
    self.fromLabelDE.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16];
    
    [self.view addSubview:self.fromLabelDE];
    
    
    
    
    
    self.smallBlackOne = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallBlackOne setFrame:CGRectMake(100, 135, 80, 45)];
    
    
    [self.smallBlackOne setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallBlackOne addTarget:self action:@selector(firstBlockA:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallBlackOne];
    
    self.smallGreyOne = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallGreyOne setFrame:CGRectMake(180, 135, 130, 45)];
    
    [self.smallGreyOne setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallGreyOne addTarget:self action:@selector(firstBlockB:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallGreyOne];
    
    
    self.smallBlackOne2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallBlackOne2 setFrame:CGRectMake(100, 200, 80, 45)];
    
    [self.smallBlackOne2 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallBlackOne2 addTarget:self action:@selector(secondBlockA:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallBlackOne2];
    
    self.smallGreyOne2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallGreyOne2 setFrame:CGRectMake(180, 200, 130, 45)];
    
    [self.smallGreyOne2 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallGreyOne2 addTarget:self action:@selector(secondBlockB:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallGreyOne2];
    
    self.smallBlackOne3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallBlackOne3 setFrame:CGRectMake(100, 265, 80, 45)];
    
    [self.smallBlackOne3 setImage:[UIImage imageNamed:@"textFieldDarkSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallBlackOne3 addTarget:self action:@selector(thirdBlockA:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallBlackOne3];
    
    self.smallGreyOne3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.smallGreyOne3 setFrame:CGRectMake(180, 265, 130, 45)];
    
    [self.smallGreyOne3 setImage:[UIImage imageNamed:@"textFieldLightSmall.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.smallGreyOne3 addTarget:self action:@selector(thirdBlockB:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.smallGreyOne3];
    
    
    
    self.viewResults = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.viewResults setFrame:CGRectMake(90, 435, 230, 70)];
    [self.viewResults setImage:[UIImage imageNamed:@"viewResults.png"] forState:UIControlStateNormal];
    //[testButn setImage:[UIImage imageNamed:@"New_PICT0002.jpg"]   forState:UIControlStateSelected];
    [self.viewResults addTarget:self action:@selector(viewResults:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.viewResults];

}

-(void)leagueAction:(UIButton *) sender
{
}
-(void)firstBlockA:(UIButton *) sender
{
}
-(void)firstBlockB:(UIButton *) sender
{
}
-(void)secondBlockA:(UIButton *) sender
{
}
-(void)secondBlockB:(UIButton *) sender
{
}
-(void)thirdBlockA:(UIButton *) sender
{
}
-(void)thirdBlockB:(UIButton *) sender
{
}
-(void)fourthBlockA:(UIButton *) sender
{
}
-(void)fourthBlockB:(UIButton *) sender
{
}
-(void)fifthBlockA:(UIButton *) sender
{
}
-(void)fifthBlockB:(UIButton *) sender
{
}




-(void)qbPressed:(UIButton *) sender {
    
    
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.qbPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"turqoiseQBButton.png"] forState:UIControlStateNormal];
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    
    

    self.positionString = [NSString stringWithFormat:@"QB"];

  
    
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
        
    }
    
    
    
}
-(void)rbPressed:(UIButton *) sender {
    
    
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.rbPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.rbPositionButton setImage:[UIImage imageNamed:@"greenRBButton.png"] forState:UIControlStateNormal];
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    
    self.positionString = [NSString stringWithFormat:@"RB"];

    
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
    
    
    
}
-(void)wrPressed:(UIButton *) sender {
    
    
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.wrPositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.wrPositionButton setImage:[UIImage imageNamed:@"yellowWRButton.png"] forState:UIControlStateNormal];
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    
    self.positionString = [NSString stringWithFormat:@"WR"];

    
    //[self.qbPositionButton removeFromSuperview];
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
    
    
    
}
-(void)tePressed:(UIButton *) sender
{
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.tePositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.tePositionButton setImage:[UIImage imageNamed:@"orangeTEButton.png"] forState:UIControlStateNormal];
    [self.dePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    
    self.positionString = [NSString stringWithFormat:@"TE"];

    
    //[self.qbPositionButton removeFromSuperview];
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
    
}
-(void)dePressed:(UIButton *) sender
{
    
    POPSpringAnimation *sprintAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    sprintAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(1, 1)];
    sprintAnimation.velocity = [NSValue valueWithCGPoint:CGPointMake(4, 4)];
    sprintAnimation.springBounciness = 20.f;
    [self.dePositionButton pop_addAnimation:sprintAnimation forKey:@"size"];
    
    [self.qbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.rbPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.wrPositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.tePositionButton setImage:[UIImage imageNamed:@"smallGreyRectangle.png"] forState:UIControlStateNormal];
    [self.dePositionButton setImage:[UIImage imageNamed:@"purpleDEButton.png"] forState:UIControlStateNormal];
    
    self.positionString =[NSString stringWithFormat:@"DE"];


    //[self.qbPositionButton removeFromSuperview];
    if (sender.selected == YES) {
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
    
}

- (void)gridMenu:(RNGridMenu *)gridMenu willDismissWithSelectedItem:(RNGridMenuItem *)item atIndex:(NSInteger)itemIndex {
    //[self.firstFilter removeFromSuperview];
    
    /*
     PFQuery *firstQuery = [PFQuery queryWithClassName:@"Teams"];
     [firstQuery whereKey:@"string" equalTo:@"hello"];
     [firstQuery findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
     NSLog(@"%@", [objects valueForKey:@"string"]);
     
     
     }];
     */
   
    
    
    //self.firstFirst.text = [NSString stringWithFormat:@"%@", item.title];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    
    //NSLog(@" in method 1");
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //NSLog(@" in method 2");
    // Return the number of rows in the section.
    if (_players){
        return [_players count];
        
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath    *)indexPath {
    
    //NSLog(@" in method 3");
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault   reuseIdentifier:CellIdentifier];
    }
    
    if( !cell ) {
        // create the cell and stuff
    }
    if( [indexPath row] % 2)
        [cell setBackgroundColor:[UIColor colorWithRed:224.0f/255.0f green:227.0f/255.0f blue:229.0f/255.0f alpha:100]];
    else
        [cell setBackgroundColor:[UIColor colorWithRed:231.0f/255.0f green:234.0f/255.0f blue:235.0f/255.0f alpha:100]];
    
    
    
    
    cell.textLabel.text = [_players objectAtIndex:indexPath.row];
    

    
    cell.detailTextLabel.text = [_players objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"smallGreyRectangle.png"];
    return cell;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


@end
