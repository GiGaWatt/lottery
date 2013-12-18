//
//  lotteryEnery.h
//  lottery
//
//  Created by Jonathan Lopez on 12/15/13.
//  Copyright (c) 2013 Zeez2weB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lotteryEnery : NSObject
{
    NSDate *enteryDate;
    
    int firstNumber;
    int secondNumber;
}

-(void)prepareRandomNumbers;
-(void) setEnteryDate:(NSDate *)date;
-(NSDate *)enteryDate;
-(int)firstNumber;
-(int)secondNumber;


@end
