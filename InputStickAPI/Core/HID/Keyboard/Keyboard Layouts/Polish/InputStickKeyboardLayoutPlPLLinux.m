/*
 * InputStickAPI-iOS
 * Copyright (c) 2019 Jakub Zawadzki, www.inputstick.com
 */

#import "InputStickKeyboardLayoutPlPLLinux.h"
#import "InputStickKeyboardKeyModel.h"

static NSString *const LocaleName =  @"pl-PL-linux";
static NSString *const NativeName =  @"Polski";
static NSString *const EnglishName = @"Polish";
static NSString *const Variant =     @"PL Linux";
static InputStickKeyboardType const Type = KEYBOARD_ANSI;

@implementation InputStickKeyboardLayoutPlPLLinux

+ (NSString *)layoutCode {
    return LocaleName;
}

+ (NSString *)layoutCodeLowercase {
    return [[self layoutCode] lowercaseString];
}

+ (NSString *)layoutNativeName {
    return NativeName;
}

+ (NSString *)layoutEnglishName {
    return EnglishName;
}

+ (NSString *)layoutVariant {
    return Variant;
}

+ (NSString *)layoutFullName {
    return [NSString stringWithFormat:@"%@ (%@) [%@]", EnglishName, NativeName, Variant];
}

+ (InputStickKeyboardType)keyboardType {
    return Type;
}

//pl-PL-linux
+ (InputStickKeyboardKeyModel *)getKeyModelForCharacter:(int)character {
    InputStickKeyboardKeyModel *keyboardKeyModel = nil;
    switch (character) {
        case 0: //empty
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:0 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 9: //tab
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:43 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 10: //enter
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:40 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 32: //space
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 33: //!
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 34: //"
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 35: //#
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 36: //$
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 37: //%
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 38: //&
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 39: //'
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 40: //(
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 41: //)
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 42: //*
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 43: //+
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:46 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 44: //,
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 45: //-
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 46: //.
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 47: ///
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 48: //0
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 49: //1
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 50: //2
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 51: //3
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 52: //4
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 53: //5
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 54: //6
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 55: //7
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 56: //8
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 57: //9
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 58: //:
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 59: //;
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 60: // <
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 61: //=
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:46 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 62: //>
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 63: //?
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 64: //@
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 65: //A
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 66: //B
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 67: //C
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 68: //D
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 69: //E
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 70: //F
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 71: //G
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 72: //H
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 73: //I
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 74: //J
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 75: //K
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 76: //L
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 77: //M
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 78: //N
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 79: //O
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 80: //P
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 81: //Q
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 82: //R
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 83: //S
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 84: //T
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 85: //U
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 86: //V
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 87: //W
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 88: //X
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 89: //Y
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 90: //Z
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 91: //[
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 92: //backslash
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 93: //]
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 94: //^
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 95: //_
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 96: //`
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 97: //a
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 98: //b
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 99: //c
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 100: //d
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 101: //e
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 102: //f
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 103: //g
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 104: //h
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 105: //i
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 106: //j
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 107: //k
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 108: //l
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 109: //m
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 110: //n
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 111: //o
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 112: //p
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 113: //q
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 114: //r
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 115: //s
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 116: //t
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 117: //u
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 118: //v
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 119: //w
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 120: //x
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 121: //y
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 122: //z
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:0 deadkey:0 deadkeyModifiers:0];
            break;
        case 123: //{
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 124: //|
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 125: //}
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 126: //~
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:2 deadkey:0 deadkeyModifiers:0];
            break;
        case 211: //Ó
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 243: //ó
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 260: //Ą
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 261: //ą
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 262: //Ć
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 263: //ć
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 280: //Ę
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 281: //ę
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 321: //Ł
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 322: //ł
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 323: //Ń
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 324: //ń
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 346: //Ś
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 347: //ś
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 377: //Ź
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 378: //ź
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
        case 379: //Ż
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:66 deadkey:0 deadkeyModifiers:0];
            break;
        case 380: //ż
            keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:64 deadkey:0 deadkeyModifiers:0];
            break;
    }
    return keyboardKeyModel;
}

