/*
 * InputStickAPI-iOS
 * Copyright (c) 2020 Jakub Zawadzki, www.inputstick.com
 */
 
#import "InputStickKeyboardLayoutHuHU.h"
#import "InputStickKeyboardKeyModel.h"
#import "InputStickKeyLabels.h"

//InputStickKeyboardLayoutGenerator v1.00

@interface InputStickKeyboardLayoutHuHU () {
    InputStickKeyLabels *_keyLabels;
    NSArray<NSNumber *> *_availableCharactersLUT;
}

@end


@implementation InputStickKeyboardLayoutHuHU

- (NSString *)layoutCode {
    return @"hu-HU";
}

- (NSString *)layoutCodeLowercase {
    return @"hu-hu";
}

- (NSString *)layoutLanguageCode {
    return @"hu";
}

- (NSString *)layoutLanguageNativeName {
    return @"Magyar";
}

- (NSString *)layoutLanguageEnglishName {
    return @"Hungarian";
}

- (NSString *)layoutCountryCode {
    return @"HU";
}

- (NSString *)layoutCountryNativeName {
    return @"Magyarország";
}

- (NSString *)layoutCountryEnglishName {
    return @"Hungary";
}

- (NSString *)layoutVariant {
    return @"HU";
}

- (NSString *)layoutDisplayName {
    return @"Hungarian, HU";
}

- (InputStickKeyboardType)keyboardType {
    return KEYBOARD_ISO;
}

