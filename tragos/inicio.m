//
//  inicioTableViewController.m
//  tragos
//
//  Created by Jesus Antonio Hernandez Mendez on 19/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "inicio.h"
#import "barCell.h"
#import <Parse/Parse.h>
#import <ParseUI/PFTableViewCell.h> 

@interface inicio ()

@end

@implementation inicio

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title =@"Tragos Coquetos";
    
    //PFObject *objTemp = [PFObject objectWithClassName:@"tragos"];
    //objTemp[@"nombre"] = @"La Costumbre";
    //[objTemp saveInBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithClassName:@"bar"];
    self = [super initWithCoder:aDecoder];
    if (self) {
        // The className to query on
        self.parseClassName = @"name";
        
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        
        // Whether the built-in pagination is enabled
        self.paginationEnabled = YES;
        
        // The number of objects to show per page
        self.objectsPerPage = 9;
    }
    return self;
}

#pragma mark - PFQueryTableViewController

// Override to customize the look of a cell representing an object. The default is to display
// a UITableViewCellStyleDefault style cell with the label being the textKey in the object,
// and the imageView being the imageKey in the object.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object {
    static NSString *CellIdentifier = @"celdaBar";
    
    barCell *cell = (barCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[barCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell
    
    cell.lblNombreBar.text = [object objectForKey:@"name"];
    cell.lblDesBar.text = [object objectForKey:@"descripcion"];
    
    //cell.textLabel.text = [object objectForKey:@"name"];
    //cell.detailTextLabel.text = [dateFormatter stringFromDate:date];
    //cell.imageView.image = [UIImage imageNamed:@"note"];
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
}
- (IBAction)btnNewItem:(id)sender {
}
@end
