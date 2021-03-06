//
//  chooseJobViewController.m
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 07/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "chooseJobViewController.h"

@interface chooseJobViewController ()
@property (nonatomic) BOOL wrap;
@property (strong, nonatomic) NSArray *characters;
@end

@implementation chooseJobViewController
@synthesize characters=_characters, wrap=_wrap,carousel = _carousel;

-(void)awakeFromNib{
    self.wrap=YES   ;
    self.characters = [NSArray arrayWithObjects:@"barbare.jpg", @"demon-hunter.jpg", @"moine.jpg", @"shaman.jpg", @"sorcier.jpg", nil];
}


- (void)viewDidLoad
{    
    [super viewDidLoad];
    self.carousel.type=iCarouselTypeCylinder;
    self.carousel.scrollSpeed=0.3;
    self.carousel.centerItemWhenSelected=YES;
}

- (void)viewDidUnload
{
    [self setCarousel:nil];
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
    return 220;
}
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view{
    view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.characters objectAtIndex:index]]];
    return view;
}

- (BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    return self.wrap;
}
-(void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index{
    switch (index) {
        case 0:
            NSLog(@"JOB barbare");
            /*redirect to edit stat*/
            break;
        case 1:
            NSLog(@"JOB demon-hunter");
            /*redirect to edit stat*/
            break;
        case 2:
            NSLog(@"JOB moine");
            /*redirect to edit stat*/
            break;
        case 3:
            NSLog(@"JOB shaman");
            /*redirect to edit stat*/
            break;
        case 4:
            NSLog(@"JOB sorcier");
            /*redirect to edit stat*/
            break;
        default:
            break;
    }
}
- (IBAction)chooseButton:(id)sender {
    NSLog(@"Passe dans le button");
}
@end
