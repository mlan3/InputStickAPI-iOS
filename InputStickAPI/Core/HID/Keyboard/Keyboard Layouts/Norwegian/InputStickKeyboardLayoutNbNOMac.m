/*
 * InputStickAPI-iOS
 * Copyright (c) 2020 Jakub Zawadzki, www.inputstick.com
 */
 
#import "InputStickKeyboardLayoutNbNOMac.h"
#import "InputStickKeyboardKeyModel.h"
#import "InputStickKeyLabels.h"

//InputStickKeyboardLayoutGenerator v1.00

@interface InputStickKeyboardLayoutNbNOMac () {
    InputStickKeyLabels *_keyLabels;
    NSArray<NSNumber *> *_availableCharactersLUT;
}

@end


@implementation InputStickKeyboardLayoutNbNOMac

- (NSString *)layoutCode {
    return @"nb-NO-mac";
}

- (NSString *)layoutCodeLowercase {
    return @"nb-no-mac";
}

- (NSString *)layoutLanguageCode {
    return @"nb";
}

- (NSString *)layoutLanguageNativeName {
    return @"Norsk";
}

- (NSString *)layoutLanguageEnglishName {
    return @"Norwegian";
}

- (NSString *)layoutCountryCode {
    return @"NO";
}

- (NSString *)layoutCountryNativeName {
    return @"Norge";
}

- (NSString *)layoutCountryEnglishName {
    return @"Norway";
}

- (NSString *)layoutVariant {
    return @"NO macOS";
}

