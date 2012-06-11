//
//  MasonryDemoThumbView.h
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasonryDemoThumbView : UIView

@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UIView *captionView;
@property (nonatomic, strong) UIImage  *image;
@property (nonatomic, strong) NSString *text;

@end
