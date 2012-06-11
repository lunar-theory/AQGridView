//
//  MasonryDemoGridViewCell.m
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import "MasonryDemoGridViewCell.h"

@implementation MasonryDemoGridViewCell

@synthesize thumbView = _thumbView;

- (id)initWithReuseIdentifier:(NSString *)identifier {
    self = [super
          initWithFrame:CGRectMake(0, 0, 210, 255)
        reuseIdentifier:identifier
    ];
    if ( self == nil ) return nil;
    [[NSBundle mainBundle] loadNibNamed:@"MasonryDemoThumbView" owner:self options:nil];
    self.selectionStyle = AQGridViewCellSelectionStyleNone;
    self.backgroundColor = UIColor.clearColor;
    self.contentView.backgroundColor = UIColor.clearColor;
    return self;
}

- (void)setThumbView:(MasonryDemoThumbView *)thumbView {
    _thumbView = thumbView;
    self.frame = thumbView.frame;
    [self.contentView addSubview:thumbView];
}

- (UIImage *)image {
    return self.thumbView.image;
}

- (void)setImage:(UIImage *)image {
    self.thumbView.image = image;
}

- (NSString *)text {
    return self.thumbView.text;
}

- (void)setText:(NSString *)text {
    self.thumbView.text = text;
}

- (CALayer *)glowSelectionLayer {
    return self.thumbView.layer;
}

- (CGRect)selectionFrame {
    return self.thumbView.frame;
}

@end
