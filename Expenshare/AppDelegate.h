//
//  AppDelegate.h
//  Expenshare
//
//  Created by El Capitan on 07/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

