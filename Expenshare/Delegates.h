//
//  Delegates.h
//  Expenshare
//
//  Created by El Capitan on 20/06/17.
//  Copyright © 2017 Vivek Raj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utils.h"

@protocol ButtonDelegate <NSObject>

-(void)menuButtonClicked:(ButtonState)buttonState;

@end

@interface Delegates : NSObject

@end
