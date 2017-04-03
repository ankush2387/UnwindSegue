//
//  Children.h
//  dummyApp
//
//  Created by Ankush Kumar on 09/03/17.
//  Copyright © 2017 com.kulcare. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Children : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) Children *child;

@end
