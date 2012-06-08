//
//  Effect.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Skill, Stat;

@interface Effect : NSManagedObject

@property (nonatomic, retain) NSNumber * value;
@property (nonatomic, retain) Stat *stat;
@property (nonatomic, retain) NSSet *skills;
@end

@interface Effect (CoreDataGeneratedAccessors)

- (void)addSkillsObject:(Skill *)value;
- (void)removeSkillsObject:(Skill *)value;
- (void)addSkills:(NSSet *)values;
- (void)removeSkills:(NSSet *)values;

@end
