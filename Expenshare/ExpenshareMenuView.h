//
//  ExpenshareMenuView.h
//  Expenshare
//
//  Created by El Capitan on 16/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Delegates.h"

@interface ExpenshareMenuView : UIView

- (IBAction)groupBtnClicked:(id)sender;
- (IBAction)activityBtnClicked:(id)sender;
- (IBAction)friendBtnClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *groupLbl;
@property (weak, nonatomic) IBOutlet UILabel *friendLbl;
@property (weak, nonatomic) IBOutlet UILabel *activityLbl;
@property(weak,nonatomic) id<ButtonDelegate> buttonDelegate;

@end
