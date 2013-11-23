#import "Hello.h"
@implementation Hello

-addStringValue:(const char*)astring
{
strcat(buffer,astring);
return 0;
}

-print
{
	printf("%s\n",buffer);
	}
	
@end