//
//  MasonryDemoViewController.m
//  MasonryDemo
//
//  Created by David Wheeler on 6/7/12.
//  Copyright (c) 2012 Lunar/Theory LLC. All rights reserved.
//

#import "MasonryDemoViewController.h"
#import "MasonryDemoGridViewCell.h"

@interface MasonryDemoViewController ()
@property (strong, nonatomic) NSArray *imageNames;

@end

@implementation MasonryDemoViewController
@synthesize gridView;
@synthesize imageNames;

- (void)viewDidLoad {
    [super viewDidLoad];

    if ( self.imageNames != nil ) return;
    
    NSArray *paths = [NSBundle
        pathsForResourcesOfType:@"jpg"
        inDirectory: [[NSBundle mainBundle] bundlePath]
    ];
    NSMutableArray *allImageNames = [NSMutableArray new];
    
    for ( NSString * path in paths ) {
        [allImageNames addObject:path.lastPathComponent];
    }
    
    // sort alphabetically
    self.imageNames = [[allImageNames sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)] copy];
    [self.gridView reloadData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark - Grid View Data Source

- (NSUInteger) numberOfItemsInGridView: (AQGridView *) aGridView {
    return self.imageNames.count;
}

- (AQGridViewCell *)gridView:(AQGridView *)aGridView
           cellForItemAtIndex:(NSUInteger)index
{
    static NSString *ThumbCellIdentifier = @"ThumbCellIdentifier";
    MasonryDemoGridViewCell *cell = (MasonryDemoGridViewCell *)[aGridView
        dequeueReusableCellWithIdentifier:ThumbCellIdentifier
    ];

    if (cell == nil) {
        cell = [[MasonryDemoGridViewCell alloc]initWithReuseIdentifier:ThumbCellIdentifier];
    }
    cell.image = [UIImage imageNamed: [self.imageNames objectAtIndex:index]];
    return cell;
}

- (CGSize) portraitGridCellSizeForGridView:(AQGridView *)aGridView {
    return CGSizeMake(210, 285);
}

@end
