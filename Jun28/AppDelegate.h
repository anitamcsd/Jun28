//
//  AppDelegate.h
//  Jun28
//
//  Created by Anita Gupta on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;
@class ImageView;

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
	View *view;
	UIWindow *_window;
    ImageView   *imageView;
}


@property (strong, nonatomic) UIWindow *window;

@end
