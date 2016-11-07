//
//  TV+CoreDataProperties.h
//  NMCoreData
//
//  Created by Namrata on 07/11/16.
//  Copyright © 2016 Namrata Mahajan. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TV.h"

NS_ASSUME_NONNULL_BEGIN

@interface TV (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *model;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *year;

@end

NS_ASSUME_NONNULL_END
