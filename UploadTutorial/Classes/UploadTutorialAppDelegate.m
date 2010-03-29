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

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
 	NSLog(@"Response Recieved");
	NSLog(@"Response Code: %d", [response statusCode]);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	NSLog(@"Data Recieved");
	NSString *content = [NSString stringWithUTF8String:[data bytes]];
	NSLog(@"DATA: %@",content);
}


@end
