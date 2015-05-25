//
//  InterfaceController3.m
//  WatchKit_Tableview_Demo
//
//  Created by Tops on 23/04/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "InterfaceController3.h"


@interface InterfaceController3()

@end


@implementation InterfaceController3

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self.lblTitle setText:@"Long tap to screen and see the magic :)"];
    // Configue interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)btnRightClick {
    [self.lblTitle setText:@"You Selected Right"];
}

- (IBAction)btnWrongClick {
    [self.lblTitle setText:@"You Selected Wrong"];
}

- (IBAction)btnMoreInfoClick {
    [self.lblTitle setText:@"You want More Info"];
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(InputText) userInfo:nil repeats:NO];
}
-(void)InputText
{
    [self presentTextInputControllerWithSuggestions:@[@"somthing",@"nothing",@"happy"] allowedInputMode:WKTextInputModeAllowEmoji completion:^(NSArray *results) {
        NSLog(@"hey this is selected text--->%@",results);
    }];
}
- (IBAction)btnShareClick {
    [self.lblTitle setText:@"You want to share it"];
}


@end



