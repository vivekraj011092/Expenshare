//
//  ExpenshareMenuView.m
//  Expenshare
//
//  Created by El Capitan on 16/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import "ExpenshareMenuView.h"

@implementation ExpenshareMenuView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)groupBtnClicked:(id)sender {
    _groupLbl.backgroundColor=[UIColor redColor];
    _friendLbl.backgroundColor=[UIColor whiteColor];
    _activityLbl.backgroundColor=[UIColor whiteColor];
    
    [self.buttonDelegate menuButtonClicked:groupButton];
    
}
- (IBAction)activityBtnClicked:(id)sender {
    
    _groupLbl.backgroundColor=[UIColor whiteColor];
    _friendLbl.backgroundColor=[UIColor whiteColor];
    _activityLbl.backgroundColor=[UIColor redColor];
    
    [self.buttonDelegate menuButtonClicked:activityButton];

}

- (IBAction)friendBtnClicked:(id)sender {
    
    _groupLbl.backgroundColor=[UIColor whiteColor];
    _friendLbl.backgroundColor=[UIColor redColor];
    _activityLbl.backgroundColor=[UIColor whiteColor];
    
    [self.buttonDelegate menuButtonClicked:friendsButton];

}
@end
