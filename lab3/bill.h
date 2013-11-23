<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#import <Foundation/Foundation.h>

@interface Bill:NSObject
{
	int BillType;
	int BillAmt;
	int TaxAmt;
	int TotalAmt;
}

@property int BillAmt;
@property int TaxAmt;
@property int TotalAmt;
@property int BillType;

-(void)print;

=======
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
#import<Foundation/Foundation.h>

@interface Bill:NSObject
{
  NSString *Type;
  float amount;
}
@property float amount;
@property (retain)NSString  *Type;
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
=======
>>>>>>> 9cf9f52156521192f3bf581bc4b568b7785e5e89
@end