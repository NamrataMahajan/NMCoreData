//
//  AddViewController.m
//  NMCoreData
//
//  Created by Namrata on 07/11/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//

#import "AddViewController.h"
#import "AppDelegate.h"


@interface AddViewController ()

@end

@implementation AddViewController

-(NSManagedObjectContext *)managedObjectContext {
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        
        context = [delegate managedObjectContext];
    }
    return context;
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    if (textField == self.textField1) {
        [self.textField2 resignFirstResponder];
        
    }
    else if (textField == self.textField3) {
        
        [self.textField3 resignFirstResponder];
    }
    
    
    return YES;
    
}




- (IBAction)ActionCancel:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
}

-(void)alertWithTitle: (NSString *)title message:(NSString *)message {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *OK =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
        [self viewDidLoad];
    }];
    
    [alert addAction:OK];
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)ActionSave:(id)sender {
    NSString *firstField = self.textField1.text;
    
    NSString *secondField = self.textField2.text;
    
    NSString *thirdField = self.textField3.text;
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {
                
                if (thirdField.length>0) {
                    
                    
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"TV" inManagedObjectContext:context];
                    
                    [newDevice setValue:firstField forKey:@"model"];
                    
                    [newDevice setValue:secondField forKey:@"name"];
                    
                    [newDevice setValue:thirdField forKey:@"year"];
                    
                    
                    //                    NSLog(@"%@",firstField);
                    //
                    //                    NSLog(@"%@",secondField);
                    //                    NSLog(@"%@",thirdField);
                    
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        
                        NSLog(@"Saved");
                        
                        [self alertWithTitle:@"Saved!" message:@""];
                        
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                    else{
                        NSLog(@"Unable to save : %@",error.localizedDescription);
                        
                        [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];
                        
                        
                    }
                }
            }
        }
    }
    if (localSegment.selectedSegmentIndex == 1) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {
                
                if (thirdField.length>0) {
                    
                    
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"SmartPone" inManagedObjectContext:context];
                    
                    [newDevice setValue:firstField forKey:@"company"];
                    
                    [newDevice setValue:secondField forKey:@"name"];
                    
                    [newDevice setValue:thirdField forKey:@"price"];
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        
                        NSLog(@"Saved");
                        
                        [self alertWithTitle:@"Saved!" message:@""];
                        
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                    else{
                        NSLog(@"Unable to save : %@",error.localizedDescription);
                        
                        [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];
                        
                        
                    }
                }
            }
        }
    }
    if (localSegment.selectedSegmentIndex == 2) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {
                
                
                NSManagedObjectContext *context = [self managedObjectContext];
                
                NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"AC" inManagedObjectContext:context];
                
                [newDevice setValue:firstField forKey:@"model"];
                
                [newDevice setValue:secondField forKey:@"price"];
                
                
                
                NSError *error;
                
                if ([context save:&error]) {
                    
                    NSLog(@"Saved");
                    
                    [self alertWithTitle:@"Saved!" message:@""];
                    
                    
                    [self.navigationController popViewControllerAnimated:YES];
                }
                else{
                    NSLog(@"Unable to save : %@",error.localizedDescription);
                    
                    [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];
                    
                    
                }
            }
        }
    }
    
}
- (IBAction)SecondSegment:(id)sender {
    localSegment = sender;
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        [self.textField3 setHidden:NO];
        
        [_textField1 setPlaceholder:@"Enter Model:"];
        
        [_textField2 setPlaceholder:@"Enter Price:"];
        
        [_textField3 setPlaceholder:@"Enter Year:"];
        
        
        [self ActionSave:sender];
    }
    else if (localSegment.selectedSegmentIndex == 1) {
        
        [self.textField3 setHidden:NO];
        
        [_textField1 setPlaceholder:@"Enter Name:"];
        
        [_textField2 setPlaceholder:@"Enter Company:"];
        
        [_textField3 setPlaceholder:@"Enter Price:"];
        
        [self ActionSave:sender];
    }
    else if (localSegment.selectedSegmentIndex == 2) {
        
        [self.textField3 setHidden:YES];
        
        
        [_textField1 setPlaceholder:@"Enter Model:"];
        
        [_textField2 setPlaceholder:@"Enter Price:"];
        
        
        [self ActionSave:sender];
    }
    
}
@end
