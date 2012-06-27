//
//  View.m
//  Jun28
//
//  Created by Anita Gupta on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
        
        CGRect f = CGRectMake(
                              self.bounds.origin.x,
                              self.bounds.origin.y,
                              100,
                              70
                              );

        
		textView = [[UITextView alloc] initWithFrame: f];
		textView.backgroundColor = [UIColor cyanColor];
		textView.textColor = [UIColor blackColor];
		textView.font = [UIFont fontWithName: @"Times New Roman" size: 15.75];
        
		textView.editable = NO;	//Don't pop up a keyboard.
		
		textView.text =
        @"Anita Gupta\n"
        @"Cyan Gupta\n"
       ;
        
	
        
              
        
		[self addSubview: textView];
   
	}
	return self;
}

/*
- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
    if (touches.count > 0) {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        textView.center = point;	//Move the littleView to a new location.
        
     }
}
 */

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	if (touches.count > 0) {
        
		[UIView animateWithDuration: 1.0
                              delay: 0.0
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations: ^{
                             //This block describes what the animation should do.
                             textView.center = [[touches anyObject] locationInView: self];
                         }
                         completion: NULL
         ];
        /*
        
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];

        image = [UIImage imageNamed: @"Anita2.png"];
        
        [image drawAtPoint: point];
         */

	}
}



@end