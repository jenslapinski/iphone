@interface EPUploader : NSObject {
	NSURL *serverURL;
	NSString *filePath;
	id delegate;
	SEL doneSelector;
	SEL errorSelector;
	
	BOOL uploadDidSucceed;
}

-   (id)initWithURL: (NSURL *)serverURL 
					 filePath: (NSString *)filePath 
					 delegate: (id)delegate 
			 doneSelector: (SEL)doneSelector 
			errorSelector: (SEL)errorSelector;

-   (NSString *)filePath;

@end
