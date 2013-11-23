#import<Foundation/Foundation.h>
#import "Hello.h"
int main(int argc,char *argv[])
{
	Hello *printer=[[Hello alloc]init];
	[printer addStringValue:"Hello world"];
	[printer print];
	[printer release];
	return 0;
}