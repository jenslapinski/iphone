//
//  UploadTutorialAppDelegate.m
//  UploadTutorial
//
//  Created by Daniel on 29/03/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "UploadTutorialAppDelegate.h"
#import "UploadTutorialViewController.h"

@implementation UploadTutorialAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
