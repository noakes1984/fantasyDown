//
//  PlayerTableViewCell.m
//  upfantasy
//
//  Created by Caleb Foster on 8/22/14.
//  Copyright (c) 2014 MATTHEW NOAKES. All rights reserved.
//

#import "PlayerTableViewCell.h"

@implementation PlayerTableViewCell

@synthesize name;
@synthesize points;
@synthesize position;
@synthesize playerPosition;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //Initialization code
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