+ (NSArray<NSNumber *> *)getAvailableCharacters {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    [array addObject:[NSNumber numberWithInteger:0]];
    [array addObject:[NSNumber numberWithInteger:9]];
    [array addObject:[NSNumber numberWithInteger:10]];
    [array addObject:[NSNumber numberWithInteger:27]];
    [array addObject:[NSNumber numberWithInteger:28]];
    [array addObject:[NSNumber numberWithInteger:29]];
    [array addObject:[NSNumber numberWithInteger:32]];
    [array addObject:[NSNumber numberWithInteger:33]];
    [array addObject:[NSNumber numberWithInteger:34]];
    [array addObject:[NSNumber numberWithInteger:35]];
    [array addObject:[NSNumber numberWithInteger:36]];
    [array addObject:[NSNumber numberWithInteger:37]];
    [array addObject:[NSNumber numberWithInteger:38]];
    [array addObject:[NSNumber numberWithInteger:39]];
    [array addObject:[NSNumber numberWithInteger:40]];
    [array addObject:[NSNumber numberWithInteger:41]];
    [array addObject:[NSNumber numberWithInteger:42]];
    [array addObject:[NSNumber numberWithInteger:43]];
    [array addObject:[NSNumber numberWithInteger:44]];
    [array addObject:[NSNumber numberWithInteger:45]];
    [array addObject:[NSNumber numberWithInteger:46]];
    [array addObject:[NSNumber numberWithInteger:47]];
    [array addObject:[NSNumber numberWithInteger:48]];
    [array addObject:[NSNumber numberWithInteger:49]];
    [array addObject:[NSNumber numberWithInteger:50]];
    [array addObject:[NSNumber numberWithInteger:51]];
    [array addObject:[NSNumber numberWithInteger:52]];
    [array addObject:[NSNumber numberWithInteger:53]];
    [array addObject:[NSNumber numberWithInteger:54]];
    [array addObject:[NSNumber numberWithInteger:55]];
    [array addObject:[NSNumber numberWithInteger:56]];
    [array addObject:[NSNumber numberWithInteger:57]];
    [array addObject:[NSNumber numberWithInteger:58]];
    [array addObject:[NSNumber numberWithInteger:59]];
    [array addObject:[NSNumber numberWithInteger:60]];
    [array addObject:[NSNumber numberWithInteger:61]];
    [array addObject:[NSNumber numberWithInteger:62]];
    [array addObject:[NSNumber numberWithInteger:63]];
    [array addObject:[NSNumber numberWithInteger:64]];
    [array addObject:[NSNumber numberWithInteger:65]];
    [array addObject:[NSNumber numberWithInteger:66]];
    [array addObject:[NSNumber numberWithInteger:67]];
    [array addObject:[NSNumber numberWithInteger:68]];
    [array addObject:[NSNumber numberWithInteger:69]];
    [array addObject:[NSNumber numberWithInteger:70]];
    [array addObject:[NSNumber numberWithInteger:71]];
    [array addObject:[NSNumber numberWithInteger:72]];
    [array addObject:[NSNumber numberWithInteger:73]];
    [array addObject:[NSNumber numberWithInteger:74]];
    [array addObject:[NSNumber numberWithInteger:75]];
    [array addObject:[NSNumber numberWithInteger:76]];
    [array addObject:[NSNumber numberWithInteger:77]];
    [array addObject:[NSNumber numberWithInteger:78]];
    [array addObject:[NSNumber numberWithInteger:79]];
    [array addObject:[NSNumber numberWithInteger:80]];
    [array addObject:[NSNumber numberWithInteger:81]];
    [array addObject:[NSNumber numberWithInteger:82]];
    [array addObject:[NSNumber numberWithInteger:83]];
    [array addObject:[NSNumber numberWithInteger:84]];
    [array addObject:[NSNumber numberWithInteger:85]];
    [array addObject:[NSNumber numberWithInteger:86]];
    [array addObject:[NSNumber numberWithInteger:87]];
    [array addObject:[NSNumber numberWithInteger:88]];
    [array addObject:[NSNumber numberWithInteger:89]];
    [array addObject:[NSNumber numberWithInteger:90]];
    [array addObject:[NSNumber numberWithInteger:91]];
    [array addObject:[NSNumber numberWithInteger:92]];
    [array addObject:[NSNumber numberWithInteger:93]];
    [array addObject:[NSNumber numberWithInteger:94]];
    [array addObject:[NSNumber numberWithInteger:95]];
    [array addObject:[NSNumber numberWithInteger:96]];
    [array addObject:[NSNumber numberWithInteger:97]];
    [array addObject:[NSNumber numberWithInteger:98]];
    [array addObject:[NSNumber numberWithInteger:99]];
    [array addObject:[NSNumber numberWithInteger:100]];
    [array addObject:[NSNumber numberWithInteger:101]];
    [array addObject:[NSNumber numberWithInteger:102]];
    [array addObject:[NSNumber numberWithInteger:103]];
    [array addObject:[NSNumber numberWithInteger:104]];
    [array addObject:[NSNumber numberWithInteger:105]];
    [array addObject:[NSNumber numberWithInteger:106]];
    [array addObject:[NSNumber numberWithInteger:107]];
    [array addObject:[NSNumber numberWithInteger:108]];
    [array addObject:[NSNumber numberWithInteger:109]];
    [array addObject:[NSNumber numberWithInteger:110]];
    [array addObject:[NSNumber numberWithInteger:111]];
    [array addObject:[NSNumber numberWithInteger:112]];
    [array addObject:[NSNumber numberWithInteger:113]];
    [array addObject:[NSNumber numberWithInteger:114]];
    [array addObject:[NSNumber numberWithInteger:115]];
    [array addObject:[NSNumber numberWithInteger:116]];
    [array addObject:[NSNumber numberWithInteger:117]];
    [array addObject:[NSNumber numberWithInteger:118]];
    [array addObject:[NSNumber numberWithInteger:119]];
    [array addObject:[NSNumber numberWithInteger:120]];
    [array addObject:[NSNumber numberWithInteger:121]];
    [array addObject:[NSNumber numberWithInteger:122]];
    [array addObject:[NSNumber numberWithInteger:123]];
    [array addObject:[NSNumber numberWithInteger:124]];
    [array addObject:[NSNumber numberWithInteger:125]];
    [array addObject:[NSNumber numberWithInteger:126]];
    [array addObject:[NSNumber numberWithInteger:211]];
    [array addObject:[NSNumber numberWithInteger:243]];
    [array addObject:[NSNumber numberWithInteger:260]];
    [array addObject:[NSNumber numberWithInteger:261]];
    [array addObject:[NSNumber numberWithInteger:262]];
    [array addObject:[NSNumber numberWithInteger:263]];
    [array addObject:[NSNumber numberWithInteger:280]];
    [array addObject:[NSNumber numberWithInteger:281]];
    [array addObject:[NSNumber numberWithInteger:321]];
    [array addObject:[NSNumber numberWithInteger:322]];
    [array addObject:[NSNumber numberWithInteger:323]];
    [array addObject:[NSNumber numberWithInteger:324]];
    [array addObject:[NSNumber numberWithInteger:346]];
    [array addObject:[NSNumber numberWithInteger:347]];
    [array addObject:[NSNumber numberWithInteger:377]];
    [array addObject:[NSNumber numberWithInteger:378]];
    [array addObject:[NSNumber numberWithInteger:379]];
    [array addObject:[NSNumber numberWithInteger:380]];
    return array;
}

