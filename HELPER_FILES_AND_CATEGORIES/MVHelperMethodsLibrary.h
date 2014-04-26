//
//  MVHelperMethodsLibrary.h
//  Roster
//
//  Created by Matthew Voss on 4/11/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVHelperMethodsLibrary : NSObject

+(char)randChar;
+(void)saveArray:(NSMutableArray *)arrayToSave toFile:(NSString *)fileName;
+(NSArray *)loadFile:(NSString *)fileName;
+(NSString *)applicaitionDocumentsDirectory;
+(NSString *)getRandomStringOf:(NSInteger)length;
+(UIColor *)randomColor;

@end
