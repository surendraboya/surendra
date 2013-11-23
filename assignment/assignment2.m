#import <Foundation/Foundation.h>

int main(int argc,char* argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSDate * today = [NSDate date];
	NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
   /*[dateFormat setDateFormat:@"dd/MM/yyyy hh:mm"];
   NSString *dateString = [dateFormat stringFromDate:today];
  //Today's date
   */NSLog(@"Today: %@", today);
	NSTimeInterval secondsinday = 60*60*24;
  

	//Day after tomorrow's date
	NSDate * dayaftertomorrow = [NSDate dateWithTimeIntervalSinceNow:secondsinday*2];
	/* NSString *dayaftertomorrowstring = [dateFormat stringFromDate:dayaftertomorrow];
	*/NSLog(@"Day after tomorrow: %@",dayaftertomorrow);

	//Last thursday's date
	int i=1;
	NSString * thursday = @"Thursday";
	NSDate * tempdate = [NSDate date];
	[dateFormat setDateFormat:@"EEEE"];
	NSString * tempdatestring = [dateFormat stringFromDate:tempdate];
	if(![tempdatestring isEqualToString:thursday])
	{
		while(![tempdatestring isEqualToString:thursday])
		{
			tempdate = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*i];
			tempdatestring = [dateFormat stringFromDate:tempdate];
			i++;
			//NSLog(@"Today: %@",tempdatestring);
		}
		NSLog(@"Last Thursday: %@ - %@",tempdatestring,tempdate);
	}
	else
	{
		tempdate = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*7];
		tempdatestring = [dateFormat stringFromDate:tempdate];
		NSLog(@"Last Thursday: %@ - %@",tempdatestring,tempdate);
	}

	//Find earlier date
	NSDate * date1 = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*20];
	NSDate * date2 = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*10];
	NSDate * date3 = [NSDate dateWithTimeIntervalSinceNow:-secondsinday*30];
	NSArray * dates = [NSArray arrayWithObjects:date1,date2,date3,nil];
	int count = [dates count];
	NSDate * min;
	//NSDate * d1;
	NSDate * d2;
	i=0;
	min = [dates objectAtIndex:i]; //store earlier date
	for(;i+1<count;i++)
	{
		d2 = [dates objectAtIndex:i+1];
		if([min compare:d2] == NSOrderedAscending) //true if min is earlier
			continue;
		else
			min = d2; //store d2 as earlier date in min
	}
	NSLog(@"Earlier date : %@",min);

	//10th day
	[dateFormat setDateFormat:@"EEEE"];
  	NSString * firstday = [dateFormat stringFromDate:today];
	NSArray * days = [NSArray arrayWithObjects:@"Monday",@"Tuesday",@"Wednesday",@"Thursday",@"Friday",@"Saturday"
	,@"Sunday",nil];
	i=0;
	while(![firstday isEqualToString:[days objectAtIndex:i]]) 
		i++;
	NSLog(@"First day is %@",[days objectAtIndex:i]);
	int temp = 0; //index of the 10th day
	i=i+10;
	temp = i%7; // to get the 10th day
	NSLog(@"10th day is %@",[days objectAtIndex:temp]);

	//[today release];
	[pool release];
	return 0;
}
