//
//  Stat.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Character, Effect;

@interface Stat : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSNumber * value;
@property (nonatomic, retain) Effect *effect;
@property (nonatomic, retain) Character *character;

@end