- (NSString *)layoutDisplayName {
    return @"Norwegian, NO macOS";
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
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 34: // "
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 35: // #
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 36: // $
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 37: // %
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 38: // &
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 39: // '
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 40: // (
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 41: // )
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 42: // *
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 43: // +
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:0 deadkey:0 deadkeyModifiers:0];
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
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 48: // 0
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:0 deadkey:0 deadkeyModifiers:0];
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
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 60: // <
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 61: // =
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 62: // >
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 63: // ?
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 64: // @
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:49 modifiers:0 deadkey:0 deadkeyModifiers:0];
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
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 90: // Z
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 91: // [
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 92: // backslash
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 93: // ]
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 94: // ^
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:48 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 95: // _
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 96: // `
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:46 modifiers:64 deadkey:0 deadkeyModifiers:0];
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
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 122: // z
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 123: // {
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:37 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 124: // |
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:36 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 125: // }
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:38 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 126: // ~
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:48 deadkeyModifiers:64];
                break;
            case 161: // ¡
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 162: // ¢
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 163: // £
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 165: // ¥
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:32 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 167: // §
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 168: // ¨
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:48 deadkeyModifiers:0];
                break;
            case 169: // ©
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:30 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 170: // ª
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 171: // «
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 172: // ¬
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 174: // ®
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 175: // ¯
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 176: // °
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 177: // ±
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 180: // ´
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:44 modifiers:0 deadkey:46 deadkeyModifiers:0];
                break;
            case 181: // µ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 182: // ¶
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:35 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 183: // ·
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 184: // ¸
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:10 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 186: // º
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:14 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 187: // »
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 191: // ¿
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:45 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 192: // À
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:46 deadkeyModifiers:2];
                break;
            case 193: // Á
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:46 deadkeyModifiers:0];
                break;
            case 194: // Â
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:48 deadkeyModifiers:2];
                break;
            case 195: // Ã
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:2 deadkey:48 deadkeyModifiers:64];
                break;
            case 196: // Ä
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 197: // Å
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 198: // Æ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 199: // Ç
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 200: // È
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:46 deadkeyModifiers:2];
                break;
            case 201: // É
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 202: // Ê
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:48 deadkeyModifiers:2];
                break;
            case 203: // Ë
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:2 deadkey:48 deadkeyModifiers:0];
                break;
            case 204: // Ì
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:46 deadkeyModifiers:2];
                break;
            case 205: // Í
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:46 deadkeyModifiers:0];
                break;
            case 206: // Î
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:48 deadkeyModifiers:2];
                break;
            case 207: // Ï
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:2 deadkey:48 deadkeyModifiers:0];
                break;
            case 209: // Ñ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:2 deadkey:48 deadkeyModifiers:64];
                break;
            case 210: // Ò
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:46 deadkeyModifiers:2];
                break;
            case 211: // Ó
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:46 deadkeyModifiers:0];
                break;
            case 212: // Ô
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:48 deadkeyModifiers:2];
                break;
            case 213: // Õ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:2 deadkey:48 deadkeyModifiers:64];
                break;
            case 214: // Ö
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 216: // Ø
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:2 deadkey:0 deadkeyModifiers:0];
                break;
            case 217: // Ù
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:46 deadkeyModifiers:2];
                break;
            case 218: // Ú
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:46 deadkeyModifiers:0];
                break;
            case 219: // Û
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:2 deadkey:48 deadkeyModifiers:2];
                break;
            case 220: // Ü
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 223: // ß
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 224: // à
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:46 deadkeyModifiers:2];
                break;
            case 225: // á
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:46 deadkeyModifiers:0];
                break;
            case 226: // â
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:48 deadkeyModifiers:2];
                break;
            case 227: // ã
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:0 deadkey:48 deadkeyModifiers:64];
                break;
            case 228: // ä
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 229: // å
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 230: // æ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:52 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 231: // ç
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:6 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 232: // è
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:46 deadkeyModifiers:2];
                break;
            case 233: // é
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 234: // ê
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:48 deadkeyModifiers:2];
                break;
            case 235: // ë
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:8 modifiers:0 deadkey:48 deadkeyModifiers:0];
                break;
            case 236: // ì
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:46 deadkeyModifiers:2];
                break;
            case 237: // í
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:46 deadkeyModifiers:0];
                break;
            case 238: // î
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:48 deadkeyModifiers:2];
                break;
            case 239: // ï
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:0 deadkey:48 deadkeyModifiers:0];
                break;
            case 241: // ñ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:0 deadkey:48 deadkeyModifiers:64];
                break;
            case 242: // ò
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:46 deadkeyModifiers:2];
                break;
            case 243: // ó
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:46 deadkeyModifiers:0];
                break;
            case 244: // ô
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:48 deadkeyModifiers:2];
                break;
            case 245: // õ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:0 deadkey:48 deadkeyModifiers:64];
                break;
            case 246: // ö
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 247: // ÷
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 248: // ø
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:51 modifiers:0 deadkey:0 deadkeyModifiers:0];
                break;
            case 249: // ù
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:46 deadkeyModifiers:2];
                break;
            case 250: // ú
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:46 deadkeyModifiers:0];
                break;
            case 251: // û
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:0 deadkey:48 deadkeyModifiers:2];
                break;
            case 252: // ü
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:24 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 255: // ÿ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:0 deadkey:48 deadkeyModifiers:0];
                break;
            case 305: // ı
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 338: // Œ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 339: // œ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:18 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 376: // Ÿ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:53 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 402: // ƒ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 710: // ˆ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:12 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 728: // ˘
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 729: // ˙
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 730: // ˚
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:47 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 731: // ˛
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:11 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 732: // ˜
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:28 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 733: // ˝
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 937: // Ω
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:26 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 960: // π
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8211: // –
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8212: // —
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:56 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8216: // ‘
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8217: // ’
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8218: // ‚
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8220: // “
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:17 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8221: // ”
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:16 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8222: // „
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:54 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8224: // †
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8225: // ‡
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:23 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8226: // •
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:20 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8230: // …
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:55 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8240: // ‰
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8249: // ‹
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:25 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8250: // ›
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:5 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8260: // ⁄
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:29 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8364: // €
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:33 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8482: // ™
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:31 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8706: // ∂
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8710: // ∆
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:7 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8719: // ∏
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:19 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8721: // ∑
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:22 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8730: // √
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:13 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8734: // ∞
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:34 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8747: // ∫
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:9 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8776: // ≈
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:27 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8800: // ≠
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:39 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 8804: // ≤
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 8805: // ≥
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:100 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 9674: // ◊
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
            case 63743: // 
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:4 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 64257: // ﬁ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:64 deadkey:0 deadkeyModifiers:0];
                break;
            case 64258: // ﬂ
                keyboardKeyModel = [[InputStickKeyboardKeyModel alloc]initWithUnicodeCharacter:character key:15 modifiers:66 deadkey:0 deadkeyModifiers:0];
                break;
    }
    return keyboardKeyModel;
}

