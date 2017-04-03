//
//  MethodClass.h
//  dummyApp
//
//  Created by Ankush Kumar on 17/03/17.
//  Copyright © 2017 com.kulcare. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MethodClass : NSObject{
    NSString *name12;
}
@property (strong,nonatomic) NSString *name;
+(void)classMethod:(NSString *)name2;
-(void)instanceMethod:(NSString *)name2;
@end
