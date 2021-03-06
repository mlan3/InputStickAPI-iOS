/*
 * InputStickDemo-iOS
 * Copyright (c) 2019 Jakub Zawadzki, www.inputstick.com
 */

#import "HIDBuffersTableViewController.h"

#import "InputStickManager.h"
#import "InputStickKeyboardHandler.h"
#import "InputStickMouseHandler.h"
#import "InputStickHIDBuffersState.h"
#import "InputStickHIDBuffersManager.h"
#import "InputStickKeyboardLayoutProtocol.h"
#import "InputStickPreferences.h"

#import "InputStickBarButtonItem.h"


static NSString *const CellReuseIdentifier = @"DemoBuffersCellIdentifier";


@interface HIDBuffersTableViewController () {
    UIBarButtonItem *_barButton;
    id <InputStickKeyboardLayoutProtocol> _layout;
    BOOL _keyboardBufferEmpty;
    BOOL _mouseBufferEmpty;
}

@end


@implementation HIDBuffersTableViewController

#pragma mark - Object lifecycle

- (instancetype)init {
    self = [super initWithStyle:UITableViewStyleGrouped];
    return self;
}


#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"HID Buffers";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellReuseIdentifier];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero]; //removes empty cells
    
    //add InputStickBarButtonItem to allow to connect/disconnect with a single click
    InputStickBarButtonItem *barButtonItem = [[InputStickBarButtonItem alloc] initWithInputStickManager:self.inputStickManager];
    [self.navigationItem setRightBarButtonItem:barButtonItem];
    
    //use keyboard layout set in preferences
    _layout = self.preferences.keyboardLayout;
    //if you manage settings in your own code, provide values for keyboard layout, typing speed etc.
    //_layout = [InputStickKeyboardUtils keyboardLayoutWithCode:layoutCode];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] registerForInputStickStatusUpdateNotificationsWithObserver:self]; //buffers + LEDs
    
    //refresh state:
    _keyboardBufferEmpty = self.inputStickManager.buffersManager.keyboardBufferEmpty;
    _mouseBufferEmpty = self.inputStickManager.buffersManager.mouseBufferEmpty;
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - InputStickStatusUpdateNotificationObserver

//called approximately every 500ms (firmware 1.0 and later) and 100ms (before 1.0)
- (void)didUpdateInputStickHIDBuffersStateNotification:(NSNotification *)notification {    
    InputStickHIDBuffersState *hidBuffersState = notification.userInfo[InputStickNotificationHIDBuffersStateKey];
    if (hidBuffersState.keyboardReportsSentToHost > 0) {
        NSLog(@"keyboard reports sent to USB host since last update: %ld", (long)hidBuffersState.keyboardReportsSentToHost);
    }
    BOOL tmp;
    BOOL refresh = FALSE;
    
    //print only if state changed:
    tmp = self.inputStickManager.buffersManager.keyboardBufferEmpty;
    if (tmp != _keyboardBufferEmpty) {
        NSLog(@"keyboard interface buffer state refreshed");
        _keyboardBufferEmpty = tmp;
        refresh = TRUE;
    }
    tmp = self.inputStickManager.buffersManager.mouseBufferEmpty;
    if (tmp != _mouseBufferEmpty) {
        NSLog(@"mouse interface buffer state refreshed");
        _mouseBufferEmpty = tmp;
        refresh = TRUE;
    }
    
    if (refresh) {
        [self.tableView reloadData];
    }
}

//both local and remote (InputStick) keyboard report buffers are now empty (no more keyboard reports will be sent to USB host)
- (void)didEmptyInputStickKeyboardBufferNotification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    //_keyboardBufferEmpty = TRUE;
    //[self.tableView reloadData];
    //didUpdateInputStickHIDBuffersStateNotification already took care of that
}

//local keyboard report buffer is now empty but there can still be HID keyboard reports stored in remote (InputStick) report buffer
- (void)didEmptyInputStickKeyboardLocalBufferNotification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    //_keyboardBufferEmpty = TRUE;
    //[self.tableView reloadData];
    //didUpdateInputStickHIDBuffersStateNotification already took care of that
}

//both local and remote (InputStick) mouse report buffers are now empty (no more mouse reports will be sent to USB host)
- (void)didEmptyInputStickMouseBufferNotification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    //_mouseBufferEmpty = TRUE;
    //[self.tableView reloadData];
    //didUpdateInputStickHIDBuffersStateNotification already took care of that
}

