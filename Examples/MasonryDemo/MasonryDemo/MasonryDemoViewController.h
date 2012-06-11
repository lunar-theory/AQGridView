//
//  MasonryDemoViewController.h
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface MasonryDemoViewController : UIViewController <AQGridViewDelegate, AQGridViewDataSource>

@property (strong, nonatomic) IBOutlet AQGridView *gridView;

@end
