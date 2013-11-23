<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#import <Foundation/Foundation.h>
#import "Bill.h"
#import "CalcTax.h"

int main(int argc, char* argv[])
{	
	Bill *b=[[Bill alloc]init];
	CalcTax *c=[[CalcTax alloc]init];
	int ch, amt;
	NSLog(@"Enter the type of Bill\n");
	NSLog(@"1.Finished goods 2.Grocery\n");
	scanf("%d",&ch);
	[b setBillType:ch];
	NSLog(@"Enter the bill amount\n");
	scanf("%d",&amt);
	[b setBillAmt:amt];
	
	[c CalcTaxonBill: b];
	[b print];

	[b release];
	[c release];
	return 0;
}
=======
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
#import "taxCalculator.h"

int main()
{
   Bill *bill = [[Bill alloc]init];
   
   float amount ;
   char str[256];
   NSLog(@"enter the type of bill");
   scanf("%s",str);
  
   NSLog(@"enter the amount");
   scanf("%f",&amount);
   
   NSString *type = [NSString stringWithUTF8String:str];
   [bill setType:type];
   [bill setAmount:amount];
   
   TaxCalculator *tax =[[TaxCalculator alloc]init];
   
   [tax Calc:bill];
   
   [type release];
   [bill release];
   [tax release];  
   return 0;
}
<<<<<<< HEAD
<<<<<<< HEAD
   
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
   
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
   
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
