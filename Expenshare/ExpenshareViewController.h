//
//  ExpenshareViewController.h
//  Expenshare
//
//  Created by El Capitan on 08/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpenshareViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