- (NSString *)availableCharactersString {
    //\t\n !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~¡¢£¥§¨©ª«¬®¯°±´µ¶·¸º»¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜßàáâãäåæçèéêëìíîïñòóôõö÷øùúûüÿıŒœŸƒˆ˘˙˚˛˜˝Ωπ–—‘’‚“”„†‡•…‰‹›⁄€™∂∆∏∑√∞∫≈≠≤≥◊ﬁﬂ
    return @"\t\n !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u00A1\u00A2\u00A3\u00A5\u00A7\u00A8\u00A9\u00AA\u00AB\u00AC\u00AE\u00AF\u00B0\u00B1\u00B4\u00B5\u00B6\u00B7\u00B8\u00BA\u00BB\u00BF\u00C0\u00C1\u00C2\u00C3\u00C4\u00C5\u00C6\u00C7\u00C8\u00C9\u00CA\u00CB\u00CC\u00CD\u00CE\u00CF\u00D1\u00D2\u00D3\u00D4\u00D5\u00D6\u00D8\u00D9\u00DA\u00DB\u00DC\u00DF\u00E0\u00E1\u00E2\u00E3\u00E4\u00E5\u00E6\u00E7\u00E8\u00E9\u00EA\u00EB\u00EC\u00ED\u00EE\u00EF\u00F1\u00F2\u00F3\u00F4\u00F5\u00F6\u00F7\u00F8\u00F9\u00FA\u00FB\u00FC\u00FF\u0131\u0152\u0153\u0178\u0192\u02C6\u02D8\u02D9\u02DA\u02DB\u02DC\u02DD\u03A9\u03C0\u2013\u2014\u2018\u2019\u201A\u201C\u201D\u201E\u2020\u2021\u2022\u2026\u2030\u2039\u203A\u2044\u20AC\u2122\u2202\u2206\u220F\u2211\u221A\u221E\u222B\u2248\u2260\u2264\u2265\u25CA\uF8FF\uFB01\uFB02";
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
        [lut addObject:[NSNumber numberWithInteger:161]];
        [lut addObject:[NSNumber numberWithInteger:162]];
        [lut addObject:[NSNumber numberWithInteger:163]];
        [lut addObject:[NSNumber numberWithInteger:165]];
        [lut addObject:[NSNumber numberWithInteger:167]];
        [lut addObject:[NSNumber numberWithInteger:168]];
        [lut addObject:[NSNumber numberWithInteger:169]];
        [lut addObject:[NSNumber numberWithInteger:170]];
        [lut addObject:[NSNumber numberWithInteger:171]];
        [lut addObject:[NSNumber numberWithInteger:172]];
        [lut addObject:[NSNumber numberWithInteger:174]];
        [lut addObject:[NSNumber numberWithInteger:175]];
        [lut addObject:[NSNumber numberWithInteger:176]];
        [lut addObject:[NSNumber numberWithInteger:177]];
        [lut addObject:[NSNumber numberWithInteger:180]];
        [lut addObject:[NSNumber numberWithInteger:181]];
        [lut addObject:[NSNumber numberWithInteger:182]];
        [lut addObject:[NSNumber numberWithInteger:183]];
        [lut addObject:[NSNumber numberWithInteger:184]];
        [lut addObject:[NSNumber numberWithInteger:186]];
        [lut addObject:[NSNumber numberWithInteger:187]];
        [lut addObject:[NSNumber numberWithInteger:191]];
        [lut addObject:[NSNumber numberWithInteger:192]];
        [lut addObject:[NSNumber numberWithInteger:193]];
        [lut addObject:[NSNumber numberWithInteger:194]];
        [lut addObject:[NSNumber numberWithInteger:195]];
        [lut addObject:[NSNumber numberWithInteger:196]];
        [lut addObject:[NSNumber numberWithInteger:197]];
        [lut addObject:[NSNumber numberWithInteger:198]];
        [lut addObject:[NSNumber numberWithInteger:199]];
        [lut addObject:[NSNumber numberWithInteger:200]];
        [lut addObject:[NSNumber numberWithInteger:201]];
        [lut addObject:[NSNumber numberWithInteger:202]];
        [lut addObject:[NSNumber numberWithInteger:203]];
        [lut addObject:[NSNumber numberWithInteger:204]];
        [lut addObject:[NSNumber numberWithInteger:205]];
        [lut addObject:[NSNumber numberWithInteger:206]];
        [lut addObject:[NSNumber numberWithInteger:207]];
        [lut addObject:[NSNumber numberWithInteger:209]];
        [lut addObject:[NSNumber numberWithInteger:210]];
        [lut addObject:[NSNumber numberWithInteger:211]];
        [lut addObject:[NSNumber numberWithInteger:212]];
        [lut addObject:[NSNumber numberWithInteger:213]];
        [lut addObject:[NSNumber numberWithInteger:214]];
        [lut addObject:[NSNumber numberWithInteger:216]];
        [lut addObject:[NSNumber numberWithInteger:217]];
        [lut addObject:[NSNumber numberWithInteger:218]];
        [lut addObject:[NSNumber numberWithInteger:219]];
        [lut addObject:[NSNumber numberWithInteger:220]];
        [lut addObject:[NSNumber numberWithInteger:223]];
        [lut addObject:[NSNumber numberWithInteger:224]];
        [lut addObject:[NSNumber numberWithInteger:225]];
        [lut addObject:[NSNumber numberWithInteger:226]];
        [lut addObject:[NSNumber numberWithInteger:227]];
        [lut addObject:[NSNumber numberWithInteger:228]];
        [lut addObject:[NSNumber numberWithInteger:229]];
        [lut addObject:[NSNumber numberWithInteger:230]];
        [lut addObject:[NSNumber numberWithInteger:231]];
        [lut addObject:[NSNumber numberWithInteger:232]];
        [lut addObject:[NSNumber numberWithInteger:233]];
        [lut addObject:[NSNumber numberWithInteger:234]];
        [lut addObject:[NSNumber numberWithInteger:235]];
        [lut addObject:[NSNumber numberWithInteger:236]];
        [lut addObject:[NSNumber numberWithInteger:237]];
        [lut addObject:[NSNumber numberWithInteger:238]];
        [lut addObject:[NSNumber numberWithInteger:239]];
        [lut addObject:[NSNumber numberWithInteger:241]];
        [lut addObject:[NSNumber numberWithInteger:242]];
        [lut addObject:[NSNumber numberWithInteger:243]];
        [lut addObject:[NSNumber numberWithInteger:244]];
        [lut addObject:[NSNumber numberWithInteger:245]];
        [lut addObject:[NSNumber numberWithInteger:246]];
        [lut addObject:[NSNumber numberWithInteger:247]];
        [lut addObject:[NSNumber numberWithInteger:248]];
        [lut addObject:[NSNumber numberWithInteger:249]];
        [lut addObject:[NSNumber numberWithInteger:250]];
        [lut addObject:[NSNumber numberWithInteger:251]];
        [lut addObject:[NSNumber numberWithInteger:252]];
        [lut addObject:[NSNumber numberWithInteger:255]];
        [lut addObject:[NSNumber numberWithInteger:305]];
        [lut addObject:[NSNumber numberWithInteger:338]];
        [lut addObject:[NSNumber numberWithInteger:339]];
        [lut addObject:[NSNumber numberWithInteger:376]];
        [lut addObject:[NSNumber numberWithInteger:402]];
        [lut addObject:[NSNumber numberWithInteger:710]];
        [lut addObject:[NSNumber numberWithInteger:728]];
        [lut addObject:[NSNumber numberWithInteger:729]];
        [lut addObject:[NSNumber numberWithInteger:730]];
        [lut addObject:[NSNumber numberWithInteger:731]];
        [lut addObject:[NSNumber numberWithInteger:732]];
        [lut addObject:[NSNumber numberWithInteger:733]];
        [lut addObject:[NSNumber numberWithInteger:937]];
        [lut addObject:[NSNumber numberWithInteger:960]];
        [lut addObject:[NSNumber numberWithInteger:8211]];
        [lut addObject:[NSNumber numberWithInteger:8212]];
        [lut addObject:[NSNumber numberWithInteger:8216]];
        [lut addObject:[NSNumber numberWithInteger:8217]];
        [lut addObject:[NSNumber numberWithInteger:8218]];
        [lut addObject:[NSNumber numberWithInteger:8220]];
        [lut addObject:[NSNumber numberWithInteger:8221]];
        [lut addObject:[NSNumber numberWithInteger:8222]];
        [lut addObject:[NSNumber numberWithInteger:8224]];
        [lut addObject:[NSNumber numberWithInteger:8225]];
        [lut addObject:[NSNumber numberWithInteger:8226]];
        [lut addObject:[NSNumber numberWithInteger:8230]];
        [lut addObject:[NSNumber numberWithInteger:8240]];
        [lut addObject:[NSNumber numberWithInteger:8249]];
        [lut addObject:[NSNumber numberWithInteger:8250]];
        [lut addObject:[NSNumber numberWithInteger:8260]];
        [lut addObject:[NSNumber numberWithInteger:8364]];
        [lut addObject:[NSNumber numberWithInteger:8482]];
        [lut addObject:[NSNumber numberWithInteger:8706]];
        [lut addObject:[NSNumber numberWithInteger:8710]];
        [lut addObject:[NSNumber numberWithInteger:8719]];
        [lut addObject:[NSNumber numberWithInteger:8721]];
        [lut addObject:[NSNumber numberWithInteger:8730]];
        [lut addObject:[NSNumber numberWithInteger:8734]];
        [lut addObject:[NSNumber numberWithInteger:8747]];
        [lut addObject:[NSNumber numberWithInteger:8776]];
        [lut addObject:[NSNumber numberWithInteger:8800]];
        [lut addObject:[NSNumber numberWithInteger:8804]];
        [lut addObject:[NSNumber numberWithInteger:8805]];
        [lut addObject:[NSNumber numberWithInteger:9674]];
        [lut addObject:[NSNumber numberWithInteger:63743]];
        [lut addObject:[NSNumber numberWithInteger:64257]];
        [lut addObject:[NSNumber numberWithInteger:64258]];
        _availableCharactersLUT = lut;
    }
    return _availableCharactersLUT;
}

