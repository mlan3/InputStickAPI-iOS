/*
 * InputStickAPI-iOS
 * Copyright (c) 2019 Jakub Zawadzki, www.inputstick.com
 */

#import "InputStickDeviceManagementTableViewController.h"
#import "InputStickDeviceTableViewCell.h"
#import "InputStickTheme.h"
#import "InputStickManager.h"
#import "InputStickConnectionManager.h"
#import "InputStickDeviceDB.h"
#import "InputStickDeviceData.h"
#import "InputStickConst.h"

static NSString *const CellReuseIdentifier = @"InputStickDeviceManagementCellIdentifier";


@interface InputStickDeviceManagementTableViewController () {
    InputStickManager *_manager;
    BOOL _storeAfterEditing;
    NSString *_mostRecentlyUsedIdentifier;
}

@end


@implementation InputStickDeviceManagementTableViewController

#pragma mark - Object lifecycle

- (instancetype)initWithInputStickManager:(InputStickManager *)manager {
    self = [super init];
    if (self) {
        _manager = manager;        
    }
    return self;
}


#pragma mark - ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TITLE", InputStickStringTable, nil);
    
    [self.tableView registerClass:[InputStickDeviceTableViewCell class] forCellReuseIdentifier:CellReuseIdentifier];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero]; //removes empty cells
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [InputStickTheme themeViewController:self];
    
    _mostRecentlyUsedIdentifier = [_manager.deviceDB getMostRecentlyUsedDeviceIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSMutableArray<InputStickDeviceData *> *tmp = [_manager.deviceDB deviceDbArray];
    if ([tmp count] > 0) {
        self.tableView.backgroundView = nil;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        return 1;
    } else {
        // Display a message when the table is empty
        UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        
        messageLabel.text = NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_NO_SAVED_DEVICES", InputStickStringTable, nil);
        messageLabel.textColor = [UIColor blackColor];
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = NSTextAlignmentCenter;
        [messageLabel sizeToFit];
        
        self.tableView.backgroundView = messageLabel;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_SAVED_DEVICES", InputStickStringTable, nil);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[_manager.deviceDB deviceDbArray] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellReuseIdentifier forIndexPath:indexPath];
    [InputStickTheme themeTableViewCell:cell];
    return cell;
}


#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    if([view isKindOfClass:[UITableViewHeaderFooterView class]]) {
        [InputStickTheme themeTableViewHeaderView:(UITableViewHeaderFooterView *)view];
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    InputStickDeviceData *deviceData = [[_manager.deviceDB deviceDbArray] objectAtIndex:indexPath.item];
    [(InputStickDeviceTableViewCell *)cell configureWithInputStickDeviceData:deviceData withMostRecentlyUsedIdentifier:_mostRecentlyUsedIdentifier];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self showMenuForDeviceAtIndexPath:indexPath];
}


#pragma mark - TableView Editing

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        InputStickDeviceData *deviceData = [[_manager.deviceDB deviceDbArray] objectAtIndex:indexPath.item];
        [self showDeleteDialogForDevice:deviceData atIndexPath:indexPath];
    }
}

