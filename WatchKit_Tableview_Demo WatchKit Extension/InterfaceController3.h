//
//  InterfaceController3.h
//  WatchKit_Tableview_Demo
//
//  Created by Tops on 23/04/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController3 : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *lblTitle;
- (IBAction)btnRightClick;
- (IBAction)btnWrongClick;
- (IBAction)btnMoreInfoClick;
- (IBAction)btnShareClick;

@end
