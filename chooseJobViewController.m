//
//  chooseJobViewController.m
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 07/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chooseJobViewController.h"

@interface chooseJobViewController ()

@end

@implementation chooseJobViewController
@synthesize characters=_characters, wrap=_wrap;

-(void)awakeFromNib{
    self.wrap=NO;
    self.characters = [NSArray arrayWithObjects:@"barbare.jpg", @"demon-hunter.jpg", @"moine.jpg", @"shaman.jpg", @"sorcier.jpg", nil];
}


- (void)viewDidLoad
{
    iCarousel *carousel=[[iCarousel alloc] init];
    carousel.type=iCarouselTypeWheel;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel{
    return [self.characters count];
}

-(NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel{
    return [self.characters count];
}

-(NSUInteger)numberOfPlaceholdersInCarousel:(iCarousel *)carousel{
    return 0;
}
-(CGFloat)carouselItemWidth:(iCarousel *)carousel{
    return 350;
}
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view{
    view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.characters objectAtIndex:index]]];
    return view;
}

- (BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    return self.wrap;
}
@end