- (void)deleteDeviceAtIndexPath:(NSIndexPath *)indexPath {
    [_manager.deviceDB deleteDeviceWithIndex:indexPath.row];
    _storeAfterEditing = FALSE;
    
    NSMutableArray<InputStickDeviceData *> *tmp = [_manager.deviceDB deviceDbArray];
    if ([tmp count] == 0) {
        [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
        [self setEditing:FALSE]; //since there are 0 sections now
    } else {
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
    [_manager.deviceDB swapDeviceFromIndex:fromIndexPath.row toIndex:toIndexPath.row updateDatabase:FALSE];
    _storeAfterEditing = TRUE;
    //setEditing will update order & save changes
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    if (editing) {
        _storeAfterEditing = FALSE;
    } else {
        if (_storeAfterEditing) {
            [_manager.deviceDB storeDatabase];
            _storeAfterEditing = FALSE;
        }
    }
}


#pragma mark - Dialogs

- (void)showMenuForDeviceAtIndexPath:(NSIndexPath *)indexPath {
    InputStickDeviceData *deviceData = [[_manager.deviceDB deviceDbArray] objectAtIndex:indexPath.item];
    NSString *message = [NSString stringWithFormat:@"%@: %@", NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TEXT_DEVICE", InputStickStringTable, nil), deviceData.name];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TITLE_MENU", InputStickStringTable, nil)
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *showDetailsAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_BUTTON_DETAILS", InputStickStringTable, nil)
                                                                style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction *action) {
                                                                  [self showDetailsDialogForDevice:deviceData atIndexPath:indexPath];
                                                              }];
    [alertController addAction:showDetailsAction];
    
    UIAlertAction *renameAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_BUTTON_RENAME", InputStickStringTable, nil)
                                                           style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *action) {
                                                             [self showRenameDialogForDevice:deviceData];
                                                         }];
    [alertController addAction:renameAction];
    
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_BUTTON_DELETE", InputStickStringTable, nil)
                                                           style:UIAlertActionStyleDestructive
                                                         handler:^(UIAlertAction *action) {
                                                             [self showDeleteDialogForDevice:deviceData atIndexPath:indexPath];
                                                         }];
    [alertController addAction:deleteAction];
    
    UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_BUTTON_CANCEL", InputStickStringTable, nil)
                                                            style:UIAlertActionStyleCancel
                                                          handler:nil];
    [alertController addAction:dismissAction];
    
    //required for iPad:
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    alertController.popoverPresentationController.sourceView = cell.contentView;
    alertController.popoverPresentationController.sourceRect = cell.contentView.bounds;
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)showRenameDialogForDevice:(InputStickDeviceData *)deviceData {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TITLE_RENAME", InputStickStringTable, nil)
                                                                             message:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TEXT_RENAME", InputStickStringTable, nil)
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TEXT_NEW_NAME", InputStickStringTable, nil);
    }];
    
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_BUTTON_OK", InputStickStringTable, nil)
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              NSString *name = [[alertController textFields][0] text];
                                                              [deviceData setName:name];
                                                              [self.tableView reloadData];
                                                          }];
    [alertController addAction:confirmAction];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_BUTTON_CANCEL", InputStickStringTable, nil)
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)showDetailsDialogForDevice:(InputStickDeviceData *)deviceData atIndexPath:(NSIndexPath *)indexPath {
    NSString *statusInfo;
    NSMutableAttributedString *msg = [[NSMutableAttributedString alloc] initWithString:@""];
    NSMutableAttributedString *tmp;
    
    switch (deviceData.passwordProtectionStatus) {
        case PasswordProtectionEnabledOK:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_SECURITY_TEXT_STATUS_ENABLED_OK", InputStickStringTable, nil);
            break;
        case PasswordProtectionEnabledNoKey:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_SECURITY_TEXT_STATUS_ENABLED_NO_KEY", InputStickStringTable, nil);
            break;
        case PasswordProtectionEnabledInvalidKey:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_SECURITY_TEXT_STATUS_ENABLED_INVALID_KEY", InputStickStringTable, nil);
            break;
        case PasswordProtectionDisabledOK:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_SECURITY_TEXT_STATUS_DISABLED_OK", InputStickStringTable, nil);
            break;
        case PasswordProtectionDisabledHasKey:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_SECURITY_TEXT_STATUS_DISABLED_HAS_KEY", InputStickStringTable, nil);
            break;
        default:
            statusInfo = NSLocalizedStringFromTable(@"INPUTSTICK_ERROR_INTERNAL", InputStickStringTable, nil);
            break;
    }
    
    
    //name
    tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_NAME", InputStickStringTable, nil)];
    [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@": "];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:deviceData.name];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@"\n"];
    [msg appendAttributedString:tmp];
    
    //BT ID
    tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_BT_ID", InputStickStringTable, nil)];
    [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@": "];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:deviceData.identifier];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@"\n"];
    [msg appendAttributedString:tmp];    
    
    //firmware version
    tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_FW_VERSION", InputStickStringTable, nil)];
    [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@": "];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:[deviceData firmwareVersionString]];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@"\n"];
    [msg appendAttributedString:tmp];
    
    if ( ![deviceData hasLatestFirmware]) {
        tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_FW_UPDATE_RECOMMENDATION", InputStickStringTable, nil)];
        [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
        [tmp addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, tmp.length)];
        [msg appendAttributedString:tmp];
        tmp = [[NSMutableAttributedString alloc] initWithString:@"\n"];
        [msg appendAttributedString:tmp];
    }
    
    //encryption key
    tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_HAS_ENCRYPTION_KEY", InputStickStringTable, nil)];
    [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@": "];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    if (deviceData.key == nil) {
        tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_NO", InputStickStringTable, nil)];
    } else {
        tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_YES", InputStickStringTable, nil)];
    }
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@"\n"];
    [msg appendAttributedString:tmp];
    
    //password protection status
    tmp = [[NSMutableAttributedString alloc] initWithString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_TEXT_SECURITY_DETAILS", InputStickStringTable, nil)];
    [tmp addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:@": "];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    tmp = [[NSMutableAttributedString alloc] initWithString:statusInfo];
    [tmp addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, tmp.length)];
    [msg appendAttributedString:tmp];
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TITLE_DETAILS", InputStickStringTable, nil)
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_BUTTON_OK", InputStickStringTable, nil)
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    [alertController addAction:okAction];
    
    [alertController setValue:msg forKey:@"attributedMessage"];
    
    //required for iPad:
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    alertController.popoverPresentationController.sourceView = cell.contentView;
    alertController.popoverPresentationController.sourceRect = cell.contentView.bounds;
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)showDeleteDialogForDevice:(InputStickDeviceData *)deviceData atIndexPath:(NSIndexPath *)indexPath {
    NSString *message = [NSString stringWithFormat:@"%@ (%@)", NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TEXT_DELETE", InputStickStringTable, nil), deviceData.name];
    if (deviceData.key != nil) {
        message = [message stringByAppendingString:@"\n"];
        message = [message stringByAppendingString:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TEXT_DELETE_KEY_WARNING", InputStickStringTable, nil)];
    }
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_TITLE_DELETE", InputStickStringTable, nil)
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_BUTTON_CANCEL", InputStickStringTable, nil)
                                                           style:UIAlertActionStyleCancel
                                                         handler:nil];
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:NSLocalizedStringFromTable(@"INPUTSTICK_DEVICE_MANAGEMENT_DIALOG_BUTTON_DELETE", InputStickStringTable, nil)
                                                           style:UIAlertActionStyleDestructive
                                                         handler:^(UIAlertAction *action) {
                                                             [self deleteDeviceAtIndexPath:indexPath];                                                             
                                                         }];
    [alertController addAction:cancelAction];
    [alertController addAction:deleteAction];
    
    //required for iPad:
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    alertController.popoverPresentationController.sourceView = cell.contentView;
    alertController.popoverPresentationController.sourceRect = cell.contentView.bounds;
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end