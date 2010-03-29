#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UploadTutorialViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    IBOutlet UIImageView *imageView;
}
- (IBAction)pushPick:(id)sender;
- (IBAction)pushUpload:(id)sender;
@end