- (InputStickKeyboardKeyModel *)keyModelForCharacter:(int)character {
    InputStickKeyboardKeyModel *keyboardKeyModel = nil;
    switch (character) {
            case 0: // empty
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:0 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 9: // tab
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:43 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 10: // enter
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:40 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 32: // space
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 33: // !
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 34: // "
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 35: // #
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 36: // $
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 37: // %
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 38: // &
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 39: // '
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 40: // (
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 41: // )
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 42: // *
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 43: // +
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 44: // ,
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 45: // -
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 46: // .
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 47: // /
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 48: // 0
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 49: // 1
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 50: // 2
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 51: // 3
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 52: // 4
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 53: // 5
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 54: // 6
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 55: // 7
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 56: // 8
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 57: // 9
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 58: // :
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 59: // ;
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 60: // <
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 61: // =
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 62: // >
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 63: // ?
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 64: // @
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 65: // A
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 66: // B
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 67: // C
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 68: // D
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 69: // E
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 70: // F
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 71: // G
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 72: // H
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 73: // I
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 74: // J
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 75: // K
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 76: // L
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 77: // M
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 78: // N
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 79: // O
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 80: // P
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 81: // Q
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 82: // R
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 83: // S
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 84: // T
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 85: // U
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 86: // V
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 87: // W
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 88: // X
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 89: // Y
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 90: // Z
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 91: // [
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 92: // backslash
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 93: // ]
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 94: // ^
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:32 deadkeyModifiers:64];
                break;
            case 95: // _
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 96: // `
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 97: // a
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 98: // b
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 99: // c
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 100: // d
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 101: // e
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 102: // f
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 103: // g
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 104: // h
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 105: // i
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 106: // j
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 107: // k
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 108: // l
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 109: // m
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 110: // n
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 111: // o
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 112: // p
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 113: // q
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 114: // r
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 115: // s
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 116: // t
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 117: // u
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 118: // v
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 119: // w
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 120: // x
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 121: // y
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 122: // z
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 123: // {
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 124: // |
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 125: // }
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 126: // ~
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 164: // ¤
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 167: // §
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 168: // ¨
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:45 deadkeyModifiers:64];
                break;
            case 176: // °
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:34 deadkeyModifiers:64];
                break;
            case 180: // ´
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 184: // ¸
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:46 deadkeyModifiers:64];
                break;
            case 193: // Á
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 194: // Â
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:32 deadkeyModifiers:64];
                break;
            case 196: // Ä
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 199: // Ç
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:2 deadkey:46 deadkeyModifiers:64];
                break;
            case 201: // É
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 203: // Ë
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:45 deadkeyModifiers:64];
                break;
            case 205: // Í
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 206: // Î
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:32 deadkeyModifiers:64];
                break;
            case 211: // Ó
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:46 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 212: // Ô
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:32 deadkeyModifiers:64];
                break;
            case 214: // Ö
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 215: // ×
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 218: // Ú
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 220: // Ü
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 221: // Ý
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 223: // ß
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 225: // á
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 226: // â
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:32 deadkeyModifiers:64];
                break;
            case 228: // ä
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 231: // ç
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:0 deadkey:46 deadkeyModifiers:64];
                break;
            case 233: // é
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 235: // ë
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:45 deadkeyModifiers:64];
                break;
            case 237: // í
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 238: // î
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:32 deadkeyModifiers:64];
                break;
            case 243: // ó
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:46 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 244: // ô
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:32 deadkeyModifiers:64];
                break;
            case 246: // ö
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 247: // ÷
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 250: // ú
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 252: // ü
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 253: // ý
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 258: // Ă
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:33 deadkeyModifiers:64];
                break;
            case 259: // ă
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:33 deadkeyModifiers:64];
                break;
            case 260: // Ą
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:35 deadkeyModifiers:64];
                break;
            case 261: // ą
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:35 deadkeyModifiers:64];
                break;
            case 262: // Ć
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 263: // ć
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 268: // Č
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 269: // č
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 270: // Ď
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 271: // ď
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 272: // Đ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 273: // đ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 280: // Ę
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:35 deadkeyModifiers:64];
                break;
            case 281: // ę
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:35 deadkeyModifiers:64];
                break;
            case 282: // Ě
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 283: // ě
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 313: // Ĺ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 314: // ĺ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 321: // Ł
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 322: // ł
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 323: // Ń
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 324: // ń
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 327: // Ň
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 328: // ň
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 336: // Ő
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 337: // ő
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 340: // Ŕ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 341: // ŕ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 344: // Ř
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 345: // ř
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:21 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 346: // Ś
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 347: // ś
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 350: // Ş
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:2 deadkey:46 deadkeyModifiers:64];
                break;
            case 351: // ş
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:0 deadkey:46 deadkeyModifiers:64];
                break;
            case 352: // Š
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 353: // š
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 354: // Ţ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:2 deadkey:46 deadkeyModifiers:64];
                break;
            case 355: // ţ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:0 deadkey:46 deadkeyModifiers:64];
                break;
            case 356: // Ť
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 357: // ť
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 366: // Ů
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:34 deadkeyModifiers:64];
                break;
            case 367: // ů
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:34 deadkeyModifiers:64];
                break;
            case 368: // Ű
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 369: // ű
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 377: // Ź
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:38 deadkeyModifiers:64];
                break;
            case 378: // ź
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:38 deadkeyModifiers:64];
                break;
            case 379: // Ż
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:37 deadkeyModifiers:64];
                break;
            case 380: // ż
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:37 deadkeyModifiers:64];
                break;
            case 381: // Ž
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:31 deadkeyModifiers:64];
                break;
            case 382: // ž
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 711: // ˇ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:31 deadkeyModifiers:64];
                break;
            case 728: // ˘
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:33 deadkeyModifiers:64];
                break;
            case 729: // ˙
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:37 deadkeyModifiers:64];
                break;
            case 731: // ˛
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:35 deadkeyModifiers:64];
                break;
            case 733: // ˝
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:39 deadkeyModifiers:64];
                break;
            case 8364: // €
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
    }
    return keyboardKeyModel;
}

