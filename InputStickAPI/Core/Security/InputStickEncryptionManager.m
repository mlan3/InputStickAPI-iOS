/*
 * InputStickAPI-iOS
 * Copyright (c) 2018 Jakub Zawadzki, www.inputstick.com
 */

    #import "InputStickEncryptionManager.h"
#ifdef INPUTSTICK_CRYPTO_ENABLED
    #import <CommonCrypto/CommonDigest.h>
    #import <CommonCrypto/CommonCryptor.h>
    #import <CommonCrypto/CommonHMAC.h>
#endif

@interface InputStickEncryptionManager () {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        CCCryptorRef _cryptorEncrypt;
        CCCryptorRef _cryptorDecrypt;
    #endif
        NSData *_key;
    
        NSData *_challengeData;
    
        BOOL _hmacEnabled;
        NSUInteger _hmacCounter;
        NSData *_hmacKey;
}

@end


@implementation InputStickEncryptionManager 

- (void)dealloc {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        CCCryptorRelease(_cryptorEncrypt);
        CCCryptorRelease(_cryptorDecrypt);
    #endif
}


#pragma mark - static methods

+ (BOOL)isEnabled {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        return true;
    #else
        return false;
    #endif
}


#pragma mark - Setup

- (void)resetStateWithKey:(NSData *)key {
        _key = key;
        _hmacEnabled = FALSE;
        _iv = [InputStickEncryptionManager randomDataWithLength:16];
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        //do not use kCCOptionPKCS7Padding, provided data will always by a multiple of AES128 block size (n*16B)
        CCCryptorCreate(kCCEncrypt, kCCAlgorithmAES128, 0, [key bytes], 16, [_iv bytes], &_cryptorEncrypt);
        CCCryptorCreate(kCCDecrypt, kCCAlgorithmAES128, 0, [key bytes], 16, [_iv bytes], &_cryptorDecrypt);
    #endif
}


#pragma mark - Encryption

- (NSData *)encryptBytes:(Byte *)bytes withLength:(NSUInteger)length {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        NSData *data = [NSData dataWithBytes:bytes length:length];
        NSData *encrypted = [self encryptData:data];
        return encrypted;
    #else
        return nil;
    #endif
}

- (NSData *)encryptData:(NSData *)data {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        size_t dataOutMoved;
        NSMutableData *buffer = [NSMutableData data];
        [buffer setLength:[data length]];
    
        CCCryptorUpdate(_cryptorEncrypt, data.bytes, data.length, buffer.mutableBytes, buffer.length, &dataOutMoved);
        return buffer;
    #else
        return nil;
    #endif
}

- (NSData *)decryptData:(NSData *)data {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        size_t dataOutMoved;
        NSMutableData *buffer = [NSMutableData dataWithLength:[data length]];
        CCCryptorUpdate(_cryptorDecrypt, data.bytes, data.length, buffer.mutableBytes, buffer.length, &dataOutMoved);
        return buffer;
    #else
        return nil;
    #endif
}

- (NSData *)decryptBytes:(Byte *)bytes withLength:(NSUInteger)length {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        NSData *data = [NSData dataWithBytes:bytes length:length];
        NSData *decrypted = [self decryptData:data];
        return decrypted;
    #else
        return nil;
    #endif
}


#pragma mark - Challenge response

- (NSData *)prepareChallengeData {
    _challengeData = [InputStickEncryptionManager randomDataWithLength:16];
    return _challengeData;
}

- (BOOL)verifyChallengeResponse:(NSData *)response {
    BOOL result = FALSE;
    if (_challengeData != nil) {
        NSData *decr = [self decryptData:response];
        result = [decr isEqual:_challengeData];
        _challengeData = nil;
    }
    return result;
}


#pragma mark - HMAC

- (BOOL)hmacEnabled {
    return _hmacEnabled;
}

- (void)initHMACWithKey:(NSData *)key {
    _hmacEnabled = TRUE;
    _hmacCounter = 0;
    _hmacKey = [key copy];
}

//returns 4B counter and first 16B of HMAC (counter | data)
- (NSData *)getHMACForData:(NSData *)data {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        NSMutableData *hmacInputData = [NSMutableData data];
        NSMutableData *hmacOutputData = [NSMutableData dataWithLength:CC_SHA256_DIGEST_LENGTH];
        NSMutableData *resultData = [NSMutableData data];
        NSUInteger counter = _hmacCounter;
        _hmacCounter++;
    
        Byte tmp[4];
        tmp[0] = (Byte)counter;
        counter >>= 8;
        tmp[1] = (Byte)counter;
        counter >>= 8;
        tmp[2] = (Byte)counter;
        counter >>= 8;
        tmp[3] = (Byte)counter;

        [hmacInputData appendBytes:tmp length:4];
        [hmacInputData appendData:data];
    
        CCHmac(kCCHmacAlgSHA256, _hmacKey.bytes, _hmacKey.length, hmacInputData.bytes, hmacInputData.length, hmacOutputData.mutableBytes);
    
        [resultData appendBytes:tmp length:4];
        [resultData appendBytes:(Byte *)hmacOutputData.bytes length:16];
        return resultData;
    #else
        return nil;
    #endif
}


#pragma mark - Encryption Helpers

+ (NSData *)randomDataWithLength:(NSUInteger)length {
    NSMutableData *data = [NSMutableData dataWithLength:length];
    int res __attribute__((unused)) = SecRandomCopyBytes(kSecRandomDefault, length, data.mutableBytes);
    return data;
}

+ (NSData *)MD5FromString:(NSString *)input {
    #ifdef INPUTSTICK_CRYPTO_ENABLED
        const char *data = [input UTF8String];
        unsigned char md[CC_MD5_DIGEST_LENGTH];
        memset(md, 0, sizeof(md));
        CC_MD5(data, (CC_LONG)strlen(data), md);
        return [NSData dataWithBytes:md length:sizeof(md)];
    #else
        return nil;
    #endif
}

@end
