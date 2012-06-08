//
//  Job.h
//  Diablo 3 Characters Helper
//
//  Created by Geoffrey Antoine on 08/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Character, Skill;

@interface Job : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * picture;
@property (nonatomic, retain) NSSet *characters;
@property (nonatomic, retain) NSSet *skills;
@end

@interface Job (CoreDataGeneratedAccessors)

- (void)addCharactersObject:(Character *)value;
- (void)removeCharactersObject:(Character *)value;
- (void)addCharacters:(NSSet *)values;
- (void)removeCharacters:(NSSet *)values;

- (void)addSkillsObject:(Skill *)value;
- (void)removeSkillsObject:(Skill *)value;
- (void)addSkills:(NSSet *)values;
- (void)removeSkills:(NSSet *)values;

@end
