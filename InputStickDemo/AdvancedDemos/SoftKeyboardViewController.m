/*
 * InputStickDemo-iOS
 * Copyright (c) 2019 Jakub Zawadzki, www.inputstick.com
 */

#import "SoftKeyboardViewController.h"
#import "MainTableViewController.h"
#import "InputStickDemoUtils.h"

#import "InputStickKeyboardHandler.h"
#import "InputStickKeyboardLayoutUtils.h"
#import "InputStickPreferences.h"

#import "InputStickUI.h"
#import "InputStickBarButtonItem.h"


@interface SoftKeyboardViewController () {
    BOOL _keyboardVisible;
    UIButton *_buttonToggleKeyboard;
    id <InputStickKeyboardLayoutProtocol> _layout;
}

@end


@implementation SoftKeyboardViewController

@synthesize autocorrectionType;

#pragma mark - Object lifecycle

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Keyboard";
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidShow:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardDidHide:)
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
    
    [self setAutocorrectionType:UITextAutocorrectionTypeNo];
    
    //add InputStickBarButtonItem to allow to connect/disconnect with a single click
    InputStickBarButtonItem *barButtonItem = [[InputStickBarButtonItem alloc] initWithInputStickManager:self.inputStickManager];
    [self.navigationItem setRightBarButtonItem:barButtonItem];
    
    //use keyboard layout set in preferences
    _layout = self.preferences.keyboardLayout;
    //if you manage settings in your own code, provide values for keyboard layout, typing speed etc.
    //_layout = [InputStickKeyboardUtils keyboardLayoutWithCode:layoutCode];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self showKeyboard:TRUE];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - UIView

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [InputStickUI backgroundColor];

    _buttonToggleKeyboard = [InputStickDemoUtils buttonWithTitle:@"Hide keyboard" tag:0];
    [_buttonToggleKeyboard addTarget:self action:@selector(toggleKeyboardAction:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:_buttonToggleKeyboard];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    CGFloat contentMargin = 40;
    CGFloat inputContentWidth = CGRectGetWidth(self.view.frame) - 2 * contentMargin;
    
    CGRect buttonFrame = CGRectMake(contentMargin, contentMargin + 64, inputContentWidth, 50);
    [_buttonToggleKeyboard setFrame:buttonFrame];
}


#pragma mark - UIResponder

- (BOOL)canBecomeFirstResponder {
    return YES;
}


#pragma mark - UIKeyInput

- (BOOL)hasText {
    return YES;
}

- (void)insertText:(NSString *)text {
    [self.inputStickManager.keyboardHandler typeText:text withKeyboardLayout:_layout];
}

- (void)deleteBackward {
    //backspace key action:
    [self.inputStickManager.keyboardHandler pressAndReleaseModifiers:0x00 withKey:KEY_BACKSPACE flush:YES];
}


#pragma mark - Keyboard

- (void)keyboardDidShow: (NSNotification *)notification {
    _keyboardVisible = TRUE;
}

- (void)keyboardDidHide: (NSNotification *)notification {
    _keyboardVisible = FALSE;
}

- (IBAction)toggleKeyboardAction:(id)sender {
    [self showKeyboard:!_keyboardVisible];
}

- (void)showKeyboard:(BOOL)enabled {
    if (enabled) {
        [self becomeFirstResponder];
        [_buttonToggleKeyboard setTitle:@"Hide keyboard" forState:UIControlStateNormal];
    } else {
        [self resignFirstResponder];
        [_buttonToggleKeyboard setTitle:@"Show keyboard" forState:UIControlStateNormal];
    }
}

@end
