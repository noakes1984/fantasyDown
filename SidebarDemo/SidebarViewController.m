//
//  SidebarViewController.m
//  SidebarDemo
//
//  Created by Simon on 29/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "SidebarViewController.h"
#import "SWRevealViewController.h"

@interface SidebarViewController ()

//@property (nonatomic, strong) NSArray *menuItems;
@end
@implementation SidebarViewController {
    NSArray *menuItems;
}



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ///////////////////////////////
    
    UIFont * customFont = [UIFont fontWithName:@"Helvetica Neue" size:17]; //custom font
   // NSString * text = [self fromSender];
    
    //CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(380, 20) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(80, 150, 80, 40)];
    fromLabel.text = @"Helvetica Neue";
    fromLabel.font = customFont;
    fromLabel.numberOfLines = 1;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    //fromLabel.adjustsLetterSpacingToFitWidth = YES;
    //fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor = [UIColor whiteColor];
    //fromLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:fromLabel];
    
    
    
    
    
    
    
    
    
    
    ////////////////////////////////
    
    UIImageView *imgview = [[UIImageView alloc]
                            initWithFrame:CGRectMake(100, 60, 75, 75)];
    [imgview setImage:[UIImage imageNamed:@"Oval 19.png"]];
    //[imgview setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgview];
    
    
    menuItems = @[@"news", @"comments", @"map", @"calendar"];
    UIColor *thisColor = [UIColor colorWithRed:47.0f/255.0f green:65.0f/255.0f blue:78.0f/255.0f alpha:1.0f];
    
    //self.fantasyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.topImage setBackgroundColor:thisColor];
    [self.bottomButton setBackgroundColor:[UIColor colorWithRed:29.0f/255.0f green:140.0f/255.0f blue:121.0f/255.0f alpha:1.0f]];
    [self.tableView setSeparatorColor:[UIColor colorWithRed:55.0f/255.0f green:147.0f/255.0f blue:130.0f/255.0f alpha:1.0f]];

    [self.view setBackgroundColor:[UIColor colorWithRed:29.0f/255.0f green:140.0f/255.0f blue:121.0f/255.0f alpha:1.0f]];
    
    //self.topImage.frame = CGRectMake(180, 50, 100, 100);

    
    //Labels
    self.addLeague.textColor = [UIColor whiteColor];

}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    CGSize constraintSize = {230.0, 20000}; //230 is cell width & 20000 is max height for cell
    //CGSize neededSize = [ [NSString stringWithFormat:@"%@",[cellar objectAtIndex:indexPath.row]] sizeWithFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:15.0f] constrainedToSize:constraintSize  lineBreakMode:UILineBreakModeCharacterWrap];
    
    
    //return MAX(45, neededSize.height +33);
    
    return constraintSize
}
*/
#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return menuItems.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    
    //cell = [[UITableViewCell alloc] initWithStyle:nil reuseIdentifier:CellIdentifier];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    cell.backgroundColor = [UIColor colorWithRed:29.0f/255.0f green:140.0f/255.0f blue:121.0f/255.0f alpha:1.0f];
    
    //cell.textLabel.textColor = [UIColor whiteColor];
    
//cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0,0,90,90)];
    
    //cell.frame.size.height = ;
    
    return cell;
}
@end
