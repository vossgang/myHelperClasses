//
//  MVHelperMethodsLibrary.m
//  Roster
//
//  Created by Matthew Voss on 4/11/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import "MVHelperMethodsLibrary.h"

@implementation MVHelperMethodsLibrary

+(char)randomChar
{
    return randomChar();
}

+(void)saveItem:(id)item toDefaultsWithKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:item forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(id)getItemFromDefaulsForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+(CGFloat)distanceBetween:(CGPoint)p1 and:(CGPoint)p2
{
    return sqrt(pow((p2.x - p1.x), 2) + pow((p2.y - p1.y), 2));
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

+(NSString *)getRandomStringOfLength:(NSInteger)length
{
    if (length < 1) {
        return @"";
    }
    
    NSString *randomSting = [NSString stringWithFormat:@"%c",randomChar()];
        for (int i = 1; i < length; i++) {
            randomSting = [NSString stringWithFormat:@"%@%c", randomSting, randomChar()];
        }
    return randomSting;
}

char  randomChar()
{
    BOOL flip = arc4random_uniform(2);
    int i;
    if (flip) {
        i = ((arc4random() % 26) + 65);
    } else {
        i = ((arc4random() % 26) + 97);
    }
    return i;
}

@end
