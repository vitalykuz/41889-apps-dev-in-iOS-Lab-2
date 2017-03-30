//
//  main.m
//  Palindrome
//
//  Created by Vitaly Kuzenkov on 8/3/17.
//  Copyright © 2017 Vitaly Kuzenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

// declare function prototypes
NSInteger getNumber();
NSString* convertIntToString(NSInteger intToConvertToString);
NSMutableString* reverseString(NSString* stringToReverse);
BOOL areStringsEqual(NSString* originalString, NSMutableString *reversedOriginalString);
NSInteger convertStringToInt(NSString *stringToConvertToInt);

int main() {
	@autoreleasepool
	{
		NSInteger number = getNumber();
        NSString* convertedString = convertIntToString(number);
        NSLog(@"Converted String: %@", convertedString);

        NSMutableString* reversedString = reverseString(convertedString);
        NSLog(@"Reversed String: %@", reversedString);

		BOOL isPalindrome = areStringsEqual(convertedString, reversedString);

		if (isPalindrome) {
			NSLog(@"Number: %li is palindromic ", number);
		} else {
			NSLog(@"Number %li is not palindromic ", number);
		}
	}
	return 0;
}

NSInteger getNumber()
{
	NSInteger number = 0;
	printf("Enter a number: ");
	scanf("%li", &number);
	return number;
}


NSString* convertIntToString(NSInteger intToConvertToString) {
	NSString* convertedString;
    convertedString = [NSString stringWithFormat:@"%li",intToConvertToString];

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

NSInteger convertStringToInt(NSString *stringToConvertToInt) {
	NSInteger number = [stringToConvertToInt integerValue];
	return number;
}





