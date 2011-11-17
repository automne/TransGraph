//
//  TransGraphViewController.h
//  TransGraph
//
//  Created by Automne on 11/11/17.
//  Copyright 2011年 Automne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Poly.h"


@interface TransGraphViewController : UIViewController
{
    Poly *polyView;
    
    int sideNum;
    float sideWidth;
    
    IBOutlet UISlider *slider;
    IBOutlet UITextField *side;
    
    UIAlertView *alert;
}

@property (nonatomic, retain) IBOutlet UISlider *slider;
@property (nonatomic, retain) IBOutlet UITextField *side;

-(void) draw;
-(IBAction)addSide;
-(IBAction)subSide;
-(IBAction)setWidth;
-(IBAction)sideSet;
@end
