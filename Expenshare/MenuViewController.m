//
//  MenuViewController.m
//  Expenshare
//
//  Created by El Capitan on 19/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import "MenuViewController.h"
#import "CustomMenuHeaderCell.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.estimatedRowHeight=100;
    self.tableView.rowHeight=UITableViewAutomaticDimension;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomMenuHeaderCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([CustomMenuHeaderCell class])];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[_tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text=@"You are next Steve Jobs";
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 120;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    CustomMenuHeaderCell *headerView=[_tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CustomMenuHeaderCell class])];
    
    headerView.headerImageView.image=[UIImage imageNamed:@"SteveJobs"];
    headerView.nameLabel.text=@"Steve Jobs";
    headerView.emailLabel.text=@"steve.jobs@apple.com";
    
    return headerView;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{

    UIView *footerView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, _tableView.frame.size.width, 25)];
    footerView.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    footerView.layer.borderColor = [UIColor colorWithWhite:0.5 alpha:1.0].CGColor;
    footerView.layer.borderWidth = 1.0;
    
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(5, 2, _tableView.frame.size.width-5, 21)];
    lbl.backgroundColor = [UIColor clearColor];
    lbl.textColor = [UIColor whiteColor];
    lbl.font = [UIFont boldSystemFontOfSize:16.0];
    lbl.text = @"Copyright @ 2017 India";
    lbl.textAlignment = NSTextAlignmentLeft;
    
    [footerView addSubview:lbl];
    
    return footerView;
}

@end
