//
//  ExpenshareViewController.m
//  Expenshare
//
//  Created by El Capitan on 08/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import "ExpenshareViewController.h"
#import "SWRevealViewController.h"

@interface ExpenshareViewController ()

@property(weak,nonatomic) UIView *myView;
@property(nonatomic) ButtonState bState;
@end

@implementation ExpenshareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setRevealViewController];
    [self setConstraint];
    self.emv.buttonDelegate=self;
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell2"];

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    switch (_bState) {

        case activityButton:
        {
            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell1"];
            
            cell.textLabel.text=@"Hello Vivek....";
            return cell;
        }
            
            break;
            
        case friendsButton:
        {
            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell2"];
            
            cell.textLabel.text=@"Hello Vivek Raj....";
            return cell;
        }
            
            break;
            
        default:
        {
            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
            
            cell.textLabel.text=@"Hello ffffff....";
            return cell;
        }
            break;
    }
    
}

#pragma setReavealViewController
-(void)setRevealViewController
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sideBarButton setTarget: self.revealViewController];
        [self.sideBarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

#pragma setConstraint

-(void)setConstraint{
    
     _myView=[[[NSBundle mainBundle] loadNibNamed:@"ExpenshareMenuView" owner:self options:nil] lastObject];
    
    _myView.translatesAutoresizingMaskIntoConstraints=NO;

    NSLayoutConstraint *lft = [NSLayoutConstraint constraintWithItem:_myView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_mainView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    NSLayoutConstraint *rgt = [NSLayoutConstraint constraintWithItem:_myView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_mainView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:_myView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_mainView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    NSLayoutConstraint *btm = [NSLayoutConstraint constraintWithItem:_myView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:_mainView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:5];
    
    [self.mainView addSubview:_myView];
    [self.mainView addConstraint:lft];
    [self.mainView addConstraint:rgt];
    [self.mainView addConstraint:top];
    [self.mainView addConstraint:btm];

    
}

#pragma ButtonDelegate Method

-(void)menuButtonClicked:(ButtonState)buttonState
{
    _bState=buttonState;
    [self.tableView reloadData];
}



@end