//local mouse report buffer is now empty but there can still be HID mouse reports stored in remote (InputStick) report buffer
- (void)didEmptyInputStickMouseLocalBufferNotification {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    //_mouseBufferEmpty = TRUE;
    //[self.tableView reloadData];
    //didUpdateInputStickHIDBuffersStateNotification already took care of that
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else if (section == 1) {
        return 1;
    } else if (section == 2) {
        return 1;
    } else {
        return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Status";
    } else if (section == 1) {
        return @"Keyboard actions";
    } else if (section == 2) {
        return @"Mouse actions";
    } else {
        return @"";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    cell = [self.tableView dequeueReusableCellWithIdentifier:CellReuseIdentifier forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        //status info:
        if (indexPath.row == 0) {
            if (self.inputStickManager.inputStickReady) {
                if (_keyboardBufferEmpty) {
                    cell.textLabel.text = @"Keyboard: Idle";
                } else {
                    cell.textLabel.text = @"Keyboard: Busy";
                }
            } else {
                cell.textLabel.text = @"Keyboard: N/A";
            }
        } else if (indexPath.row == 1) {
            if (self.inputStickManager.inputStickReady) {
                if (_mouseBufferEmpty) {
                    cell.textLabel.text = @"Mouse: Idle";
                } else {
                    cell.textLabel.text = @"Mouse: Busy";
                }
            } else {
                cell.textLabel.text = @"Mouse: N/A";
            }
        }
    } else if (indexPath.section == 1) {
        //keyboard actions (type/stop):
        if (indexPath.row == 0) {
            if (_keyboardBufferEmpty) {
                cell.textLabel.text = @"Type text";
            } else {
                cell.textLabel.text = @"Stop typing";
            }
        }
    } else if (indexPath.section == 2) {
        //mouse actions (move/stop):
        if (indexPath.row == 0) {
            if (_mouseBufferEmpty) {
                cell.textLabel.text = @"Move mouse";
            } else {
                cell.textLabel.text = @"Stop moving";
            }
        }
    }
    return cell;
}


#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        //keyboard actions (type/stop):
        if (indexPath.row == 0) {
            if (_keyboardBufferEmpty) {
                NSLog(@"type text");                
                //queue keyboard actions
                [self.inputStickManager.keyboardHandler typeText:@"123456789012345678901234567890" withKeyboardLayout:_layout modifiers:0 typingSpeed:1 flush:FALSE];
                [self.inputStickManager.keyboardHandler pressAndReleaseModifiers:0 withKey:KEY_ENTER flush:FALSE];
                [self.inputStickManager.keyboardHandler typeText:@"qwertyuiopqwertyuiopqwertyuiop" withKeyboardLayout:_layout modifiers:0 typingSpeed:1 flush:FALSE];
                [self.inputStickManager.buffersManager flushKeyboardBuffer];
            } else {
                //cancel typing
                NSLog(@"cancel all keyboard actions");
                [self.inputStickManager.buffersManager clearKeyboardBuffer];
                //make sure to release keys:
                [self.inputStickManager.keyboardHandler sendCustomReportWithModifiers:0 key:0 flush:YES];
                //note: firmware v1.0 and later will auto-release keys if necessary
            }
        }
    } else if (indexPath.section == 2) {
        //mouse actions (move/stop):
        if (indexPath.row == 0) {
            if (_mouseBufferEmpty) {
                NSLog(@"move mouse");
                //queue mouse actions
                for (int i = 0; i < 3; i++) {
                    for (int j = 0; j < 10; j++) {
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:10 y:0 scroll:0 flush:NO];
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:0 scroll:0 flush:NO];
                    }
                    for (int j = 0; j < 10; j++) {
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:10 scroll:0 flush:NO];
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:0 scroll:0 flush:NO];
                    }
                    for (int j = 0; j < 10; j++) {
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:-10 y:0 scroll:0 flush:NO];
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:0 scroll:0 flush:NO];
                    }
                    for (int j = 0; j < 10; j++) {
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:0 scroll:0 flush:NO];
                        [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:-10 scroll:0 flush:NO];
                    }
                }
                [self.inputStickManager.buffersManager flushMouseBuffer];
            } else {
                //cancel moving
                NSLog(@"cancel all mouse actions");
                [self.inputStickManager.buffersManager clearMouseBuffer];
                //make sure to release mouse buttons (not necessary in this particular case since buttons were not used):
                [self.inputStickManager.mouseHandler sendCustomReportWithButtons:0 x:0 y:0 scroll:0 flush:YES];
                //note: firmware v1.0 and later will auto-release mouse buttons if necessary
            }
        }
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
