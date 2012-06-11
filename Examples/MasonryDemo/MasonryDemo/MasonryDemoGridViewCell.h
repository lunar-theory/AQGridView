//
//  MasonryDemoGridViewCell.h
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridViewCell.h"
#import "MasonryDemoThumbView.h"

@interface MasonryDemoGridViewCell : AQGridViewCell

@property (nonatomic, strong) IBOutlet MasonryDemoThumbView *thumbView;
@property (nonatomic, strong) UIImage  *image;
@property (nonatomic, strong) NSString *text;

- (id)initWithReuseIdentifier:(NSString *)identifier;
- (CGRect)selectionFrame;

@end
