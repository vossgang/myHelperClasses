//
//  MVHelperMethodsLibrary.m
//  Roster
//
//  Created by Matthew Voss on 4/11/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import "MVHelperMethodsLibrary.h"

@implementation MVHelperMethodsLibrary

+(char)randChar
{
    char newChar;
    BOOL flip = arc4random_uniform(2);
    int i;
    if (flip) {
        i = ((arc4random() % 26) + 65);
    } else {
        i = ((arc4random() % 26) + 97);
    }
    newChar = i;
    
    return newChar;
}

+(void)saveArray:(NSMutableArray *)arrayToSave toFile:(NSString *)fileName
{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *appFile = [documentsDirectory stringByAppendingPathComponent:fileName];
    [NSKeyedArchiver archiveRootObject:arrayToSave toFile:appFile];
}

+(NSArray *)loadFile:(NSString *)fileName
{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *appFile = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    return [NSKeyedUnarchiver unarchiveObjectWithFile:appFile];
    
}

+(NSString *)applicaitionDocumentsDirectory
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES) firstObject];
}

+(NSString *)getRandomStringOf:(NSInteger)length
{
    if (length < 1) {
        return @"";
    }
    
    NSString *randomSting = [NSString stringWithFormat:@"%c",[MVHelperMethodsLibrary randChar]];
        for (int i = 1; i < length; i++) {
            randomSting = [NSString stringWithFormat:@"%@%c", randomSting, [MVHelperMethodsLibrary randChar]];
        }
    return randomSting;
}

+(UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(100) / (float)100;
    CGFloat g = arc4random_uniform(100) / (float)100;
    CGFloat b = arc4random_uniform(100) / (float)100;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
    
}


@end
