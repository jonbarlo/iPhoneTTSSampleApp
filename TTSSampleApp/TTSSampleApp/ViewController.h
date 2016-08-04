//
//  ViewController.h
//  TTSSampleApp
//
//  Created by Jhoni on 8/4/16.
//  Copyright © 2016 a:eon/it>. All rights reserved.
//

#import <UIKit/UIKit.h>

//
// TTS LIB
//
@class FliteTTS;

@interface ViewController : UIViewController

//
// TTS LIB
//
@property FliteTTS *fliteEngine;

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *buttonSpeech;
- (IBAction)onButtonTap:(id)sender;


@end