+ (NSArray *)getLUT {
    NSMutableArray *lut = [[NSMutableArray alloc] init];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  49], [NSNumber numberWithInt:  33], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  50], [NSNumber numberWithInt:  64], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  51], [NSNumber numberWithInt:  35], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  52], [NSNumber numberWithInt:  36], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  53], [NSNumber numberWithInt:  37], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  54], [NSNumber numberWithInt:  94], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  55], [NSNumber numberWithInt:  38], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  56], [NSNumber numberWithInt:  42], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  57], [NSNumber numberWithInt:  40], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  48], [NSNumber numberWithInt:  41], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  45], [NSNumber numberWithInt:  95], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  61], [NSNumber numberWithInt:  43], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 113], [NSNumber numberWithInt:  81], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 119], [NSNumber numberWithInt:  87], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 101], [NSNumber numberWithInt:  69], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 281], [NSNumber numberWithInt: 280], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 114], [NSNumber numberWithInt:  82], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 116], [NSNumber numberWithInt:  84], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 121], [NSNumber numberWithInt:  89], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 117], [NSNumber numberWithInt:  85], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 105], [NSNumber numberWithInt:  73], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 111], [NSNumber numberWithInt:  79], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 243], [NSNumber numberWithInt: 211], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 112], [NSNumber numberWithInt:  80], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  91], [NSNumber numberWithInt: 123], [NSNumber numberWithInt:  27], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  93], [NSNumber numberWithInt: 125], [NSNumber numberWithInt:  29], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt:  97], [NSNumber numberWithInt:  65], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 261], [NSNumber numberWithInt: 260], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 115], [NSNumber numberWithInt:  83], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 347], [NSNumber numberWithInt: 346], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 100], [NSNumber numberWithInt:  68], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 102], [NSNumber numberWithInt:  70], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 103], [NSNumber numberWithInt:  71], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 104], [NSNumber numberWithInt:  72], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 106], [NSNumber numberWithInt:  74], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 107], [NSNumber numberWithInt:  75], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 108], [NSNumber numberWithInt:  76], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 322], [NSNumber numberWithInt: 321], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  59], [NSNumber numberWithInt:  58], [NSNumber numberWithInt:  29], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  39], [NSNumber numberWithInt:  34], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  96], [NSNumber numberWithInt: 126], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  92], [NSNumber numberWithInt: 124], [NSNumber numberWithInt:  28], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 122], [NSNumber numberWithInt:  90], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 380], [NSNumber numberWithInt: 379], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 120], [NSNumber numberWithInt:  88], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 378], [NSNumber numberWithInt: 377], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt:  99], [NSNumber numberWithInt:  67], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 263], [NSNumber numberWithInt: 262], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 118], [NSNumber numberWithInt:  86], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt:  98], [NSNumber numberWithInt:  66], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   5], [NSNumber numberWithInt: 110], [NSNumber numberWithInt:  78], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt: 324], [NSNumber numberWithInt: 323], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   1], [NSNumber numberWithInt: 109], [NSNumber numberWithInt:  77], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  44], [NSNumber numberWithInt:  60], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  46], [NSNumber numberWithInt:  62], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  47], [NSNumber numberWithInt:  63], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  32], [NSNumber numberWithInt:  32], [NSNumber numberWithInt:  32], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  44], [NSNumber numberWithInt:  44], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:   0], [NSNumber numberWithInt:  92], [NSNumber numberWithInt: 124], [NSNumber numberWithInt:  28], [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:  -1], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    [lut addObject:[NSArray arrayWithObjects: [NSNumber numberWithInt:  -1], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], [NSNumber numberWithInt:   0], nil]];
    return lut;
}


@end