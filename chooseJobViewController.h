//
//  chooseJobViewController.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 07/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"
@interface chooseJobViewController : UIViewController <iCarouselDataSource,iCarouselDelegate>
@property (strong, nonatomic) NSArray *characters;
@property (nonatomic) BOOL wrap;
@end
