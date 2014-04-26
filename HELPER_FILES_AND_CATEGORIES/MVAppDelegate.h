//
//  MVAppDelegate.h
//  HELPER_FILES_AND_CATEGORIES
//
//  Created by Matthew Voss on 4/25/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
