//
//  Character.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Job, Stat;

@interface Character : NSManagedObject

@property (nonatomic, retain) NSNumber * level;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Job *job;
@property (nonatomic, retain) NSSet *stats;
@end

@interface Character (CoreDataGeneratedAccessors)

- (void)addStatsObject:(Stat *)value;
- (void)removeStatsObject:(Stat *)value;
- (void)addStats:(NSSet *)values;
- (void)removeStats:(NSSet *)values;

@end
