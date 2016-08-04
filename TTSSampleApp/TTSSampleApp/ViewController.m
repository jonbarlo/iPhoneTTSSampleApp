//
//  ViewController.m
//  TTSSampleApp
//
//  Created by Jhoni on 8/4/16.
//  Copyright © 2016 a:eon/it>. All rights reserved.
//

#import "ViewController.h"

//
// TTS LIB
//
#import "FliteTTS.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onButtonTap:(id)sender {
    NSString *conn = self.textView.text;
    self.fliteEngine = [[FliteTTS alloc] init];
    
    //[self.fliteEngine setVoice:@"cmu_us_kal"];	// Switch to a different voice
    //[self.fliteEngine setVoice:@"cmu_us_kal16"];	// Switch to a different voice
    //[self.fliteEngine setVoice:@"cmu_us_awb"];	// Switch to a different voice
    //[self.fliteEngine setVoice:@"cmu_us_rms"];	// Switch to a different voice
    [self.fliteEngine setVoice:@"cmu_us_slt"];	// Switch to a different voice
    
    //[self.fliteEngine setPitch:100.0 variance:50.0 speed:1.0];	// Change the voice properties
    
    [self.fliteEngine speakText:conn];	// Make it talk
    
    NSLog(@"%@", conn);
}
@end
