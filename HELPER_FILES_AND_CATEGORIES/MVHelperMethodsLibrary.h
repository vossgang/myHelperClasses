//
//  MVHelperMethodsLibrary.h
//  Roster
//
//  Created by Matthew Voss on 4/11/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVHelperMethodsLibrary : NSObject

+(char)randomChar;
+(NSString *)getRandomStringOfLength:(NSInteger)length;
+(CGFloat)distanceBetweenPoint:(CGPoint)p1 andPoint:(CGPoint)p2;

+(void)saveItem:(id)item toDefaultsWithKey:(NSString *)key;
+(id)getItemFromDefaulsForKey:(NSString *)key;

+(void)saveArray:(NSMutableArray *)arrayToSave toFile:(NSString *)fileName;
+(NSArray *)loadFile:(NSString *)fileName;

+(NSString *)applicaitionDocumentsDirectory;
+(void)rotateViewThisView:(UIView *)thisView;

@end
