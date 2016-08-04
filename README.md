# iPhone TTS Sample App (Text to speech objective-c project)

This is a sample app for iPhone TTS - which is a port of CMU's Festival-Lite (aka flite) library to the iPhone/iOS platform.
Homepage: http://bitbucket.org/sfoster/iphone-tts/


##INSTALLATION

To use it in a new or existing project you can follow these steps:

    - Download latest version from http://bitbucket.org/sfoster/iphone-tts/ and open it in finder.
    - Drag and copy the "flite-1.4-iphone" directory into your project's "Dependencies" Folder.  This contains the sources to flite.
    - Drag and copy the files FliteTTS.h and FliteTTS.m into your project's "Classes" area.
    - On your ViewController header file (*.h) add FliteTTS object class:

        @class FliteTTS;

    - Also on this same file define a new property so it can be accessed easily:
       
        @property FliteTTS *fliteEngine;
    
    - Finally on your *.m file just import, define and use a new instance of the object we just defined on our headers:

        #import "FliteTTS.h"
    
##HOW TO USE

###Initialize an FliteTTS object and point your pointer to it:

    fliteEngine = [[FliteTTS alloc] init];

###Some other functions:

    [fliteEngine speakText:@"It works."];	// Make it talk
    [fliteEngine setPitch:100.0 variance:50.0 speed:1.0];	// Change the voice properties
	[fliteEngine setVoice:@"cmu_us_awb"];	// Switch to a different voice
	[fliteEngine stopTalking];				// stop talking
	
###INCLUDED VOICES (you can remove the ones you don't need)

    #cmu_us_kal
    [fliteEngine setVoice:@"cmu_us_kal"];	// Switch to cmu_us_kal voice
    #cmu_us_kal16
    [fliteEngine setVoice:@"cmu_us_kal16"];	// Switch to cmu_us_kal16 voice
    #cmu_us_awb
    [fliteEngine setVoice:@"cmu_us_awb"];	// Switch to cmu_us_awb voice
    #cmu_us_rms
    [fliteEngine setVoice:@"cmu_us_rms"];	// Switch to cmu_us_rms voice
    #cmu_us_slt
    [fliteEngine setVoice:@"cmu_us_slt"];	// Switch to cmu_us_slt voice


##UPGRADING

    - Remove FliteTTS.h and FliteTTS.m from your project.  When xcode asks if you want to move them to the trash, click yes.
    - Remove the "flite" folder from your "Dependencies" folder.
    - Copy the new versions in like described in steps 1 and 2 of the "INSTALLATION" section above.
    - If your code calls the setVoicePitch method, change that to setPitch.


Let me know if you find any problems or want to contribute improvements. Right now will be nice to add tab with settings for selecting voice on dropdown and sliders for controlling voice pitch config, also would be nice to have swift version of this code.

Contributors: 

Sam Foster <samfoster@gmail.com> <http://cmang.org> (Everything)
Jonathan Barquero <jonbarlo@gmail.com> <http://aeonitgroup.com> (Just this sample objective app)

Credits: Flite is copyright 1999-2009 Carnegie Mellon University Language Technologies Institute.
Flite homepage: http://www.speech.cs.cmu.edu/flite/
It has been slightly modified to build on the iPhone platform.
