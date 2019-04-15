//
//  UIColor+extension.h
//  HLJClient
//
//  Created by apple on 15/3/17.
//  Copyright (c) 2015年 AFu. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Defines the gradient style and direction of the gradient color.
 *
 *  @since 1.0
 */
typedef NS_ENUM (NSUInteger, HLJGradientStyle) {
    /**
     *  Returns a gradual blend between colors originating at the leftmost point of an object's frame, and ending at the rightmost point of the object's frame.
     *
     *  @since 1.0
     */
    HLJGradientStyleLeftToRight,
    /**
     *  Returns a gradual blend between colors originating at the center of an object's frame, and ending at all edges of the object's frame. NOTE: Supports a Maximum of 2 Colors.
     *
     *  @since 1.0
     */
    HLJGradientStyleRadial,
    /**
     *  Returns a gradual blend between colors originating at the topmost point of an object's frame, and ending at the bottommost point of the object's frame.
     *
     *  @since 1.0
     */
    HLJGradientStyleTopToBottom
};

//#define rgba(r,g,b,a)  [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a] //颜色

static inline UIColor * rgba(float red, float green, float blue, float alpha) {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

//static inline UIColor * rgba(double red, ...) {
//    va_list arg_list;
//
//    va_start(arg_list, red);
//
//    int green = va_arg(arg_list, double);
//    int blue  = va_arg(arg_list, double);
//    int alpha = va_arg(arg_list, double);
//
//    va_end(arg_list);
//
//    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
//}

@interface UIColor (Extension)

#pragma mark - Instance Variables

/**
 *  Stores an object's UIColor image if the UIColor was created using colorWithPatternImage.
 *
 *  @since 1.0
 */

@property (nonatomic, strong) UIImage *gradientImage;

+ (UIColor *)colorWithGradientStyle:(HLJGradientStyle)gradientStyle withFrame:(CGRect)frame andColors:(NSArray *)colors;

/**
 * Quickly create a UIColor object.
 * @return a instance of UIColor
 * @note eg：#f34270
 */
+ (UIColor *)colorWithHexString:(NSString *)color;
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 * Gets a random color, UIColor object.
 * @return a instance of UIColor, RGB values are random, from 0 to 255.
 */
+ (UIColor *)randomColor;

@end
