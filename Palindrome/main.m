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
NSString* convertIntToString(int intToConvertToString);
NSMutableString* reverseString(NSString* stringToReverse);
BOOL areStringsEqual(NSString* originalString, NSMutableString *reversedOriginalString) ;

int main() {
	@autoreleasepool
	{
		int number = getNumber();
        NSString* convertedString = convertIntToString(number);
        NSLog(@"Converted String: %@", convertedString);

        NSMutableString* reversedString = reverseString(convertedString);
        NSLog(@"Reversed String: %@", reversedString);

		BOOL isPalindrome = areStringsEqual(convertedString, reversedString);

		NSLog(@"Polidrome: %d", isPalindrome);

//		if (number >= 0)
//		{
//			if (isPalindrome(number))
//			{
//				NSLog(@"\n%d is palindromic\n", number); }
//			else {
//				NSLog(@"\n%d is not palindromic\n", number); }
//		} else {
//			NSLog (@"Invalid number entered");
//		}
	}
	return 0;
}

int getNumber()
{
	int number = 0;
	printf("Enter a number: ");
	scanf("%d", &number);
	return number;
}

int isPalindrome(int number)
{
	return 1;
}

NSString* convertIntToString(int intToConvertToString) {
	NSString* convertedString;
    convertedString = [NSString stringWithFormat:@"%d",intToConvertToString];

	return convertedString;
}

NSMutableString* reverseString(NSString* stringToReverse) {
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[stringToReverse length]];

    [stringToReverse enumerateSubstringsInRange:NSMakeRange(0,[stringToReverse length])
                                 options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                  [reversedString appendString:substring];
                              }];
    return reversedString;
}

BOOL areStringsEqual(NSString* originalString, NSMutableString *reversedOriginalString) {
	return [originalString isEqualToString: reversedOriginalString];
}





