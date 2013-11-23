#import<Foundation/Foundation.h>
#import "PhoneCard.h"
#import "PhoneBook.h"

int main(int argc,char* argv[])
{
	PhoneBook *MSE=[[PhoneBook alloc]initWithName:@"PESIT"];
	PhoneCard *c1,*c2,*c3;
	c1=[[PhoneCard alloc]init];
	c2=[[PhoneCard alloc]init];
	c3=[[PhoneCard alloc]init];
	
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	[c1 setName:@"raghu"];
	[c1 setEmail:@"123@abc.com"];
	[c1 setPhNo:1234];
	
	[c2 setName:@"findme"];
	[c2 setEmail:@"124@abc.com"];
	[c2 setPhNo:1235];
	
	[c3 setName:@"imhere"];
=======
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
	[c1 setName:@"shivaraj"];
	[c1 setEmail:@"123@abc.com"];
	[c1 setPhNo:1234];
	
	[c2 setName:@"abc"];
	[c2 setEmail:@"124@abc.com"];
	[c2 setPhNo:1235];
	
	[c3 setName:@"xyz"];
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
	[c3 setEmail:@"125@abc.com"];
	[c3 setPhNo:1236];
	
	[[MSE getBook] addObject:c1];
	[[MSE getBook] addObject:c2];
	[[MSE getBook] addObject:c3];
	
	[MSE print];
	
	[c1 release];
	[c2 release];
	[c3 release];
	[MSE release];
	return 0;
}