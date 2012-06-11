//
//  MasonryDemoThumbView.m
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import "MasonryDemoThumbView.h"

@implementation MasonryDemoThumbView

@synthesize textLabel;
@synthesize imageView;
@synthesize captionView;

- (UIImage *)image {
    return self.imageView.image;
}

- (void)setImage:(UIImage *)image {
    self.imageView.image = image;
    // Resize ourselves.
    CGRect rect = self.frame;
    rect.size.height = image.size.height + self.textLabel.frame.size.height;
    self.frame = rect;

    // Be sure to move the caption to the bottom.
    rect = self.captionView.frame;
    rect.origin.y = self.frame.size.height - rect.size.height;
    self.captionView.frame = rect;
}

- (NSString *)text {
    return self.textLabel.text;
}

- (void)setText:(NSString *)text {
    self.textLabel.text = text;
}

@end
