#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UploadTutorialViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
	IBOutlet UIImageView *imageView;
	IBOutlet UIImageView *smileyView;

	IBOutlet UIButton *getPhotoButton;
	IBOutlet UIButton *uploadPhotoButton;

	IBOutlet UITextField	*commentField;
	IBOutlet UILabel *commentPreview;
	
	NSString *commentMood;
	NSString *smileyMood;
}

-(IBAction) getPhoto:(id) sender;
-(IBAction) sendData:(id) sender;

-(IBAction) moodHappy:(id) sender;
-(IBAction) moodAngry:(id) sender;

-(IBAction) editingEnded:(id) sender;
-(IBAction) updateText:(id) sender;

@property (nonatomic, retain) IBOutlet UIImageView *imageView;;
@property (nonatomic, retain) IBOutlet UIImageView *smileyView;
@property (nonatomic, retain) IBOutlet UIButton *getPhotoButton;
@property (nonatomic, retain) IBOutlet UIButton *uploadPhotoButton;

@property (nonatomic, retain) IBOutlet UITextField *commentField;
@property (nonatomic, retain) IBOutlet UILabel *commentPreview;

@property (nonatomic, retain) NSString *smileyMood;
@property (nonatomic, retain) NSString *commentMood;

@end
