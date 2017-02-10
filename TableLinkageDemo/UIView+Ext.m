//
//  UIView+Ext.m
//  TableLinkageDemo
//
//  Created by ZJQ on 2017/2/9.
//  Copyright © 2017年 ZJQ. All rights reserved.
//

#import "UIView+Ext.h"

@implementation UIView (Ext)

- (void)setSize:(CGSize)size{
    
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
}
- (CGSize)size{
    
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin{
    
    CGRect newFrame = self.frame;
    newFrame.origin = origin;
    self.frame = newFrame;
}
- (CGPoint)origin{
    
    return self.frame.origin;
}

- (void)setLeft:(CGFloat)left {
    
    CGRect newFrame = self.frame;
    newFrame.origin.x = left;
    self.frame = newFrame;
}
- (CGFloat)left {
    
    return self.origin.x;
}

- (void)setRight:(CGFloat)right {
    
    CGRect newFrame = self.frame;
    newFrame.origin.x = right - self.width;
    self.frame = newFrame;
}
- (CGFloat)right {
    
    return self.frame.origin.x + self.width;
}

- (void)setTop:(CGFloat)top {
    
    CGRect newFrame = self.frame;
    newFrame.origin.y = top;
    self.frame = newFrame;
}
- (CGFloat)top {
    
    return self.frame.origin.y;
}

- (void)setBottom:(CGFloat)bottom {
    
    CGRect newFrame = self.frame;
    newFrame.origin.y = bottom - self.height;
    self.frame = newFrame;
}
- (CGFloat)bottom {
    
    return self.frame.origin.y + self.height;
}

- (void)setWidth:(CGFloat)width {
    
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}
- (CGFloat)width {
    
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}
- (CGFloat)height {
    
    return self.frame.size.height;
}


@end
