//
//  SmartPone+CoreDataProperties.h
//  NMCoreData
//
//  Created by Namrata on 07/11/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "SmartPone.h"

NS_ASSUME_NONNULL_BEGIN

@interface SmartPone (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *company;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *price;

@end

NS_ASSUME_NONNULL_END
