//
//  ViewController.h
//  DragDemo
//
//  Created by 王明哲 on 2017/6/8.
//  Copyright © 2017年 maibou. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DragSourceView.h"
#import "DragDestinationView.h"

@interface ViewController : NSViewController<NSDraggingSource>

@property (weak) IBOutlet DragSourceView *sourceView;

@property (weak) IBOutlet DragDestinationView *destinationView;

@end