- (NSString *)availableCharactersString {
    //\t\n !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~¤§¨°´¸ÁÂÄÇÉËÍÎÓÔÖ×ÚÜÝßáâäçéëíîóôö÷úüýĂăĄąĆćČčĎďĐđĘęĚěĹĺŁłŃńŇňŐőŔŕŘřŚśŞşŠšŢţŤťŮůŰűŹźŻżŽžˇ˘˙˛˝€
    return @"\t\n !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u00A4\u00A7\u00A8\u00B0\u00B4\u00B8\u00C1\u00C2\u00C4\u00C7\u00C9\u00CB\u00CD\u00CE\u00D3\u00D4\u00D6\u00D7\u00DA\u00DC\u00DD\u00DF\u00E1\u00E2\u00E4\u00E7\u00E9\u00EB\u00ED\u00EE\u00F3\u00F4\u00F6\u00F7\u00FA\u00FC\u00FD\u0102\u0103\u0104\u0105\u0106\u0107\u010C\u010D\u010E\u010F\u0110\u0111\u0118\u0119\u011A\u011B\u0139\u013A\u0141\u0142\u0143\u0144\u0147\u0148\u0150\u0151\u0154\u0155\u0158\u0159\u015A\u015B\u015E\u015F\u0160\u0161\u0162\u0163\u0164\u0165\u016E\u016F\u0170\u0171\u0179\u017A\u017B\u017C\u017D\u017E\u02C7\u02D8\u02D9\u02DB\u02DD\u20AC";
}

