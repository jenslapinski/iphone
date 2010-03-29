//
//  UploadTutorialAppDelegate.h
//  UploadTutorial
//
//  Created by Daniel on 29/03/2010.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UploadTutorialViewController;

@interface UploadTutorialAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UploadTutorialViewController *viewController;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;
	
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UploadTutorialViewController *viewController;

@end

