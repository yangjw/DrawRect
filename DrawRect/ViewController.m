//
//  ViewController.m
//  DrawRect
//
//  Created by yangjw  on 13-5-22.
//  Copyright (c) 2013年 yangjw . All rights reserved.
//

#import "ViewController.h"
#import "DrawText.h"

@interface ViewController ()
{
	DrawText *drawText;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view, typically from a nib.
	drawText = [[DrawText alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	[self.view addSubview:drawText];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
