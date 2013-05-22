//
//  DrawText.m
//  DrawRect
//
//  Created by yangjw  on 13-5-22.
//  Copyright (c) 2013年 yangjw . All rights reserved.
//

#import "DrawText.h"

@implementation DrawText

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
//Demo1: 绘制文本、图片 等。
//	UIColor *colormange = [UIColor redColor];
//	设置颜色
//	[colormange set];
//	NSString *name = @"ios DrawRect";
//绘制内容
//	[name drawAtPoint:CGPointMake(40, 180) withFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:40]];
	
//	[name drawInRect:CGRectMake(0, 0, 320, 200) withFont:[UIFont fontWithName:@"HelveticaNeue" size:40]];
	
//Demo2: 绘制线图
////	得到上下文
//	CGContextRef context = UIGraphicsGetCurrentContext();
////	线条宽度
//	CGContextSetLineWidth(context, 20.0f);
////	起点
//	CGContextMoveToPoint(context, 0, 0);
////	路线
//	CGContextAddLineToPoint(context, 100, 100);
////路线
//	CGContextAddLineToPoint(context, 100, 200);
//	
//	CGContextAddLineToPoint(context, 200, 100);
//	
////	线的交界处样式
//	CGContextSetLineJoin(context , kCGLineJoinRound);
////	绘制上下文
//	CGContextStrokePath(context);
	
//Demo3: 绘制线条
// 创建一个区域块
//	CGMutablePathRef mutablRef = CGPathCreateMutable();
//	
//	CGRect screenBounds = [UIScreen mainScreen].bounds;
//	
//	CGPathMoveToPoint(mutablRef, NULL, screenBounds.origin.x, screenBounds.origin.y);
//	
//	CGPathAddLineToPoint(mutablRef, NULL, screenBounds.size.width, screenBounds.size.height);
//	
//	/* Start another line from top-right */
//	
//	CGPathMoveToPoint(mutablRef,  NULL, screenBounds.size.width, screenBounds.origin.y);
//	
//	/* Draw a line from top-right to bottom-left */
//	CGPathAddLineToPoint(mutablRef,NULL, screenBounds.origin.x, screenBounds.size.height);
//	
//	/* Get the context that the path has to be drawn on */
//	CGContextRef currentContext = UIGraphicsGetCurrentContext();
//	
//	/* Add the path to the context so we can draw it later */
//	CGContextAddPath(currentContext, mutablRef);
//	
//	/* Set the blue color as the stroke color */
//	[[UIColor blueColor] setStroke];
//	
//	/* Draw the path with stroke color */
//	CGContextDrawPath(currentContext, kCGPathStroke);
//	
//	/* Finally release the path object */
//	CGPathRelease(mutablRef);

	
//Demo4: 绘制区域
//	/* Create the path first. Just the path handle. */
	CGMutablePathRef path = CGPathCreateMutable();
	/* Here are our rectangle boundaries */
	CGRect rectangle = CGRectMake(10.0f, 10.0f, 200.0f, 300.0f);
	/* Add the rectangle to the path */
	//	添加移动动画 方法1：
//	CGAffineTransform transform = CGAffineTransformMakeTranslation(100.0f,0.0f);
//	缩放动画
//	CGAffineTransform transform =CGAffineTransformMakeScale(0.5f, 0.5f);
//	旋转动画
	CGAffineTransform transform = CGAffineTransformMakeRotation((45.0f * M_PI) / 180.0f);
	
	CGPathAddRect(path, &transform, rectangle);
//	CGPathAddRect(path, NULL, rectangle);
	/* Get the handle to the current context */
	CGContextRef currentContext = UIGraphicsGetCurrentContext();
//	对上下文添加移动动画 方法2：
//	CGContextTranslateCTM(currentContext, 100.0f, 0);
//	缩放动画
//	CGContextScaleCTM(currentContext, 0.5f,0.5f);
//  旋转动画
//	CGContextRotateCTM(currentContext, 10);
//	设置阴影
	CGContextSetShadowWithColor(currentContext, CGSizeMake(10.0f, 10.0f),
								20.0f,
								[[UIColor grayColor] CGColor]);
	/* Add the path to the context */
//	添加区域到上下文
	CGContextAddPath(currentContext,path);
	/* Set the fill color to cornflower blue */
//	填充区域颜色
	[[UIColor colorWithRed:0.20f green:0.60f blue:0.80f alpha:1.0f] setFill];
	/* Set the stroke color to brown */
//	线条颜色
	[[UIColor brownColor] setStroke];
	/* Set the line width (for the stroke) to 5 */
//	框线条粗细
	CGContextSetLineWidth(currentContext, 5.0f);
	/* Stroke and fill the path on the context */
//	填充区域
	CGContextDrawPath(currentContext,kCGPathFillStroke);
	/* Dispose of the path */
	CGPathRelease(path);

	
//	Demo5 颜色
//	CGContextRef currentContext = UIGraphicsGetCurrentContext();
////	保持当前状态
//	CGContextSaveGState(currentContext);
//	
//	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//	UIColor *startColor = [UIColor orangeColor]; CGFloat *startColorComponents =
//	(CGFloat *)CGColorGetComponents([startColor CGColor]);
//	UIColor *endColor = [UIColor blueColor];
//	CGFloat *endColorComponents =(CGFloat *)CGColorGetComponents([endColor CGColor]);
//	CGFloat colorComponents[8] = {
//		/* Four components of the orange color (RGBA) */ startColorComponents[0],
//		startColorComponents[1],
//		startColorComponents[2],
//		startColorComponents[3], /* First color = orange */
//		/* Four components of the blue color (RGBA) */ endColorComponents[0],
//		endColorComponents[1],
//		endColorComponents[2],
//		endColorComponents[3], /* Second color = blue */ };
//	CGFloat colorIndices[2] = {
//		0.0f, /* Color 0 in the colorComponents array */ 1.0f, /* Color 1 in the colorComponents array */
//	};
//	CGGradientRef gradient = CGGradientCreateWithColorComponents (colorSpace,
//																  (const CGFloat *)&colorComponents, (const CGFloat *)&colorIndices, 2);
//	CGColorSpaceRelease(colorSpace); CGPoint startPoint, endPoint; startPoint = CGPointMake(120,
//																							260);
//	endPoint = CGPointMake(200.0f, 220);
//	CGContextDrawLinearGradient (currentContext,
//								 gradient, startPoint, endPoint,kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
//	CGGradientRelease(gradient);
//	CGContextRestoreGState(currentContext);
}


@end
