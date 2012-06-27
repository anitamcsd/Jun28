//
//  ImageView.m
//  Jun28
//
//  Created by Anita Gupta on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGPoint point = CGPointMake(100, 100);
    
    UIImage *image = [UIImage imageNamed: @"Anita2.png"];
    
    [image drawAtPoint: point];
}


@end
