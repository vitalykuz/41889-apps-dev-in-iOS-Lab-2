//
//  main.m
//  Palindrome
//
//  Created by Vitaly Kuzenkov on 8/3/17.
//  Copyright © 2017 Vitaly Kuzenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

// declare function prototypes
int getNumber();
int isPalindrome(int number);

int main() {
	@autoreleasepool
	{
		int number = getNumber();
		if (number >= 0)
		{
			if (isPalindrome(number))
			{
				NSLog(@"\n%d is palindromic\n", number); }
			else {
				NSLog(@"\n%d is not palindromic\n", number); }
		} else {
			NSLog (@"Invalid number entered");
		}
	}
	return 0;
}

int getNumber()
{
	int number = 0;
	printf("Enter a number: ");
	scanf("%d", &number);
	printf("Your number is %d\n", number);
	return number;
}

int isPalindrome(int number)
{
	return 1;
}








