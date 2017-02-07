//
//  main.m
//  WordEffects
//
//  Created by Hyung Jip Moon on 2017-02-06.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputOperation[1];
        char inputString1[255], inputString2[255], inputString3[255], inputString4[255], inputString5[255], inputString6[255];

        
        while (1) {

            printf("1. Uppercase\n");
            printf("2. Lowercase\n");
            printf("3. Numberize\n");
            printf("4. Canadianize\n");
            printf("5. Respond\n");
            printf("6. De-Space-It\n");
            printf("Input a number, to indicate which operation to do from the above lists: ");
            fgets(inputOperation, 255, stdin);
            int convertToInteger;
            convertToInteger = atoi(inputOperation);
            
            if(convertToInteger == 1) {

                printf("Enter your string input: ");
                fgets(inputString1, 255, stdin);
                NSString *outputString1 = [NSString stringWithUTF8String:inputString1];
                NSLog(@"\nThe resulting string was: %@", [outputString1 uppercaseString]);
            }
            
            else if(convertToInteger == 2) {
                printf("Enter your string input: ");
                fgets(inputString2, 255, stdin);
                
                NSString *outputString = [NSString stringWithUTF8String:inputString2];
                NSLog(@"\nThe resulting string was: %@", [outputString lowercaseString]);
                
                
            }
            
            else if(convertToInteger == 3) {


                printf("Enter your string input: ");
                fgets(inputString3, sizeof(inputString3), stdin);

                bool valid = TRUE;
                
                for (int i = 0 ; i < strlen(inputString3); i++) {
                    
                    if(!isdigit(inputString3[i])) {
                        valid = FALSE;
                        printf("Invalid\n");
                        break;

                    }
                    else {
                        NSLog(@"\nthe integer %d\n", (int) strtol(inputString3, (char **)NULL, 10));
                        break;
                    }
                }
                
//                printf("Enter your string input: ");
//                fgets(inputString3, sizeof(inputString3), stdin);
//                for (int i = 0; i < strlen(inputString3); ++i)
//                {
//                    if (!isdigit(inputString3[i]))
//                    {
//                        printf("asafasdfa\n");
//                        break;
//                    }
//                }
                
//                unsigned long length;
//                int convertToNumber;
//                scanf ("%s", inputString3);
//                length = strlen (inputString3);
//                for (int i=0;i<length; i++) {
//                    if (!isdigit(inputString3[i]))
//                    {
//                        printf ("Entered input is not a number\n");
//                        exit(1);
//                    }
//                }
//                printf ("Given input is a number\n");
//                
//                //int convertToNumber;
//                printf("Enter your string input: ");
//                fgets(inputString3, 255, stdin);
//                convertToNumber = atoi(inputString3);
//                
//                NSLog(@"\nthe integer %d\n", convertToNumber);
//
//
                
//                NSString *convertInputString3 = [NSString stringWithUTF8String:inputString3];
//
//                //fgets(inputString3, sizeof(inputString3), stdin);
//                NSString *removeLastSpace3 = [[convertInputString3 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
//
//                if (isNumeric(removeLastSpace3) == true) {
//                    NSLog(@"\nthe integer %d", removeLastSpace3);
//
//                }
//
//                
//                bool valid = TRUE;
//                for (int i = 0; i < strlen(inputString3); ++i)
//                {
//                    if (!isdigit(inputString3[i]))
//                    {
//                        valid = FALSE;
//                        break;
//                    }
//                    else
//                        NSLog(@"\nthe integer %d", convertToNumber);
//
//                }
                
            }
            else if(convertToInteger == 4) {
                printf("Enter your string input: ");
                fgets(inputString4, 255, stdin);
                NSString *canadianString = @",eh?";
                NSString *convertInputString4 = [NSString stringWithUTF8String:inputString4];
                NSString *removeLastSpace4 = [[convertInputString4 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
                NSString *outputString4 = [NSString stringWithFormat:@"%@%@", removeLastSpace4, canadianString];

                NSLog(@"\nThe resulting string was: %@", outputString4);
            }
            else if(convertToInteger == 5) {
                printf("Enter your string input: ");
                fgets(inputString5, 255, stdin);
                NSString *convertInputString5 = [NSString stringWithUTF8String:inputString5];
                NSString *removeLastSpace5 = [[convertInputString5 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];

                if([removeLastSpace5 hasSuffix:@"?"]) {
                    printf("I don't know\n");
                }
                else if ([removeLastSpace5 hasSuffix:@"!"]) {
                    printf("Whoa, calm down!\n");

                }
                else {
                    NSLog(@"\nYou've typed: %@", removeLastSpace5);
                }
            }
            
            else if(convertToInteger == 6) {
                printf("Enter your string input: ");
                fgets(inputString6, 255, stdin);
                NSString *convertInputString6 = [NSString stringWithUTF8String:inputString6];
                NSString *removeLastSpace6 = [[convertInputString6 componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
                NSString* removeSpace6 = [removeLastSpace6 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

                NSLog(@"\nThe resulting string is: %@", removeSpace6);
                
            }
            
            else {
                NSLog(@"You've entered invalid input. Exit the program.");
                break;
            }

        }
        
    }
    return 0;
}