- (NSArray<NSNumber *> *)availableCharactersLUT {
    if (_availableCharactersLUT == nil) {
        NSMutableArray<NSNumber *> *lut = [NSMutableArray array];
        [lut addObject:[NSNumber numberWithInteger:0]];
        [lut addObject:[NSNumber numberWithInteger:9]];
        [lut addObject:[NSNumber numberWithInteger:10]];
        [lut addObject:[NSNumber numberWithInteger:33]];
        [lut addObject:[NSNumber numberWithInteger:34]];
        [lut addObject:[NSNumber numberWithInteger:35]];
        [lut addObject:[NSNumber numberWithInteger:36]];
        [lut addObject:[NSNumber numberWithInteger:37]];
        [lut addObject:[NSNumber numberWithInteger:38]];
        [lut addObject:[NSNumber numberWithInteger:39]];
        [lut addObject:[NSNumber numberWithInteger:40]];
        [lut addObject:[NSNumber numberWithInteger:41]];
        [lut addObject:[NSNumber numberWithInteger:42]];
        [lut addObject:[NSNumber numberWithInteger:43]];
        [lut addObject:[NSNumber numberWithInteger:44]];
        [lut addObject:[NSNumber numberWithInteger:45]];
        [lut addObject:[NSNumber numberWithInteger:46]];
        [lut addObject:[NSNumber numberWithInteger:47]];
        [lut addObject:[NSNumber numberWithInteger:48]];
        [lut addObject:[NSNumber numberWithInteger:49]];
        [lut addObject:[NSNumber numberWithInteger:50]];
        [lut addObject:[NSNumber numberWithInteger:51]];
        [lut addObject:[NSNumber numberWithInteger:52]];
        [lut addObject:[NSNumber numberWithInteger:53]];
        [lut addObject:[NSNumber numberWithInteger:54]];
        [lut addObject:[NSNumber numberWithInteger:55]];
        [lut addObject:[NSNumber numberWithInteger:56]];
        [lut addObject:[NSNumber numberWithInteger:57]];
        [lut addObject:[NSNumber numberWithInteger:58]];
        [lut addObject:[NSNumber numberWithInteger:59]];
        [lut addObject:[NSNumber numberWithInteger:60]];
        [lut addObject:[NSNumber numberWithInteger:61]];
        [lut addObject:[NSNumber numberWithInteger:62]];
        [lut addObject:[NSNumber numberWithInteger:63]];
        [lut addObject:[NSNumber numberWithInteger:64]];
        [lut addObject:[NSNumber numberWithInteger:65]];
        [lut addObject:[NSNumber numberWithInteger:66]];
        [lut addObject:[NSNumber numberWithInteger:67]];
        [lut addObject:[NSNumber numberWithInteger:68]];
        [lut addObject:[NSNumber numberWithInteger:69]];
        [lut addObject:[NSNumber numberWithInteger:70]];
        [lut addObject:[NSNumber numberWithInteger:71]];
        [lut addObject:[NSNumber numberWithInteger:72]];
        [lut addObject:[NSNumber numberWithInteger:73]];
        [lut addObject:[NSNumber numberWithInteger:74]];
        [lut addObject:[NSNumber numberWithInteger:75]];
        [lut addObject:[NSNumber numberWithInteger:76]];
        [lut addObject:[NSNumber numberWithInteger:77]];
        [lut addObject:[NSNumber numberWithInteger:78]];
        [lut addObject:[NSNumber numberWithInteger:79]];
        [lut addObject:[NSNumber numberWithInteger:80]];
        [lut addObject:[NSNumber numberWithInteger:81]];
        [lut addObject:[NSNumber numberWithInteger:82]];
        [lut addObject:[NSNumber numberWithInteger:83]];
        [lut addObject:[NSNumber numberWithInteger:84]];
        [lut addObject:[NSNumber numberWithInteger:85]];
        [lut addObject:[NSNumber numberWithInteger:86]];
        [lut addObject:[NSNumber numberWithInteger:87]];
        [lut addObject:[NSNumber numberWithInteger:88]];
        [lut addObject:[NSNumber numberWithInteger:89]];
        [lut addObject:[NSNumber numberWithInteger:90]];
        [lut addObject:[NSNumber numberWithInteger:91]];
        [lut addObject:[NSNumber numberWithInteger:92]];
        [lut addObject:[NSNumber numberWithInteger:93]];
        [lut addObject:[NSNumber numberWithInteger:94]];
        [lut addObject:[NSNumber numberWithInteger:95]];
        [lut addObject:[NSNumber numberWithInteger:96]];
        [lut addObject:[NSNumber numberWithInteger:97]];
        [lut addObject:[NSNumber numberWithInteger:98]];
        [lut addObject:[NSNumber numberWithInteger:99]];
        [lut addObject:[NSNumber numberWithInteger:100]];
        [lut addObject:[NSNumber numberWithInteger:101]];
        [lut addObject:[NSNumber numberWithInteger:102]];
        [lut addObject:[NSNumber numberWithInteger:103]];
        [lut addObject:[NSNumber numberWithInteger:104]];
        [lut addObject:[NSNumber numberWithInteger:105]];
        [lut addObject:[NSNumber numberWithInteger:106]];
        [lut addObject:[NSNumber numberWithInteger:107]];
        [lut addObject:[NSNumber numberWithInteger:108]];
        [lut addObject:[NSNumber numberWithInteger:109]];
        [lut addObject:[NSNumber numberWithInteger:110]];
        [lut addObject:[NSNumber numberWithInteger:111]];
        [lut addObject:[NSNumber numberWithInteger:112]];
        [lut addObject:[NSNumber numberWithInteger:113]];
        [lut addObject:[NSNumber numberWithInteger:114]];
        [lut addObject:[NSNumber numberWithInteger:115]];
        [lut addObject:[NSNumber numberWithInteger:116]];
        [lut addObject:[NSNumber numberWithInteger:117]];
        [lut addObject:[NSNumber numberWithInteger:118]];
        [lut addObject:[NSNumber numberWithInteger:119]];
        [lut addObject:[NSNumber numberWithInteger:120]];
        [lut addObject:[NSNumber numberWithInteger:121]];
        [lut addObject:[NSNumber numberWithInteger:122]];
        [lut addObject:[NSNumber numberWithInteger:123]];
        [lut addObject:[NSNumber numberWithInteger:124]];
        [lut addObject:[NSNumber numberWithInteger:125]];
        [lut addObject:[NSNumber numberWithInteger:126]];
        [lut addObject:[NSNumber numberWithInteger:164]];
        [lut addObject:[NSNumber numberWithInteger:167]];
        [lut addObject:[NSNumber numberWithInteger:168]];
        [lut addObject:[NSNumber numberWithInteger:176]];
        [lut addObject:[NSNumber numberWithInteger:180]];
        [lut addObject:[NSNumber numberWithInteger:184]];
        [lut addObject:[NSNumber numberWithInteger:193]];
        [lut addObject:[NSNumber numberWithInteger:194]];
        [lut addObject:[NSNumber numberWithInteger:196]];
        [lut addObject:[NSNumber numberWithInteger:199]];
        [lut addObject:[NSNumber numberWithInteger:201]];
        [lut addObject:[NSNumber numberWithInteger:203]];
        [lut addObject:[NSNumber numberWithInteger:205]];
        [lut addObject:[NSNumber numberWithInteger:206]];
        [lut addObject:[NSNumber numberWithInteger:211]];
        [lut addObject:[NSNumber numberWithInteger:212]];
        [lut addObject:[NSNumber numberWithInteger:214]];
        [lut addObject:[NSNumber numberWithInteger:215]];
        [lut addObject:[NSNumber numberWithInteger:218]];
        [lut addObject:[NSNumber numberWithInteger:220]];
        [lut addObject:[NSNumber numberWithInteger:221]];
        [lut addObject:[NSNumber numberWithInteger:223]];
        [lut addObject:[NSNumber numberWithInteger:225]];
        [lut addObject:[NSNumber numberWithInteger:226]];
        [lut addObject:[NSNumber numberWithInteger:228]];
        [lut addObject:[NSNumber numberWithInteger:231]];
        [lut addObject:[NSNumber numberWithInteger:233]];
        [lut addObject:[NSNumber numberWithInteger:235]];
        [lut addObject:[NSNumber numberWithInteger:237]];
        [lut addObject:[NSNumber numberWithInteger:238]];
        [lut addObject:[NSNumber numberWithInteger:243]];
        [lut addObject:[NSNumber numberWithInteger:244]];
        [lut addObject:[NSNumber numberWithInteger:246]];
        [lut addObject:[NSNumber numberWithInteger:247]];
        [lut addObject:[NSNumber numberWithInteger:250]];
        [lut addObject:[NSNumber numberWithInteger:252]];
        [lut addObject:[NSNumber numberWithInteger:253]];
        [lut addObject:[NSNumber numberWithInteger:258]];
        [lut addObject:[NSNumber numberWithInteger:259]];
        [lut addObject:[NSNumber numberWithInteger:260]];
        [lut addObject:[NSNumber numberWithInteger:261]];
        [lut addObject:[NSNumber numberWithInteger:262]];
        [lut addObject:[NSNumber numberWithInteger:263]];
        [lut addObject:[NSNumber numberWithInteger:268]];
        [lut addObject:[NSNumber numberWithInteger:269]];
        [lut addObject:[NSNumber numberWithInteger:270]];
        [lut addObject:[NSNumber numberWithInteger:271]];
        [lut addObject:[NSNumber numberWithInteger:272]];
        [lut addObject:[NSNumber numberWithInteger:273]];
        [lut addObject:[NSNumber numberWithInteger:280]];
        [lut addObject:[NSNumber numberWithInteger:281]];
        [lut addObject:[NSNumber numberWithInteger:282]];
        [lut addObject:[NSNumber numberWithInteger:283]];
        [lut addObject:[NSNumber numberWithInteger:313]];
        [lut addObject:[NSNumber numberWithInteger:314]];
        [lut addObject:[NSNumber numberWithInteger:321]];
        [lut addObject:[NSNumber numberWithInteger:322]];
        [lut addObject:[NSNumber numberWithInteger:323]];
        [lut addObject:[NSNumber numberWithInteger:324]];
        [lut addObject:[NSNumber numberWithInteger:327]];
        [lut addObject:[NSNumber numberWithInteger:328]];
        [lut addObject:[NSNumber numberWithInteger:336]];
        [lut addObject:[NSNumber numberWithInteger:337]];
        [lut addObject:[NSNumber numberWithInteger:340]];
        [lut addObject:[NSNumber numberWithInteger:341]];
        [lut addObject:[NSNumber numberWithInteger:344]];
        [lut addObject:[NSNumber numberWithInteger:345]];
        [lut addObject:[NSNumber numberWithInteger:346]];
        [lut addObject:[NSNumber numberWithInteger:347]];
        [lut addObject:[NSNumber numberWithInteger:350]];
        [lut addObject:[NSNumber numberWithInteger:351]];
        [lut addObject:[NSNumber numberWithInteger:352]];
        [lut addObject:[NSNumber numberWithInteger:353]];
        [lut addObject:[NSNumber numberWithInteger:354]];
        [lut addObject:[NSNumber numberWithInteger:355]];
        [lut addObject:[NSNumber numberWithInteger:356]];
        [lut addObject:[NSNumber numberWithInteger:357]];
        [lut addObject:[NSNumber numberWithInteger:366]];
        [lut addObject:[NSNumber numberWithInteger:367]];
        [lut addObject:[NSNumber numberWithInteger:368]];
        [lut addObject:[NSNumber numberWithInteger:369]];
        [lut addObject:[NSNumber numberWithInteger:377]];
        [lut addObject:[NSNumber numberWithInteger:378]];
        [lut addObject:[NSNumber numberWithInteger:379]];
        [lut addObject:[NSNumber numberWithInteger:380]];
        [lut addObject:[NSNumber numberWithInteger:381]];
        [lut addObject:[NSNumber numberWithInteger:382]];
        [lut addObject:[NSNumber numberWithInteger:711]];
        [lut addObject:[NSNumber numberWithInteger:728]];
        [lut addObject:[NSNumber numberWithInteger:729]];
        [lut addObject:[NSNumber numberWithInteger:731]];
        [lut addObject:[NSNumber numberWithInteger:733]];
        [lut addObject:[NSNumber numberWithInteger:8364]];
        _availableCharactersLUT = lut;
    }
    return _availableCharactersLUT;
}

