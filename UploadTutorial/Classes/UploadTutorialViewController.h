#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UploadTutorialViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    IBOutlet UIImageView *imageView;
		IBOutlet UIImageView *smileyView;
}
- (IBAction)pushPick:(id)sender;
- (IBAction)pushUpload:(id)sender;
@end
