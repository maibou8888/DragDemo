//
//  DragSourceView.h
//  DragDropDemo
//
//  Created by zhaojw on 15/10/21.
//  Copyright © 2015年 zhaojw. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DragSourceView : NSImageView 
@property(weak) id<NSDraggingSource> dragSourceDelegate;
@end
