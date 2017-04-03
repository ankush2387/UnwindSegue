//
//  MenuTVC.h
//  dummyApp
//
//  Created by Ankush Kumar on 17/03/17.
//  Copyright © 2017 com.kulcare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuVC : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (nonatomic, strong) NSString *strValue;
@property (nonatomic, strong) NSString *imageName;

@end
