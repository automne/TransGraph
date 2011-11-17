//
//  Poly.m
//  TransGraph
//
//  Created by Automne on 11/11/17.
//  Copyright 2011年 Automne. All rights reserved.
//

#import "Poly.h"

@implementation Poly

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        sideWidth=1;
        sideNumber=3;
    }
    return self;
}


-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, sideWidth);
    
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    
    CGPoint center={65, 65};
    
    //CGContextMoveToPoint(context, 160, 240);
    CGContextMoveToPoint(context, center.x, center.y + 60);
	for(int i = 1; i <=sideNumber; ++i)
	{
		CGFloat x = 60.0 * sinf(i * 2.0 * M_PI / sideNumber);
		CGFloat y = 60.0 * cosf(i * 2.0 * M_PI / sideNumber);
		CGContextAddLineToPoint(context, center.x + x, center.y + y);
	}
    CGContextClosePath(context);
    CGContextStrokePath(context);
}

@end
