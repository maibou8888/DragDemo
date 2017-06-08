//
//  ViewController.m
//  DragDemo
//
//  Created by 王明哲 on 2017/6/8.
//  Copyright © 2017年 maibou. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)awakeFromNib {
    [super awakeFromNib];
    
    self.destinationView.wantsLayer = YES;
    self.destinationView.layer.borderColor = [NSColor blueColor].CGColor;
    self.destinationView.layer.borderWidth = 1;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    self.sourceView.dragSourceDelegate = self;
}

#pragma mark-- NSDraggingSource Protocol

- (NSDragOperation)draggingSession:(NSDraggingSession *)session sourceOperationMaskForDraggingContext:(NSDraggingContext)context {
    return NSDragOperationGeneric;
}


- (void)draggingSession:(NSDraggingSession *)session willBeginAtPoint:(NSPoint)screenPoint {
    
    NSLog(@"draggingSession Begin screenPoint %@",NSStringFromPoint(screenPoint));
    
}
- (void)draggingSession:(NSDraggingSession *)session movedToPoint:(NSPoint)screenPoint {
    
    NSLog(@"draggingSession Move screenPoint %@",NSStringFromPoint(screenPoint));
    
}
- (void)draggingSession:(NSDraggingSession *)session endedAtPoint:(NSPoint)screenPoint operation:(NSDragOperation)operation {
    
    NSLog(@"draggingSession End screenPoint %@",NSStringFromPoint(screenPoint));
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
