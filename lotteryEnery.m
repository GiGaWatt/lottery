//
//  lotteryEnery.m
//  lottery
//
//  Created by Jonathan Lopez on 12/15/13.
//  Copyright (c) 2013 Zeez2weB. All rights reserved.
//

#import "lotteryEnery.h"

@implementation lotteryEnery


-(void)prepareRandomNumbers{
    firstNumber = ((int)(random() % 100)) +1;
    secondNumber = ((int)(random() % 100)) +1;
}

-(void) setEnteryDate:(NSDate *)date{
    enteryDate = date;
}

-(NSDate *)enteryDate{
    return enteryDate;
}

-(int)firstNumber{
    return firstNumber;
}

-(int)secondNumber{
    return secondNumber;
    
}

@end
