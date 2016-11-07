//
//  ViewController.h
//  NMCoreData
//
//  Created by Namrata on 06/11/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *tvArray;
    NSMutableArray *smartPhoneArray;
    NSMutableArray *acArray;
    UISegmentedControl *SegmentControl;
    

}
- (IBAction)AddAction:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableVeiw;

- (IBAction)SegmentFirst:(id)sender;

@end

