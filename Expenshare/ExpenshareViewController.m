//
//  ExpenshareViewController.m
//  Expenshare
//
//  Created by El Capitan on 08/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import "ExpenshareViewController.h"

@interface ExpenshareViewController ()

@end

@implementation ExpenshareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *myView=[[UIView alloc]init];
    myView=[[[NSBundle mainBundle] loadNibNamed:@"MainExpenshareView" owner:self options:nil] lastObject];
    [self.mainView addSubview:myView];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
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
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text=@"Hello Raj....";
    
    return cell;
}
@end
