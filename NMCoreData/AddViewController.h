//
//  AddViewController.h
//  NMCoreData
//
//  Created by Namrata on 07/11/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController<UITextFieldDelegate>
{
    UISegmentedControl *localSegment;
}
- (IBAction)ActionCancel:(id)sender;
- (IBAction)ActionSave:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textField1;
@property (strong, nonatomic) IBOutlet UITextField *textField2;

@property (strong, nonatomic) IBOutlet UITextField *textField3;
- (IBAction)SecondSegment:(id)sender;


@end
