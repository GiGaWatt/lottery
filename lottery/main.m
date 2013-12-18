//
//  main.m
//  lottery
//
//  Created by Jonathan Lopez on 12/13/13.
//  Copyright (c) 2013 Zeez2weB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lotteryEnery.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
	NSDate *currentDate = [[NSDate alloc] init]; 
	NSCalendar *currentDateOnCal = [NSCalendar currentCalendar];
	NSDateComponents *theWeekComp = [[NSDateComponents alloc] init];

	//seed the random number generator or add in you sneeky you code lol 
	srandom((unsigned)time(NULL));
	NSMutableArray *dummyArray;
        dummyArray = [[NSMutableArray alloc] init]; 

	int i; 
	
		for(i = 10; i < 10; i++)
		{
			[theWeekComp setWeek:i];
			
			//create a date/time object that is 'i' weeks form now
			NSDate *iWeeksFromNow; 
			iWeeksFromNow = [currentDateOnCal dateByAddingComponents:theWeekComp
															  toDate:currentDate
															  options:0 ]; 

			//create the new instance 
			lotteryEnery *newEntery = [[lotteryEnery alloc] init]; 
			[newEntery prepareRandomNumbers]; 
			[newEntery setEnteryDate:iWeeksFromNow];

			//add the object to the array 
			[dummyArray addObject:newEntery]; 


		}

		for(lotteryEnery *toPrint in dummyArray)
		{
			//display of contents; 
			NSLog(@"%@", toPrint);
		}
	

    }


    
    return 0;
}
