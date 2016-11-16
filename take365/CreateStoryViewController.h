//
//  CreateStoryViewController.h
//  take365
//
//  Created by Evgeniy Eliseev on 23.01.16.
//  Copyright © 2016 take365. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Take365TableViewController.h"

@interface CreateStoryViewController : Take365TableViewController

@property (weak, nonatomic) IBOutlet UITextField *tfTitle;
@property (weak, nonatomic) IBOutlet UITextField *tfDescription;
@property (weak, nonatomic) IBOutlet UISegmentedControl *scPrivacyLevel;

@end