- (InputStickKeyLabels *)keyLabels {
    if (_keyLabels == nil) {
        _keyLabels = [[InputStickKeyLabels alloc] init];
        [_keyLabels setupKey:0x04 withCharCodesArray:@[@0x00, @0x0061, @0x0041, @0xF8FF, @0x25CA, @0x0041, @0x0041, @0xF8FF, @0x25CA]];
        [_keyLabels setupKey:0x05 withCharCodesArray:@[@0x00, @0x0062, @0x0042, @0x203A, @0x00BB, @0x0042, @0x0042, @0x203A, @0x00BB]];
        [_keyLabels setupKey:0x06 withCharCodesArray:@[@0x00, @0x0063, @0x0043, @0x00E7, @0x00C7, @0x0043, @0x0043, @0x00C7, @0x00C7]];
        [_keyLabels setupKey:0x07 withCharCodesArray:@[@0x00, @0x0064, @0x0044, @0x2202, @0x2206, @0x0044, @0x0044, @0x2202, @0x2206]];
        [_keyLabels setupKey:0x08 withCharCodesArray:@[@0x00, @0x0065, @0x0045, @0x00E9, @0x00C9, @0x0045, @0x0045, @0x00C9, @0x00C9]];
        [_keyLabels setupKey:0x09 withCharCodesArray:@[@0x00, @0x0066, @0x0046, @0x0192, @0x222B, @0x0046, @0x0046, @0x0192, @0x222B]];
        [_keyLabels setupKey:0x0A withCharCodesArray:@[@0x00, @0x0067, @0x0047, @0x00B8, @0x00AF, @0x0047, @0x0047, @0x00B8, @0x00AF]];
        [_keyLabels setupKey:0x0B withCharCodesArray:@[@0x00, @0x0068, @0x0048, @0x02DB, @0x02D8, @0x0048, @0x0048, @0x02DB, @0x02D8]];
        [_keyLabels setupKey:0x0C withCharCodesArray:@[@0x00, @0x0069, @0x0049, @0x0131, @0x02C6, @0x0049, @0x0049, @0x0131, @0x02C6]];
        [_keyLabels setupKey:0x0D withCharCodesArray:@[@0x00, @0x006A, @0x004A, @0x221A, @0x00AC, @0x004A, @0x004A, @0x221A, @0x00AC]];
        [_keyLabels setupKey:0x0E withCharCodesArray:@[@0x00, @0x006B, @0x004B, @0x00AA, @0x00BA, @0x004B, @0x004B, @0x00AA, @0x00BA]];
        [_keyLabels setupKey:0x0F withCharCodesArray:@[@0x00, @0x006C, @0x004C, @0xFB01, @0xFB02, @0x004C, @0x004C, @0xFB01, @0xFB02]];
        [_keyLabels setupKey:0x10 withCharCodesArray:@[@0x00, @0x006D, @0x004D, @0x2019, @0x201D, @0x004D, @0x004D, @0x2019, @0x201D]];
        [_keyLabels setupKey:0x11 withCharCodesArray:@[@0x00, @0x006E, @0x004E, @0x2018, @0x201C, @0x004E, @0x004E, @0x2018, @0x201C]];
        [_keyLabels setupKey:0x12 withCharCodesArray:@[@0x00, @0x006F, @0x004F, @0x0153, @0x0152, @0x004F, @0x004F, @0x0152, @0x0152]];
        [_keyLabels setupKey:0x13 withCharCodesArray:@[@0x00, @0x0070, @0x0050, @0x03C0, @0x220F, @0x0050, @0x0050, @0x03C0, @0x220F]];
        [_keyLabels setupKey:0x14 withCharCodesArray:@[@0x00, @0x0071, @0x0051, @0x2022, @0x00B0, @0x0051, @0x0051, @0x2022, @0x00B0]];
        [_keyLabels setupKey:0x15 withCharCodesArray:@[@0x00, @0x0072, @0x0052, @0x0000, @0x0000, @0x0052, @0x0052, @0x0000, @0x0000]];
        [_keyLabels setupKey:0x16 withCharCodesArray:@[@0x00, @0x0073, @0x0053, @0x00DF, @0x2211, @0x0053, @0x0053, @0x00DF, @0x2211]];
        [_keyLabels setupKey:0x17 withCharCodesArray:@[@0x00, @0x0074, @0x0054, @0x2020, @0x2021, @0x0054, @0x0054, @0x2020, @0x2021]];
        [_keyLabels setupKey:0x18 withCharCodesArray:@[@0x00, @0x0075, @0x0055, @0x00FC, @0x00DC, @0x0055, @0x0055, @0x00DC, @0x00DC]];
        [_keyLabels setupKey:0x19 withCharCodesArray:@[@0x00, @0x0076, @0x0056, @0x2039, @0x00AB, @0x0056, @0x0056, @0x2039, @0x00AB]];
        [_keyLabels setupKey:0x1A withCharCodesArray:@[@0x00, @0x0077, @0x0057, @0x03A9, @0x02DD, @0x0057, @0x0057, @0x03A9, @0x02DD]];
        [_keyLabels setupKey:0x1B withCharCodesArray:@[@0x00, @0x0078, @0x0058, @0x2248, @0x0000, @0x0058, @0x0058, @0x00D9, @0x0000]];
        [_keyLabels setupKey:0x1C withCharCodesArray:@[@0x00, @0x0079, @0x0059, @0x00B5, @0x02DC, @0x0059, @0x0059, @0x00B5, @0x02DC]];
        [_keyLabels setupKey:0x1D withCharCodesArray:@[@0x00, @0x007A, @0x005A, @0x00F7, @0x2044, @0x005A, @0x005A, @0x00F7, @0x2044]];
        [_keyLabels setupKey:0x1E withCharCodesArray:@[@0x00, @0x0031, @0x0021, @0x00A9, @0x00A1, @0x0031, @0x0021, @0x00A9, @0x00A1]];
        [_keyLabels setupKey:0x1F withCharCodesArray:@[@0x00, @0x0032, @0x0022, @0x2122, @0x00AE, @0x0032, @0x0022, @0x2122, @0x00AE]];
        [_keyLabels setupKey:0x20 withCharCodesArray:@[@0x00, @0x0033, @0x0023, @0x00A3, @0x00A5, @0x0033, @0x0023, @0x00A3, @0x00A5]];
        [_keyLabels setupKey:0x21 withCharCodesArray:@[@0x00, @0x0034, @0x0024, @0x20AC, @0x00A2, @0x0034, @0x0024, @0x20AC, @0x00A2]];
        [_keyLabels setupKey:0x22 withCharCodesArray:@[@0x00, @0x0035, @0x0025, @0x221E, @0x2030, @0x0035, @0x0025, @0x221E, @0x2030]];
        [_keyLabels setupKey:0x23 withCharCodesArray:@[@0x00, @0x0036, @0x0026, @0x00A7, @0x00B6, @0x0036, @0x0026, @0x00A7, @0x00B6]];
        [_keyLabels setupKey:0x24 withCharCodesArray:@[@0x00, @0x0037, @0x002F, @0x007C, @0x005C, @0x0037, @0x002F, @0x007C, @0x005C]];
        [_keyLabels setupKey:0x25 withCharCodesArray:@[@0x00, @0x0038, @0x0028, @0x005B, @0x007B, @0x0038, @0x0028, @0x005B, @0x007B]];
        [_keyLabels setupKey:0x26 withCharCodesArray:@[@0x00, @0x0039, @0x0029, @0x005D, @0x007D, @0x0039, @0x0029, @0x005D, @0x007D]];
        [_keyLabels setupKey:0x27 withCharCodesArray:@[@0x00, @0x0030, @0x003D, @0x2248, @0x2260, @0x0030, @0x003D, @0x2248, @0x2260]];
        [_keyLabels setupKey:0x2D withCharCodesArray:@[@0x00, @0x002B, @0x003F, @0x00B1, @0x00BF, @0x002B, @0x003F, @0x00B1, @0x00BF]];
        [_keyLabels setupKey:0x2E withCharCodesArray:@[@0x23, @0x00B4, @0x0060, @0x0060, @0x0000, @0x00B4, @0x0060, @0x0060, @0x0000]];
        [_keyLabels setupKey:0x2F withCharCodesArray:@[@0x00, @0x00E5, @0x00C5, @0x02D9, @0x02DA, @0x00C5, @0x00C5, @0x02D9, @0x02DA]];
        [_keyLabels setupKey:0x30 withCharCodesArray:@[@0x27, @0x00A8, @0x005E, @0x007E, @0x005E, @0x00A8, @0x005E, @0x007E, @0x005E]];
        [_keyLabels setupKey:0x31 withCharCodesArray:@[@0x00, @0x0040, @0x002A, @0x0027, @0x0000, @0x0040, @0x002A, @0x0027, @0x0000]];
        [_keyLabels setupKey:0x33 withCharCodesArray:@[@0x00, @0x00F8, @0x00D8, @0x00F6, @0x00D6, @0x00D8, @0x00D8, @0x00D6, @0x00D6]];
        [_keyLabels setupKey:0x34 withCharCodesArray:@[@0x00, @0x00E6, @0x00C6, @0x00E4, @0x00C4, @0x00C6, @0x00C6, @0x00C4, @0x00C4]];
        [_keyLabels setupKey:0x35 withCharCodesArray:@[@0x00, @0x0027, @0x00A7, @0x20AC, @0x0178, @0x0027, @0x00A7, @0x20AC, @0x0178]];
        [_keyLabels setupKey:0x36 withCharCodesArray:@[@0x00, @0x002C, @0x003B, @0x201A, @0x201E, @0x002C, @0x003B, @0x201A, @0x201E]];
        [_keyLabels setupKey:0x37 withCharCodesArray:@[@0x00, @0x002E, @0x003A, @0x2026, @0x00B7, @0x002E, @0x003A, @0x2026, @0x00B7]];
        [_keyLabels setupKey:0x38 withCharCodesArray:@[@0x00, @0x002D, @0x005F, @0x2013, @0x2014, @0x002D, @0x005F, @0x2013, @0x2014]];
        [_keyLabels setupKey:0x64 withCharCodesArray:@[@0x00, @0x003C, @0x003E, @0x2264, @0x2265, @0x003C, @0x003E, @0x2264, @0x2265]];
    }
    return _keyLabels;
}

@end
