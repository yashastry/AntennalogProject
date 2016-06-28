// ViewController.m
//
// Copyright (c) 2013 Mattt Thompson
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "ViewController.h"
#import "New.h"
#import "Antenna.h"
NSString * const AntennaExampleNotification = @"AntennaExampleNotification";

@implementation ViewController



-(int) simplecheck
{


    int a = 10;
    int b = 19;
    int c = a * b;

     NSLog(@ "addition is : %d", c);
    return c;
}


#pragma mark - IBAction

//simplecheck *simplecheck1 = [[simplecheck alloc]init]
//[simplecheck1 ]

- (IBAction)triggerNotification:(id)__unused sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:AntennaExampleNotification object:nil];

    New * New1 =[[New alloc]init];
    [New1 Something];
    [self simplecheck];

    [[Antenna sharedLogger] log:@"hello world!"];
    [[New Something] :[NSURL URLWithString:@"http://172.16.1.191:12345/log1"] method:@"POST"];

    //[[Antenna sharedLogger] log: NSNumber numberWithInt:c];
   // [Antenna sharedLogger] log:()[NSNumber numberWithInt:New1] ;


    //[Antenna sharedLogger];[NSNumber numberWithInt:[self simplecheck]];
}

@end
