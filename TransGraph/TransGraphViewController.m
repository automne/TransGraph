//
//  TransGraphViewController.m
//  TransGraph
//
//  Created by Automne on 11/11/17.
//  Copyright 2011年 Automne. All rights reserved.
//

#import "TransGraphViewController.h"

@implementation TransGraphViewController

@synthesize slider;
@synthesize side;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

//初始化參數
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    slider.maximumValue=5.0;
    slider.minimumValue=1;
    
    sideNum=3;
    sideWidth=1;
    [self draw];
    
    [side setText:[NSString stringWithFormat:@"%i",sideNum]];
}

//畫圖
-(void) draw
{
    CGRect rect=CGRectMake(100, 160, 160, 160);
    
    polyView=[[Poly alloc] initWithFrame:rect];
    polyView.backgroundColor=[UIColor clearColor];
    
    polyView->sideNumber=sideNum;
    polyView->sideWidth=sideWidth;
    
    [self.view addSubview:polyView];
    
    [polyView release];
    
}

//加邊
-(IBAction)addSide
{
    sideNum++;
    [polyView removeFromSuperview];
    [self draw];
    
    [side setText:[NSString stringWithFormat:@"%i",sideNum]];
}

//減邊
-(IBAction)subSide
{
    //減掉之後必須大於等於三，否則拒絕回應。
    
    if(sideNum>=4){
        sideNum--;
        [polyView removeFromSuperview];
        [self draw];
        
        [side setText:[NSString stringWithFormat:@"%i",sideNum]];
    }
    else;
    
}

//設定線的粗細
-(IBAction)setWidth
{
    sideWidth=slider.value;
    [polyView removeFromSuperview];
    
    [self draw];
}

//設定邊數
-(IBAction)sideSet
{
    //邊數必須大於等於三
    //否則，跳出警告。
    
    if([[side text] intValue]>=3){
        sideNum=[[side text] intValue];
        [polyView removeFromSuperview];
        [self draw];
    }
    else{
        alert = [[UIAlertView alloc]    initWithTitle:@"Invalid Argument!" 
                                        message:@"Please give a value which is equal or greater than 3." 
                                        delegate:nil 
                                        cancelButtonTitle:@"OK" 
                                        otherButtonTitles:nil];
    
        [side setText:[NSString stringWithFormat:@"%i",sideNum]];
        [alert show];
        [alert release];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