- (InputStickKeyLabels *)keyLabels {
    if (_keyLabels == nil) {
        _keyLabels = [[InputStickKeyLabels alloc] init];
        [_keyLabels setupKey:0x04 withCharCodesArray:@[@0x00, @0x0061, @0x0041, @0x00E4, @0x0000, @0x0041, @0x0061, @0x00E4, @0x0000]];
        [_keyLabels setupKey:0x05 withCharCodesArray:@[@0x00, @0x0062, @0x0042, @0x007B, @0x0000, @0x0042, @0x0062, @0x007B, @0x0000]];
        [_keyLabels setupKey:0x06 withCharCodesArray:@[@0x00, @0x0063, @0x0043, @0x0026, @0x0000, @0x0043, @0x0063, @0x0026, @0x0000]];
        [_keyLabels setupKey:0x07 withCharCodesArray:@[@0x00, @0x0064, @0x0044, @0x0110, @0x0000, @0x0044, @0x0064, @0x0110, @0x0000]];
        [_keyLabels setupKey:0x08 withCharCodesArray:@[@0x00, @0x0065, @0x0045, @0x00C4, @0x0000, @0x0045, @0x0065, @0x00C4, @0x0000]];
        [_keyLabels setupKey:0x09 withCharCodesArray:@[@0x00, @0x0066, @0x0046, @0x005B, @0x0000, @0x0046, @0x0066, @0x005B, @0x0000]];
        [_keyLabels setupKey:0x0A withCharCodesArray:@[@0x00, @0x0067, @0x0047, @0x005D, @0x0000, @0x0047, @0x0067, @0x005D, @0x0000]];
        [_keyLabels setupKey:0x0B withCharCodesArray:@[@0x00, @0x0068, @0x0048, @0x0000, @0x0000, @0x0048, @0x0068, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x0C withCharCodesArray:@[@0x00, @0x0069, @0x0049, @0x00CD, @0x0000, @0x0049, @0x0069, @0x00CD, @0x0000]];
        [_keyLabels setupKey:0x0D withCharCodesArray:@[@0x00, @0x006A, @0x004A, @0x00ED, @0x0000, @0x004A, @0x006A, @0x00ED, @0x0000]];
        [_keyLabels setupKey:0x0E withCharCodesArray:@[@0x00, @0x006B, @0x004B, @0x0142, @0x0000, @0x004B, @0x006B, @0x0142, @0x0000]];
        [_keyLabels setupKey:0x0F withCharCodesArray:@[@0x00, @0x006C, @0x004C, @0x0141, @0x0000, @0x004C, @0x006C, @0x0141, @0x0000]];
        [_keyLabels setupKey:0x10 withCharCodesArray:@[@0x00, @0x006D, @0x004D, @0x003C, @0x0000, @0x004D, @0x006D, @0x003C, @0x0000]];
        [_keyLabels setupKey:0x11 withCharCodesArray:@[@0x00, @0x006E, @0x004E, @0x007D, @0x0000, @0x004E, @0x006E, @0x007D, @0x0000]];
        [_keyLabels setupKey:0x12 withCharCodesArray:@[@0x00, @0x006F, @0x004F, @0x0000, @0x0000, @0x004F, @0x006F, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x13 withCharCodesArray:@[@0x00, @0x0070, @0x0050, @0x0000, @0x0000, @0x0050, @0x0070, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x14 withCharCodesArray:@[@0x00, @0x0071, @0x0051, @0x005C, @0x0000, @0x0051, @0x0071, @0x005C, @0x0000]];
        [_keyLabels setupKey:0x15 withCharCodesArray:@[@0x00, @0x0072, @0x0052, @0x0000, @0x0000, @0x0052, @0x0072, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x16 withCharCodesArray:@[@0x00, @0x0073, @0x0053, @0x0111, @0x0000, @0x0053, @0x0073, @0x0111, @0x0000]];
        [_keyLabels setupKey:0x17 withCharCodesArray:@[@0x00, @0x0074, @0x0054, @0x0000, @0x0000, @0x0054, @0x0074, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x18 withCharCodesArray:@[@0x00, @0x0075, @0x0055, @0x20AC, @0x0000, @0x0055, @0x0075, @0x20AC, @0x0000]];
        [_keyLabels setupKey:0x19 withCharCodesArray:@[@0x00, @0x0076, @0x0056, @0x0040, @0x0000, @0x0056, @0x0076, @0x0040, @0x0000]];
        [_keyLabels setupKey:0x1A withCharCodesArray:@[@0x00, @0x0077, @0x0057, @0x007C, @0x0000, @0x0057, @0x0077, @0x007C, @0x0000]];
        [_keyLabels setupKey:0x1B withCharCodesArray:@[@0x00, @0x0078, @0x0058, @0x0023, @0x0000, @0x0058, @0x0078, @0x0023, @0x0000]];
        [_keyLabels setupKey:0x1C withCharCodesArray:@[@0x00, @0x007A, @0x005A, @0x0000, @0x0000, @0x005A, @0x007A, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x1D withCharCodesArray:@[@0x00, @0x0079, @0x0059, @0x003E, @0x0000, @0x0059, @0x0079, @0x003E, @0x0000]];
        [_keyLabels setupKey:0x1E withCharCodesArray:@[@0x00, @0x0031, @0x0027, @0x007E, @0x0000, @0x0031, @0x0027, @0x007E, @0x0000]];
        [_keyLabels setupKey:0x1F withCharCodesArray:@[@0x44, @0x0032, @0x0022, @0x02C7, @0x0000, @0x0032, @0x0022, @0x02C7, @0x0000]];
        [_keyLabels setupKey:0x20 withCharCodesArray:@[@0x44, @0x0033, @0x002B, @0x005E, @0x0000, @0x0033, @0x002B, @0x005E, @0x0000]];
        [_keyLabels setupKey:0x21 withCharCodesArray:@[@0x44, @0x0034, @0x0021, @0x02D8, @0x0000, @0x0034, @0x0021, @0x02D8, @0x0000]];
        [_keyLabels setupKey:0x22 withCharCodesArray:@[@0x44, @0x0035, @0x0025, @0x00B0, @0x0000, @0x0035, @0x0025, @0x00B0, @0x0000]];
        [_keyLabels setupKey:0x23 withCharCodesArray:@[@0x44, @0x0036, @0x002F, @0x02DB, @0x0000, @0x0036, @0x002F, @0x02DB, @0x0000]];
        [_keyLabels setupKey:0x24 withCharCodesArray:@[@0x00, @0x0037, @0x003D, @0x0060, @0x0000, @0x0037, @0x003D, @0x0060, @0x0000]];
        [_keyLabels setupKey:0x25 withCharCodesArray:@[@0x44, @0x0038, @0x0028, @0x02D9, @0x0000, @0x0038, @0x0028, @0x02D9, @0x0000]];
        [_keyLabels setupKey:0x26 withCharCodesArray:@[@0x44, @0x0039, @0x0029, @0x00B4, @0x0000, @0x0039, @0x0029, @0x00B4, @0x0000]];
        [_keyLabels setupKey:0x27 withCharCodesArray:@[@0x44, @0x00F6, @0x00D6, @0x02DD, @0x0000, @0x00D6, @0x00F6, @0x02DD, @0x0000]];
        [_keyLabels setupKey:0x2D withCharCodesArray:@[@0x44, @0x00FC, @0x00DC, @0x00A8, @0x0000, @0x00DC, @0x00FC, @0x00A8, @0x0000]];
        [_keyLabels setupKey:0x2E withCharCodesArray:@[@0x44, @0x00F3, @0x00D3, @0x00B8, @0x0000, @0x00D3, @0x00F3, @0x00B8, @0x0000]];
        [_keyLabels setupKey:0x2F withCharCodesArray:@[@0x00, @0x0151, @0x0150, @0x00F7, @0x0000, @0x0150, @0x0151, @0x00F7, @0x0000]];
        [_keyLabels setupKey:0x30 withCharCodesArray:@[@0x00, @0x00FA, @0x00DA, @0x00D7, @0x0000, @0x00DA, @0x00FA, @0x00D7, @0x0000]];
        [_keyLabels setupKey:0x31 withCharCodesArray:@[@0x00, @0x0171, @0x0170, @0x00A4, @0x0000, @0x0170, @0x0171, @0x00A4, @0x0000]];
        [_keyLabels setupKey:0x33 withCharCodesArray:@[@0x00, @0x00E9, @0x00C9, @0x0024, @0x0000, @0x00C9, @0x00E9, @0x0024, @0x0000]];
        [_keyLabels setupKey:0x34 withCharCodesArray:@[@0x00, @0x00E1, @0x00C1, @0x00DF, @0x0000, @0x00C1, @0x00E1, @0x00DF, @0x0000]];
        [_keyLabels setupKey:0x35 withCharCodesArray:@[@0x00, @0x0030, @0x00A7, @0x0000, @0x0000, @0x0030, @0x00A7, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x36 withCharCodesArray:@[@0x00, @0x002C, @0x003F, @0x003B, @0x0000, @0x002C, @0x003F, @0x003B, @0x0000]];
        [_keyLabels setupKey:0x37 withCharCodesArray:@[@0x00, @0x002E, @0x003A, @0x003E, @0x0000, @0x002E, @0x003A, @0x003E, @0x0000]];
        [_keyLabels setupKey:0x38 withCharCodesArray:@[@0x00, @0x002D, @0x005F, @0x002A, @0x0000, @0x002D, @0x005F, @0x002A, @0x0000]];
        [_keyLabels setupKey:0x64 withCharCodesArray:@[@0x00, @0x00ED, @0x00CD, @0x003C, @0x0000, @0x00CD, @0x00ED, @0x003C, @0x0000]];
    }
    return _keyLabels;
}

@end
