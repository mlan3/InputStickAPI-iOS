//
// Created by Marcin Wieclawski on 25/10/15.
// Copyright (c) 2015 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@class ISMouseHandler;

@interface ISDemoMouseViewController : UIViewController
@property(nonatomic, strong) ISMouseHandler *mouseHandler;

-(instancetype)initWithMouseHandler:(ISMouseHandler *)mouseHandler;

@end
