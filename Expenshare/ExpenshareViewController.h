//
//  ExpenshareViewController.h
//  Expenshare
//
//  Created by El Capitan on 08/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Delegates.h"
#import "ExpenshareMenuView.h"


@interface ExpenshareViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,ButtonDelegate>
@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sideBarButton;
@property(weak,nonatomic) IBOutlet ExpenshareMenuView *emv;

@end
