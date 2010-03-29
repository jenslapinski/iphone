#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UploadTutorialViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    IBOutlet UIImageView *imageView;
		IBOutlet UIImageView *smileyView;
		IBOutlet UITextField	*commentView;
		IBOutlet UIButton *getPhotoButton;
		IBOutlet UIButton *uploadPhotoButton;
	NSString *smileyMood;
}

-(IBAction) getPhoto:(id) sender;
-(IBAction) sendData:(id) sender;

-(IBAction) moodHappy:(id) sender;
-(IBAction) moodAngry:(id) sender;

@property (nonatomic, retain) IBOutlet UIImageView *imageView;;
@property (nonatomic, retain) IBOutlet UIImageView *smileyView;
@property (nonatomic, retain) IBOutlet UITextField *commentView;
@property (nonatomic, retain) IBOutlet UIButton *getPhotoButton;
@property (nonatomic, retain) IBOutlet UIButton *uploadPhotoButton;
@property (nonatomic, retain) NSString *smileyMood;

@end
