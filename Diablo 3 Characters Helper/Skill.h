//
//  Skill.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Effect, Job;

@interface Skill : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *effects;
@property (nonatomic, retain) Job *job;
@end

@interface Skill (CoreDataGeneratedAccessors)

- (void)addEffectsObject:(Effect *)value;
- (void)removeEffectsObject:(Effect *)value;
- (void)addEffects:(NSSet *)values;
- (void)removeEffects:(NSSet *)values;

@end
