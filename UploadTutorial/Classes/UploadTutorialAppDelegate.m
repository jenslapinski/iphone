//
//  UploadTutorialAppDelegate.m
//  UploadTutorial
//
//  Created by Daniel on 29/03/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UploadTutorialAppDelegate.h"

@implementation UploadTutorialAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
