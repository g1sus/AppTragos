//
//  barCell.h
//  tragos
//
//  Created by Jesus Antonio Hernandez Mendez on 19/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/PFTableViewCell> 


@interface barCell : UITableViewCell
//img
@property (strong, nonatomic) IBOutlet UIImageView *imgBarCell;

//labels
@property (strong, nonatomic) IBOutlet UILabel *lblNombreBar;
@property (strong, nonatomic) IBOutlet UILabel *lblDesBar;


@end
