#import "UploadTutorialViewController.h"

@implementation UploadTutorialViewController

- (IBAction)pushPick:(id)sender {
	UIImagePickerController *picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	[self presentModalViewController:picker	animated:YES];
	[picker release];
}

- (IBAction)pushUpload:(id)sender {
	
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {
	[picker.parentViewController dismissModalViewControllerAnimated:YES];
	imageView.image = image;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
	[picker.parentViewController dismissModalViewControllerAnimated:YES];
}

@end
