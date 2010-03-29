#import "UploadTutorialViewController.h"
#import "UploadTutorialAppDelegate.h"

//#import "EPUploader.h"

@implementation UploadTutorialViewController

@synthesize imageView;;
@synthesize smileyView;
@synthesize commentField;
@synthesize getPhotoButton;
@synthesize uploadPhotoButton;
@synthesize commentPreview;

@synthesize smileyMood;
@synthesize commentMood;

-(IBAction) moodHappy:(id) sender {
	NSLog(@"Happy");
	smileyView.image = [UIImage imageNamed:@"happy.jpg"];
	smileyMood = @"happy";
}

-(IBAction) moodAngry:(id) sender {
	NSLog(@"Angry");
	smileyView.image = [UIImage imageNamed:@"angry.png"];
	smileyMood = @"angry";
}

-(IBAction) updateText:(id) sender {
	NSString *text;
	if([commentField.text length] == 0)
	{
		text = @"Please enter your name";
	}
	else
	{
		text = [[NSString alloc] initWithFormat:@"Hello %@!",commentField.text];
	}
	
	commentPreview.text = text;
	
	[text release];
}

-(IBAction)editingEnded:(id)sender{
	NSLog(@"editing ended!");
	[commentField resignFirstResponder];		
}

- (IBAction)sendData:(id) sender {
		NSLog(@"initialising send");
	
		UploadTutorialAppDelegate *appDelegate = (UploadTutorialAppDelegate *)[[UIApplication sharedApplication] delegate];
//		NSString *urlString = @"http://192.168.1.79:3000/";
		NSString *urlString = @"http://danieljohnmorris.co.uk/thatrocks/upload.php";
		NSURL *url = [NSURL URLWithString:urlString];
		NSString *boundary = @"----1010101010";
		NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary];
		
		NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
		[request setHTTPMethod:@"POST"];
		[request addValue:contentType forHTTPHeaderField: @"Content-Type"];
		
		NSString *photoPath = [[NSBundle mainBundle] pathForResource:@"chosen" ofType:@"jpg"];
		NSData *photoData = [NSData dataWithContentsOfFile:photoPath];
		
		NSMutableData *body = [NSMutableData data];

	[body appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[@"Content-Disposition: form-data; name=\"photo-description\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[@"testing 123" dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[[NSString stringWithString:@"Content-Disposition: form-data; name=\"userfile\"; filename=\"ipodfile.jpg\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:photoData];
	[body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[@"Content-Disposition: form-data; name=\"tags\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[@"random,test,example" dataUsingEncoding:NSUTF8StringEncoding]];
	[body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
	[request setHTTPBody:body];
	
	[request addValue:[NSString stringWithFormat:@"%d", body.length] forHTTPHeaderField: @"Content-Length"];
	
	NSLog(@"about to send");
	[[NSURLConnection alloc] initWithRequest:request delegate:appDelegate];
	NSLog(@"sent");

	//		[body release];
//		[photoData release];
//		[request release];
	}
	
-(IBAction) getPhoto:(id) sender {
	UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self; 
	
	if((UIButton *) sender == getPhotoButton) {
		picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	} else {
		picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	}
	
	[self presentModalViewController:picker animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
	NSData *imageData = UIImageJPEGRepresentation(imageView.image, 90);

	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *path = [documentsDirectory stringByAppendingPathComponent:@"chosen.jpg"];
	
	[imageData writeToFile:path atomically:YES];
	[picker dismissModalViewControllerAnimated:YES];
	imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
}


@end
