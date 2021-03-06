//
//  AppDelegate.m
//  Example DataBase Project
//
//  Created by Adam Szeptycki on 02/11/13.
//  Copyright (c) 2013 Adam Szeptycki. All rights reserved.
//

#import "AppDelegate.h"
#import "Database.h"
@implementation AppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;


+ (NSString*)generateRandomString:(int)num {
    NSMutableString* string = [NSMutableString stringWithCapacity:num];
    for (int i = 0; i < num; i++) {
        [string appendFormat:@"%C", (unichar)('a' + arc4random_uniform(25))];
    }
    return string;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    for (int i = 0; i<100; ++i) {
//        NSString *devName = [NSString stringWithFormat:@"Developer: %@",[AppDelegate generateRandomString:6]];
//        NSString *platform = [AppDelegate generateRandomString:2];
//        NSMutableSet *projects = [[NSMutableSet alloc]initWithCapacity:100];
//        for (int j = 0; j<10; ++j) {
//            NSString *projectName = [NSString stringWithFormat:@"Project: %@",[AppDelegate generateRandomString:6]];
//            id c = [[NTDatabase sharedInstance] mainContext];
//            NSManagedObjectID *objectId = [[NTDatabase sharedInstance]addProjectWithName:projectName budget:j*2 andID:j inContext:c];
//            NSManagedObject *object = [[[NTDatabase sharedInstance] mainContext] objectWithID:objectId];
//            [projects addObject:object];
//        }
//        [[NTDatabase sharedInstance] addDeveloperWithName:devName andID:i withPlatform:platform withExperience:i%5 andProjects:projects withCompetionBlock:nil];
//    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
}
#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
