//
//  PlayerTableViewCell.h
//  upfantasy
//
//  Created by Caleb Foster on 8/22/14.
//  Copyright (c) 2014 MATTHEW NOAKES. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *name;
@property (nonatomic, weak) IBOutlet UILabel *points;
@property (nonatomic, weak) IBOutlet UILabel *position;
@property (nonatomic, weak) IBOutlet UILabel *playerPosition;
@property (nonatomic, weak) IBOutlet UILabel *team;


@end
