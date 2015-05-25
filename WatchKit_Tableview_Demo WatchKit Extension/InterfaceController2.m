//
//  InterfaceController2.m
//  WatchKit_Tableview_Demo
//
//  Created by Tops on 23/04/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "InterfaceController2.h"


@interface InterfaceController2()
- (IBAction)btnNextClick;


@end


@implementation InterfaceController2

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    NSLog(@"Previce value ---->%@",context);
    [self.lblTitle setText:context];

    if ([context isEqualToString:@"Red color"])
    {
        [self.lblTitle setTextColor:[UIColor redColor]];
    }
    else if ([context isEqualToString:@"Blue color"]){
        [self.lblTitle setTextColor:[UIColor blueColor]];
    }
    else if ([context isEqualToString:@"yellow color"]){
        [self.lblTitle setTextColor:[UIColor yellowColor]];
    }
    else if ([context isEqualToString:@"Green color"]){
      [self.lblTitle setTextColor:[UIColor greenColor]];
    }
    else if ([context isEqualToString:@"grey color"])
    {
        [self.lblTitle setTextColor:[UIColor grayColor]];
    }
    else
    {
       [self.lblTitle setText:@"Sorry,no color define!"];
       [self.lblTitle setTextColor:[UIColor whiteColor]];
    }
}

- (void)willActivate {
    [super willActivate];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)btnNextClick {
//    [self presentTextInputControllerWithSuggestions:@[@"somthing",@"nothing",@"happy"] allowedInputMode:WKTextInputModeAllowEmoji completion:^(NSArray *results) {
//        NSLog(@"hey this is selected text--->%@",results);
//    }];
}
@end



