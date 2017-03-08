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
	// code to scanf for number and test it
	// return number or -1 if input is invalid
	return 1;
}

int isPalindrome(int number)
{
	// code to test is number is a palindrome.
	// Return true or false (1 or 0)
	return 1;
}








