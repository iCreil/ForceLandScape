//
//  ForceLandSpaceViewController.m
//  ForceLandScape
//
//  Created by Mirko Catalano on 30/03/13.
//  Copyright (c) 2013 Mirko Catalano. All rights reserved.
//

#import "ForceLandSpaceViewController.h"

@interface ForceLandSpaceViewController ()

@end

@implementation ForceLandSpaceViewController

-(IBAction)landscape:(id)sender{
    
    NSString *titleBt = [(UIButton*) sender titleForState:UIControlStateNormal];
    
    if ([titleBt isEqual:@"Landscape"]) {
        
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"LandScapeView" owner:self options:nil];
    
        
        CGAffineTransform rotate = CGAffineTransformMakeRotation(1.57079633);
        UIView *viewTemp = array[0];
        [viewTemp setTransform:rotate];
        
        self.view = viewTemp;
        
    }
    else
    {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"ForceLandSpaceViewController" owner:self options:nil];
        self.view = array[0];
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
