//
//  InterfaceController.m
//  WatchKit_Tableview_Demo WatchKit Extension
//
//  Created by Tops on 23/04/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "InterfaceController.h"
#import "rowCell.h"

@interface InterfaceController()
{
    NSMutableArray *arrDATA;
}
@end


@implementation InterfaceController

#pragma mark - View cycle methods
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    arrDATA=[[NSMutableArray alloc] init];
    
    [arrDATA addObject:@"Red color"];
    [arrDATA addObject:@"Blue color"];
    [arrDATA addObject:@"yellow color"];
    [arrDATA addObject:@"Green color"];
    [arrDATA addObject:@"White color"];
    [arrDATA addObject:@"grey color"];
    
    // Configure interface objects here.
}
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self LoadTableview];
}
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark -- Table view load and did selected method
-(void)LoadTableview
{
    [self.tblview setNumberOfRows:arrDATA.count withRowType:@"Mycell"];
    
    for (int i=0; i<arrDATA.count; i++)
    {
        rowCell *cell =[self.tblview rowControllerAtIndex:i];
        [cell.lblTitle setText:arrDATA[i]];
        
    }
}
- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSLog(@"selected index---->%ld",(long)rowIndex);
}


#pragma mark --Segue methods for passing value between two intreface  controller
- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier
{
    
    
    return nil;
}
- (NSArray *)contextsForSegueWithIdentifier:(NSString *)segueIdentifier
{
    
    return nil;
}
- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex
{
    
    
    return arrDATA[rowIndex];
}
- (NSArray *)contextsForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex
{
    
    return nil;
}
@end



